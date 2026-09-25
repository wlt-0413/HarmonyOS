# Xm3 智能养殖场

基于 HarmonyOS（鸿蒙）分布式能力开发的智能养殖场管理应用，面向养殖户提供养殖环境监测、精准调控与产品展示的一体化智能管理体验。应用综合物联网、人工智能与大数据等智能化技术，使养殖系统具备环境感知、规律学习、自主决策与精准调控的能力。

## 功能特性

- **养殖环境监测**：实时展示鸡舍 / 鸭舍的温度、湿度、光照、食槽饲料、水槽储水等关键指标
- **环境阈值设置**：支持配置鸡舍环境参数阈值，超出范围时触发预警提示
- **设备精准调控**：提供鸡舍 / 鸭舍操作台，用于日常养殖设备控制
- **产量统计**：按日展示鸡蛋 / 鸭蛋产量数据
- **预警提示**：水槽储水量过低等异常情况及时提醒，并可一键跳转至操作台处理
- **产品展示**：土鸡蛋、土鸭蛋、鸡鸭肉等养殖产品分类展示与介绍
- **多角色入口**：支持管理员登录进入工作台，也支持游客直接浏览产品内容

## 页面结构

| 页面文件 | 页面名称 | 说明 |
| --- | --- | --- |
| `Index.ets` | 入口页 | 应用入口，Navigation 导航容器，自动跳转至启动页 |
| `Start.ets` | 启动页 | 应用引导页，点击"进入"跳转登录页 |
| `Login.ets` | 登录页 | 账号密码登录（管理员）与游客直接进入 |
| `Layout.ets` | 主框架 | 底部 Tab 导航，承载首页与产品页 |
| `Home.ets` | 首页 | 智能养殖场项目介绍 |
| `Shop.ets` | 产品页 | 土鸡蛋 / 土鸭蛋 / 鸡鸭肉分类展示 |
| `Work.ets` | 工作台 | 鸡舍 / 鸭舍双 Tab 工作页面 |
| `JiShe.ets` | 鸡舍 | 鸡舍养殖监测（2300 只）、环境指标、产量与预警 |
| `YaShe.ets` | 鸭舍 | 鸭舍养殖监测（1000 只）、环境指标、产量与预警 |
| `HenMent.ets` | 鸡舍环境设置 | 鸡舍环境参数阈值设置 |
| `JiControl.ets` | 鸡舍操作台 | 鸡舍设备控制操作台 |
| `YaControl.ets` | 鸭舍操作台 | 鸭舍设备控制操作台 |
| `Project.ets` | 产品介绍 | 散养土鸡蛋等产品详情介绍 |

### 页面跳转关系

```
Index（入口）
  └─▶ Start（启动页）
        └─▶ Login（登录页）
              ├─ 管理员登录 ─▶ Work（工作台：鸡舍 / 鸭舍）
              │                   ├─▶ HenMent（鸡舍环境阈值设置）
              │                   └─▶ JiControl / YaControl（操作台）
              └─ 游客进入 ─▶ Layout（主框架）
                              ├─ Home（首页）
                              └─ Shop（产品页）
                                └─▶ Project（产品介绍）
```

## 技术栈

- **开发语言**：ArkTS（TypeScript 扩展）
- **UI 框架**：ArkUI 声明式开发范式
- **应用模型**：Stage 模型
- **API 版本**：API 13（compatibleSdkVersion 5.0.1(13)）
- **工程模型**：Hvigor 工程（modelVersion 5.0.1）
- **路由方案**：Navigation / NavDestination 组件路由（`router_map.json` 注册）
- **测试框架**：Hypium（`@ohos/hypium`）、Hamock（`@ohos/hamock`）

## 环境要求

| 项 | 要求 |
| --- | --- |
| 开发工具 | DevEco Studio（支持 API 13 及以上版本） |
| HarmonyOS SDK | 5.0.1(13) 及以上 |
| 支持设备 | 手机（phone）、平板（tablet）、2 合 1 设备（2in1） |
| 运行系统 | HarmonyOS |

## 目录结构

```
Xm3/
├── AppScope/                        # 应用全局配置
│   ├── app.json5                    # 应用信息（包名、版本、图标等）
│   └── resources/                   # 应用级资源
├── entry/                           # entry 模块
│   ├── src/main/
│   │   ├── ets/
│   │   │   ├── entryability/        # 入口 Ability
│   │   │   ├── entrybackupability/  # 备份扩展能力
│   │   │   └── pages/               # 页面源码（13 个页面）
│   │   ├── resources/               # 模块资源（图片、字符串、颜色、配置）
│   │   └── module.json5             # 模块配置
│   ├── src/ohosTest/                # 测试代码（ohosTest）
│   ├── src/test/                    # 本地单元测试
│   ├── src/mock/                    # Mock 配置
│   ├── build-profile.json5          # 模块构建配置
│   └── oh-package.json5             # 模块依赖配置
├── hvigor/                          # Hvigor 构建脚本
├── oh_modules/                      # 依赖包
├── build-profile.json5              # 工程构建配置
├── oh-package.json5                 # 工程级依赖配置
├── hvigorfile.ts                    # Hvigor 入口文件
├── code-linter.json5                # 代码检查配置
└── .gitignore
```

## 构建与运行

1. 使用 DevEco Studio 打开项目根目录 `Xm3`；
2. 等待工程同步完成（自动下载依赖与 SDK）；
3. 连接 HarmonyOS 设备或使用模拟器；
4. 选择 `entry` 模块，点击 **Run** 运行调试。

> 说明：应用声明了 `ohos.permission.INTERNET` 网络权限，便于后续对接云端数据。

## 测试

```bash
# 运行本地单元测试（src/test）
hvigorw test

# 运行 ohosTest 设备测试（src/ohosTest）
hvigorw testOhosTest
```

测试用例覆盖入口 Ability 启动与页面列表等场景，基于 Hypium / Hamock 编写。

## 登录说明

登录页内置演示账号（当前为前端校验逻辑，未接入后端服务）：

| 角色 | 账号 | 密码 | 进入页面 |
| --- | --- | --- | --- |
| 管理员（工作员） | `admin` | `123456` | 工作台（鸡舍 / 鸭舍） |
| 游客 | - | - | 主框架（首页 / 产品页） |

- 账号格式：4-16 位字母、数字、下划线或中划线
- 密码格式：6 位数字

## 后续规划

- [ ] 对接物联网设备数据，实现真实环境数据采集与上报
- [ ] 接入后端服务，完善账号体系与权限管理
- [ ] 增加远程调控与联动控制能力
- [ ] 数据可视化看板与养殖报告生成
