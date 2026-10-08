# 孤岛工坊：微工小记 · 1.21.1 NeoForge

> Minecraft 1.21.1 / NeoForge 21.1.256 / 84 个模组 / 88 个任务

---

## 1. 导入方式

### 环境要求

| 项目 | 要求 |
|---|---|
| 游戏版本 | Minecraft **1.21.1** |
| 加载器 | **NeoForge 21.1.256**（或同为 21.1.x 的其他版本） |
| Java | **Java 21** |
| 内存 | 建议分配 **6 GB 以上**，8 GB 更稳 |

### PCL2

1. 下载 [`LoneIsleWorkshop-MicroEngineeringNotes-1.21.1.mrpack`](https://github.com/beihongliangchu/LoneIsleWorkshop-MicroEngineeringNotes/releases/download/v1.18.0/LoneIsleWorkshop-MicroEngineeringNotes-1.21.1.mrpack)
2. 打开 PCL2 → **版本设置** → 右上角 **安装整合包**
3. 选中刚才那个 `.mrpack` 文件，确认
4. 装完直接启动即可

### HMCL

1. 下载 `.mrpack`
2. HMCL → **版本列表** → 左下角 **安装新游戏** → **从整合包安装**
3. 选中文件，起个名字，确认

### Prism Launcher / Modrinth App

1. **Add Instance**（新建实例）
2. 选 **Import from file**（从文件导入）
3. 选中 `.mrpack`

### 手动安装（启动器都不认的时候）

1. 先自己装好 **NeoForge 1.21.1**
2. 把压缩包里 `overrides` 文件夹里的内容**整个**复制进 `.minecraft` 目录
   （`config`、`resourcepacks`、`options.txt` 都要，和 `mods` 同级）
3. 双击 `一键下载MOD.bat`，等它把 84 个模组下载完
4. 检查 `mods` 文件夹里是不是 **84 个 jar**

### 首次启动

**资源包已经配好了，不用手动开。**

汉化包会在第一次启动时自动下载。如果网络慢，可能要等几秒才进游戏——**别以为卡住了**。这次没下完也没关系，下次启动会继续。

---

## 2. 常见问题

### 机器放下去不动

九成是**没接电**。检查线缆和电源接上没，打开机器界面看左上角能量条涨不涨。

### 多方块结构用不了

肯定是漏了方块。**这个包没有装一键搭建模组**，得自己找问题：

- 能右键打开界面才算搭对，打不开就是没围严
- 摆法去 **JEI** 里看：点那个方块按 **U**，进「建造」分类，有结构图和材料清单

### 找不到配方

- 按 **R** 看这个物品**怎么做**
- 按 **U** 看它能**做什么**
- 手持 AE2 的物品按 **G**，打开内置指南书

### 任务书里的图片是空白

资源包没启用。**选项 → 资源包** → 把「孤岛工坊图示」移到右侧。

（随包分发的 `options.txt` 已经开好了，出现这种情况一般是导入时没覆盖过去。）

### 换存档之后进度没了

任务书**内容**在 `config/ftbquests/`，不在存档里，换存档不会丢。

但**进度**存在 `saves/<存档名>/ftbquests/`，跟着存档走。新建世界 = 进度归零，这是正常的。

### 崩了怎么办

把 `logs` 文件夹里的 **`latest.log`** 发出来。

只说「我游戏怎么崩了」是没法定位问题的。

---

## 3. 免责声明与授权

### 免责声明

本整合包由个人制作，**与 Mojang、Microsoft，以及包内任何模组的作者都没有关系**。

包内所有模组的版权归**各自作者**所有，本包只是把它们组合在一起。转载或二次分发时请保留本说明，并注明模组来源。

**禁止付费分发**，也禁止以「自愿赞助」等任何类似方式谋利。

本包**不提供任何担保**。科技模组涉及大量机器与多方块结构，存在崩溃、卡顿、存档损坏的可能。**强烈建议定期备份存档**——把 `saves` 文件夹整个复制一份就是备份。

虚空世界掉下去会直接死亡、物品可能拿不回来，这是玩法设计，不是 bug。

### 关于汉化包

首次启动会自动下载 CFPA 的简体中文汉化资源包，其许可为 **CC BY-NC-SA 4.0**（署名 / 非商业 / 相同方式共享）。本包不重新分发该资源包，只是自动下载，因此遵守其**非商业**条款是使用者的义务——这也是上面禁止付费分发的原因之一。

### 模组来源

全部模组的名称、版本、下载地址与校验值见仓库内的 `MOD清单.txt` 与 `modrinth.index.json`。

---

## 4. 文件说明

| 文件 | 给谁用 | 说明 |
|---|---|---|
| [`LoneIsleWorkshop-MicroEngineeringNotes-1.21.1.mrpack`](https://github.com/beihongliangchu/LoneIsleWorkshop-MicroEngineeringNotes/releases/download/v1.18.0/LoneIsleWorkshop-MicroEngineeringNotes-1.21.1.mrpack) | **绝大多数人** | Modrinth 整合包格式，PCL2 / HMCL / Prism / Modrinth App 都能直接导入 |
| `modrinth.index.json` | 启动器 | `.mrpack` 的核心清单，一般不用手动打开 |
| `一键下载MOD.bat` | 手动安装的人 | 双击后按清单把 84 个模组下到 `mods` 文件夹 |
| `MOD清单.txt` | 想核对的人 | 全部模组的名称、版本、来源一览 |
| `使用说明.txt` | 想细看的人 | 完整说明，含配图、任务线、更新记录等 |
| `packwiz/` | 高级用户 | packwiz 格式的元数据，配合 packwiz 工具做增量更新 |

`.mrpack` 里已经带了：

- `overrides/config/ftbquests/` —— 任务书
- `overrides/config/skyblockbuilder/` —— 空岛配置
- `overrides/config/defaultworldtype/` —— 虚空世界类型
- `overrides/resourcepacks/孤岛工坊图示/` —— 任务书里的 6 张配图
- `overrides/options.txt` —— 预配置（中文、已启用配图资源包、Iris 按键冲突已修）

**只要导入 `.mrpack` 就行，其余文件都是备查的。**
