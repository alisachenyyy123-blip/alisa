# Drama Skills · 手机壳争吵反转开场试制（2026-11-24）

## 已完成试制

按 [zenstory-ai/drama-skills](https://github.com/zenstory-ai/drama-skills) 官方规范，依据用户上传的原手机壳视频制作 **五份核心创作文档＋剪辑单**，并把人物参考图与真实产品原视频封装在**对话内私有 ZIP 工程包**。用户素材不上传公开 GitHub。

- `short-drama-write` → `剧集/EP001/剧本.md`
- `short-drama-assets` → `剧集/EP001/视觉设定.md`
- `short-drama-image-prompts` → `剧集/EP001/图片提示词.md`
- `short-drama-storyboard` → `剧集/EP001/分镜.md`
- `short-drama-video-prompts` → `剧集/EP001/视频提示词.md`
- `short-drama-edit` → `剧集/EP001/剪辑单.md`

前三镜计划生成 **2.2+2.0+2.2 = 6.4 秒**真正的连续人物动画；第四段保留原手机壳实拍 12.073991 秒，合计约 **18.47 秒**。

## 漫剧动态验收要求

1. 第一镜：女主真正转头、皱眉、开口并抬手，不接受静态图推拉。
2. 第二镜：闺蜜真正摇头、摊手、说话，嘴型与中文情绪配音同步。
3. 第三镜：双人冲突升级后，闺蜜把手伸向镜头；**漫画内不要生成产品背面**。
4. 6.4 秒切入实拍第一帧，原手机壳不重绘、不改颜色材质、立体装饰、摄像头比例。
5. 出片必须检查人物跨镜脸型/衣服一致性、手部异常、声音跨切点及产品保真。

## 实际结果和阻碍

- **已完成**：官方技能说明阅读、正式五文档试制、原片引用、时长和包完整性检查。
- **未完成**：原始 Drama Skills Python 校验脚本执行、外部模型生成三镜视频、正式口型同步与最终新 MP4。
- 原因：该环境的 GitHub 直接克隆不可解析域名；目前没有本地 CUDA GPU；此前的 fal 账户生成调用返回余额不足。Drama Skills 是制作编排技能，不是无需模型即可生成动画的渲染模型。
- 不要把已有的单图推拉剪辑版或九帧 GIF 当成 Drama Skills 正式产物。

## 继续执行

1. 在 Codex Cloud 或可访问 GitHub 的设备运行 `bash scripts/setup_drama.sh` 安装 Skills，验证实际执行结果。
2. 把对话中《Drama_Skills_手机壳漫剧试制工程.zip》解压在工作区外/项目目录中（含私有原视频，不上传公共仓库）。
3. 按技能 `short-drama` 读取五文档，先执行官方格式校验与首镜图生视频；审核真实连续动作之后再产剩余两镜。
4. 若选择云端付费模型，遵守 `short-drama-produce` 的**生成任务预览和独立确认流程**，不得把本方案直接当作收费调用授权。
5. 再用 `short-drama-edit` 合成、`short-drama-review` 验收。
