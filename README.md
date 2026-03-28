# 中庸学习平台

一个完整的在线学习平台，支持手机和电脑数据同步。

## 功能特性

- ✅ 用户注册/登录
- ✅ 课程浏览
- ✅ 多种内容类型（文字、视频、测验）
- ✅ 学习进度跟踪
- ✅ 笔记功能
- ✅ 数据同步（通过 Supabase）

## 快速开始

### 1. 设置数据库

1. 打开 [Supabase Dashboard](https://supabase.com/dashboard)
2. 选择你的项目：`jaxkvzwrvovabvxufndv`
3. 进入 **SQL Editor**
4. 复制 `SUPABASE-SETUP.sql` 文件中的内容
5. 点击 **Run** 执行

### 2. 启动前端

```bash
cd zhongyong-app
npm install
npm run dev
```

### 3. 访问应用

打开浏览器访问：`http://localhost:5173`

## 测试账号

- 邮箱：`demo@example.com`
- 密码：`demo123`

## 技术栈

- **前端**：React + Vite
- **后端**：Supabase (PostgreSQL)
- **样式**：CSS3 (响应式设计)

## 项目结构

```
zhongyong-app/
├── src/
│   ├── lib/
│   │   └── supabase.js    # Supabase 配置
│   ├── pages/
│   │   ├── Login.jsx      # 登录页面
│   │   ├── Register.jsx  # 注册页面
│   │   ├── Courses.jsx    # 课程列表
│   │   ├── CourseDetail.jsx  # 课程详情
│   │   └── Lesson.jsx     # 学习页面
│   ├── App.jsx           # 主应用
│   └── App.css           # 样式
├── SUPABASE-SETUP.sql    # 数据库初始化
└── README.md
```

## 部署

### 前端部署（Vercel/Netlify）

1. 构建项目：`npm run build`
2. 将 `dist` 文件夹部署到 Vercel 或 Netlify

### Supabase 配置

确保在 Supabase 后台：
1. 启用 Table GUI 或 SQL Editor
2. 运行 `SUPABASE-SETUP.sql`
3. 获取你的 `anon` public key 并更新 `src/lib/supabase.js`
