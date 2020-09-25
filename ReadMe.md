# 说明

Rojo 测试项目

需求说明：

- 在 workspace 里放置一个平台 model，平台上有陷阱和重生点
- 平台上有很多陷阱，玩家碰到陷阱的话，就会死亡
- 玩家的 Respawn Time 被设定为1秒
- 死亡时，屏幕上不会出现血液
- 玩家死亡时，不会解体（这个需求不用了，因为效果不好）

采用 Fully Manage 形式。

因为 Rojo 0.5 有 reference bug，无法识别一个 rbxmx 文件里 Model 的 PrimaryPart，所以需要在代码里设置 PriamryPart。
