# Codex 漫剧制作工作准则

本仓库用于 AI 漫剧的创意制作和工具链管理。响应用户提出的开场/整集制作任务时：

1. 先阅读 `docs/制作流程与工具.md`、`opening/EP001_开场制作方案.md` 和 `opening/EP001_shots.json`。
2. 如果 `short-drama` Skills 已安装，优先调用 `short-drama`、`short-drama-write`、`short-drama-assets`、`short-drama-storyboard`、`short-drama-video-prompts`、`short-drama-review` 对应能力；未安装时检查 `scripts/setup_drama.sh` 并给出实测结果。
3. 使用用户给出的原著/故事时替换样例；没有故事时只把《第二个我》当工作流测试故事，不擅自冒充正式剧本。
4. 角色外观、衣装、场景风格必须跨镜一致；每镜给出起点/终点与一个主动作，先产首帧后图生视频。
5. 不要在视频生成模型里直接生成汉字，字幕、倒计时、片名应后期处理。
6. 任何外部模型、付费调用或批量渲染前，先预览单镜并明确列出实际输入、输出、预期收费或资源需求。
7. API 密钥不写入仓库。避免执行未经审核的远程 shell 脚本。
8. 完成后清楚报告：已安装与未安装、已生成与未生成的媒体、测试结果、可播放路径及待处理事项。绝不把分镜计划说成最终视频。

测试：`python3 -m json.tool opening/EP001_shots.json > /dev/null`。
