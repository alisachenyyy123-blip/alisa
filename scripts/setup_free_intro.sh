#!/usr/bin/env bash
# 免费 AI 漫剧开头：只安装轻量本地剪辑包，不下载大模型或调用付费 API。
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo "== Alisa 免费漫剧轻量工具链 =="
command -v python3 >/dev/null || { echo "需要 python3（3.9+）"; exit 1; }
python3 -c 'import sys; assert sys.version_info >= (3,9), "Python >= 3.9 required"'

if command -v ffmpeg >/dev/null && command -v ffprobe >/dev/null; then
  echo "[OK] FFmpeg 已安装：$(ffmpeg -version | head -n 1)"
else
  echo "[!] FFmpeg 未安装。"
  if command -v brew >/dev/null; then
    echo "macOS 可运行：brew install ffmpeg"
  else
    echo "Linux 可根据发行版安装：sudo apt install ffmpeg  # Debian/Ubuntu"
  fi
  echo "本脚本不自动安装系统级软件。"
fi

if [ ! -d ".venv" ]; then
  python3 -m venv .venv
fi
. .venv/bin/activate
python -m pip install --upgrade pip
python -m pip install "moviepy>=2.0,<3" "pillow>=9" "numpy>=1.25"
python - <<'PY'
import moviepy, PIL, numpy
print("[OK] MoviePy", getattr(moviepy, "__version__", "installed"))
print("[OK] Pillow", PIL.__version__)
print("[OK] NumPy", numpy.__version__)
PY

cat <<'TXT'

轻量剪辑工具已安装（仅在当前执行的设备/工作区）。
后续可按机器算力选择本地语音/动态引擎：
  中文配音：https://github.com/myshell-ai/MeloTTS
  图/视频工作流：https://github.com/Comfy-Org/ComfyUI
  人像驱动：https://github.com/KlingAIResearch/LivePortrait
  高显存图生视频：https://github.com/Wan-Video/Wan2.2

说明：本脚本不会下载大型 AI 模型；不会调用付费云端 API；
      未检测到 FFmpeg 时必须先安装才能输出视频。
TXT
