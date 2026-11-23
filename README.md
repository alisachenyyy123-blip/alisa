# Alisa｜AI 漫剧制作工作区

本仓库用于把**剧本 → 角色设定 → 分镜 → AI 关键帧 → 图生视频 → 配音 → 剪辑成片**连接成可复用的流程。

## 文件导航

- [30 秒原创悬疑漫剧开场方案](opening/EP001_开场制作方案.md)
- [逐镜生成数据（JSON）](opening/EP001_shots.json)
- [GitHub 工具安装入口](scripts/setup_drama.sh)
- [流程与工具选型](docs/制作流程与工具.md)

## 在 Codex 终端安装编剧、分镜和剪辑技能

```bash
git clone https://github.com/alisachenyyy123-blip/alisa.git
cd alisa
bash scripts/setup_drama.sh
```

该脚本安装来自 `zenstory-ai/drama-skills` 的 Agent Skills。ComfyUI 是可选的本地图片/视频生成引擎，需独立配置模型及 GPU。FFmpeg 用于剪辑合成。

**状态说明：** GitHub 文件是安装与制作配置，并不等于已经在你的 Mac 或 Codex Cloud 上执行安装；视频模型生成也需要 GPU 或云端服务，上传 API Key 到 GitHub 是不安全的。漫剧示例是原创占位故事，可替换成正式 IP。

## 参考开源项目
- [Drama Skills](https://github.com/zenstory-ai/drama-skills) — Codex 漫剧制作技能（MIT）
- [ComfyUI](https://github.com/Comfy-Org/ComfyUI) — 本地生成节点引擎（GPL-3.0）
- [AutoVid OSS](https://github.com/hanmengkai/autovid-oss) — 中文剧情生成集成（MIT）
- [Hail-Drama](https://github.com/hailcanto/hail-drama) — 可选 Web 制作工作台（许可证需使用前复核）
