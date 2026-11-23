#!/usr/bin/env bash
# AI 漫剧制作依赖：在 Codex 终端或本机运行，不在 GitHub 保存任何 API Key。
set -euo pipefail

echo "== Alisa 漫剧技能安装器 =="

command -v git >/dev/null || { echo "缺少 git，请先安装 Git"; exit 1; }
command -v node >/dev/null || { echo "缺少 Node.js，请先安装 Node.js LTS"; exit 1; }
command -v npx >/dev/null || { echo "缺少 npx"; exit 1; }
command -v python3 >/dev/null || { echo "缺少 python3，建议 Python 3.9+"; exit 1; }

echo "[1/3] 安装/更新 zenstory-ai/drama-skills 到当前项目"
npx --yes skills add zenstory-ai/drama-skills -y

echo "[2/3] 检查视频剪辑工具"
if command -v ffmpeg >/dev/null && command -v ffprobe >/dev/null; then
  ffmpeg -version | head -n 1
else
  echo "FFmpeg 尚未安装，macOS 可用 brew install ffmpeg；Linux 请用系统包管理器"
fi

echo "[3/3] 检查视频生成引擎"
if [ "${1:-}" = "--with-comfyui" ]; then
  mkdir -p external
  if [ ! -d external/ComfyUI/.git ]; then
    git clone --depth 1 https://github.com/Comfy-Org/ComfyUI.git external/ComfyUI
  fi
  echo "已下载 ComfyUI 源码；模型权重、Python 依赖、GPU 与节点工作流仍需单独配置"
else
  echo "未安装可选 ComfyUI。若需要下载源码，运行 bash scripts/setup_drama.sh --with-comfyui"
fi

echo "✅ GitHub 技能安装流程结束。然后在 Codex 中使用 \$short-drama 进行项目初始化。"
