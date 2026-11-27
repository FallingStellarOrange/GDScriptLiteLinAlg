# GDScriptLiteLinAlg 项目文档

项目开始时间：**2026-11-27**
文档最后一次编辑：**2026-11-27**
语言：**简体中文**

---

## 目录

- [项目概述](#项目概述)
- [版本说明](#版本说明)
    - [编程语言](#编程语言)
    - [开发环境](#开发环境)
- [文件说明](#文件说明)
    - [根目录](#根目录)
    - [./docs 目录](#docs-目录)
        - [./docs/project_docs 目录](#docsproject_docs-目录)
    - [./addons 目录](#addons-目录)
        - [./addons/gdscript_lite_linalg 目录](#addonsgdscript_lite_linalg-目录)
- [代码说明](#代码说明)
    - [./addons/gdscript_lite_linalg - 插件入口](#addonsgdscript_lite_linalg---插件入口)
        - [gdscriptlitelinalg.gd](#gdscriptlitelinalg-gd)
    - [./addons/gdscript_lite_linalg - 矩阵类型](#addonsgdscript_lite_linalg---矩阵类型)
        - [Matrix.gd](#matrix-gd)
- [更新日志](#更新日志)
    - [feature/20261127/01](#feature2026112701)
- [问题修复](#问题修复)

---

## 项目概述

**GDScriptLiteLinAlg** 中文名 **GDScript轻量线代工具**，简称 **GDSLLA**，由 _坠入·Stellar Orange_ 使用 GDScript 独立开发。一款针对 GDScript 的支持小体量的轻量矩阵线性代数计算插件。

---

## 版本说明

### 编程语言

- **GDScript**
    1. **引擎版本**：Godot 4.7.2
    2. **脚本类型**：`@tool` 插件脚本与运行时工具类

### 开发环境

- **Godot Engine**
    1. **版本**：4.7.2
    2. **插件目录**：`addons/gdscript_lite_linalg/`

---

## 文件说明

### 根目录

**目录说明**：项目根目录

1. [.gitignore](../../.gitignore)
    - **创建时间**：2026-11-27
    - **修改时间**：2026-11-27
    - **文件类型**：Git Ignore 源文件
    - **文件描述**：声明无需上传至 GitHub 的文件，如 Godot 缓存、导入文件等

2. [LICENSE](../../LICENSE)
    - **创建时间**：2026-11-27
    - **修改时间**：2026-11-27
    - **文件类型**：文件
    - **文件描述**：许可证声明文件，目前使用 _MIT 许可证协议_

3. [README.md](../../README.md)
    - **创建时间**：2026-11-27
    - **修改时间**：2026-11-27
    - **文件类型**：Markdown 源文件
    - **文件描述**：项目基本信息介绍文件

### ./docs 目录

**目录说明**：项目相关文档统一存储目录

### ./docs/project_docs 目录

**目录说明**：项目文档的多语言存储目录

1. [docs/project_docs/project_docs_zh.md](project_docs_zh.md)
    - **创建时间**：2026-11-27
    - **修改时间**：2026-11-27
    - **文件类型**：Markdown 源文件
    - **文件描述**：中文版项目文档

2. [docs/project_docs/project_docs_en.md](project_docs_en.md)
    - **创建时间**：待补
    - **修改时间**：待补
    - **文件类型**：Markdown 源文件
    - **文件描述**：英文版项目文档

### ./addons 目录

**目录说明**：Godot 插件统一存储目录

### ./addons/gdscript_lite_linalg 目录

**目录说明**：GDScriptLiteLinAlg 插件本体目录

1. [addons/gdscript_lite_linalg/plugin.cfg](../../addons/gdscript_lite_linalg/plugin.cfg)
    - **创建时间**：2026-11-27
    - **修改时间**：2026-11-27
    - **文件类型**：Godot 插件配置文件
    - **文件描述**：声明插件名称、描述、作者、版本与入口脚本

2. [addons/gdscript_lite_linalg/gdscriptlitelinalg.gd](../../addons/gdscript_lite_linalg/gdscriptlitelinalg.gd)
    - **创建时间**：2026-11-27
    - **修改时间**：2026-11-27
    - **文件类型**：GDScript 源文件
    - **文件描述**：插件入口脚本，继承 `EditorPlugin`，提供启用/禁用/进入/退出四个钩子

3. [addons/gdscript_lite_linalg/gdscriptlitelinalg.gd.uid](../../addons/gdscript_lite_linalg/gdscriptlitelinalg.gd.uid)
    - **创建时间**：2026-11-27
    - **修改时间**：2026-11-27
    - **文件类型**：Godot UID 伴随文件
    - **文件描述**：Godot 4.4+ 自动生成的资源唯一标识符伴随文件，请勿手动编辑或删除

4. [addons/gdscript_lite_linalg/Matrix.gd](../../addons/gdscript_lite_linalg/Matrix.gd)
    - **创建时间**：2026-11-27
    - **修改时间**：2026-11-27
    - **文件类型**：GDScript 源文件
    - **文件描述**：定义 `LiteMatrix` 轻量矩阵类型，提供构造、取值、赋值、克隆、转置与常用方阵构造

5. [addons/gdscript_lite_linalg/Matrix.gd.uid](../../addons/gdscript_lite_linalg/Matrix.gd.uid)
    - **创建时间**：2026-11-27
    - **修改时间**：2026-11-27
    - **文件类型**：Godot UID 伴随文件
    - **文件描述**：Godot 4.4+ 自动生成的资源唯一标识符伴随文件，请勿手动编辑或删除

---

## 代码说明

### ./addons/gdscript_lite_linalg - 插件入口

**创建时间**：2026-11-27

#### gdscriptlitelinalg.gd

1. **创建时间**：2026-11-27
2. **修改时间**：2026-11-27
3. **代码位置**：[addons/gdscript_lite_linalg/gdscriptlitelinalg.gd](../../addons/gdscript_lite_linalg/gdscriptlitelinalg.gd)
4. **代码概述**：插件入口脚本，负责插件在 Godot 编辑器中的生命周期钩子
5. **代码逻辑**：
    - 以 `@tool` 声明为编辑器工具脚本
    - 继承 `EditorPlugin`
    - 提供 `_enable_plugin`、`_disable_plugin`、`_enter_tree`、`_exit_tree` 四个空钩子，当前无额外逻辑
6. **代码引用**：无
7. **全局变量**：无
8. **函数**：
    - **_enable_plugin**：插件启用时调用，当前为空实现
    - **_disable_plugin**：插件禁用时调用，当前为空实现
    - **_enter_tree**：插件进入场景树时调用，当前为空实现
    - **_exit_tree**：插件退出场景树时调用，当前为空实现
9. **类**：无（脚本本身即插件入口）

### ./addons/gdscript_lite_linalg - 矩阵类型

**创建时间**：2026-11-27

#### Matrix.gd

1. **创建时间**：2026-11-27
2. **修改时间**：2026-11-27
3. **代码位置**：[addons/gdscript_lite_linalg/Matrix.gd](../../addons/gdscript_lite_linalg/Matrix.gd)
4. **代码概述**：定义 `LiteMatrix` 轻量矩阵类型，面向小规模稠密实矩阵
5. **代码逻辑**：
    - 定义 `LiteMatrix` 类，继承 `RefCounted`
    - 以 `rows`、`cols`、`data` 三个成员描述矩阵
    - 提供 `from_array`、`get_value`、`set_value`、`clone`、`transpose` 基础操作
    - 提供 `CommonSquareMatrices` 枚举与 `structure_square` 统一构造入口
    - 提供 `identity`、`zeros`、`ones` 三个便捷方阵构造方法
6. **代码引用**：无
7. **全局变量**：无
8. **函数**：无（均为类方法）
9. **类**：
    - **LiteMatrix**：
        1. **概述**：轻量矩阵类型，面向小规模稠密实矩阵
        2. **变量**：
            - **rows**（_整型_）：行数
            - **cols**（_整型_）：列数
            - **data**（_PackedFloat64Array_）：一维存储的矩阵数据，索引 = `row * cols + col`
        3. **枚举**：
            - **CommonSquareMatrices**：常用方阵类型，包含 `ZEROS`（零矩阵）、`IDENTITY`（单位矩阵）、`ONES`（全一矩阵）
        4. **方法**：
            - **_init**：构造函数，按行列数创建全零矩阵
            - **from_array**（_静态_）：将二维 `Array` 转为 `LiteMatrix`
            - **get_value**：获取 `(r, c)` 处的数据
            - **set_value**：设置 `(r, c)` 处的数据
            - **clone**：克隆矩阵到新矩阵
            - **transpose**：返回当前矩阵的转置矩阵
            - **structure_square**（_静态_）：按枚举构造常用方阵
            - **identity**（_静态_）：构造单位矩阵
            - **zeros**（_静态_）：构造零矩阵
            - **ones**（_静态_）：构造全一矩阵

---

## 更新日志

### **feature/20261127/01**

- **开始日期**：2026-11-27
- **完成日期**：2026-11-27
- **更新内容**：
    1. 创建插件项目 `GDScriptLiteLinAlg`，确定插件目录结构与命名
    2. 添加 `.gitignore`、`LICENSE`（MIT）、`README.md`
    3. 编写插件入口脚本 `gdscriptlitelinalg.gd`
    4. 编写 `Matrix.gd`，实现 `LiteMatrix` 基础接口与常用方阵构造
    5. 建立 `docs/project_docs` 目录与中文版项目文档、英文版项目文档

---

## 问题修复

（暂无记录）
