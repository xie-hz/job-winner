# 求职赢家 (Job Winner)

求职申请管理平台，帮助你追踪投递进度、面试安排和 Offer 状态。

## 功能

- 📋 **求职申请管理** — 记录公司、职位、薪资、状态，支持搜索和状态筛选
- 📅 **面试追踪** — 管理面试时间、面试官、状态
- 💰 **Offer 管理** — 记录薪资待遇和 Offer 详情
- 🔖 **书签管理** — 收藏常用求职网站链接
- ❓ **面试问答** — 整理面试常见问题与答案
- 👤 **个人资料** — 管理简历基本信息
- 🌙 **深色模式** — 支持浅色/深色主题切换
- 🌍 **多语言** — 支持中文、英文、西班牙语

## 技术栈

| 层面 | 技术 |
|---|---|
| 前端 | React 18 + Vite + Material UI |
| 后端 | Spring Boot 3.4 + WebFlux (响应式) |
| API | GraphQL |
| 数据库 | MySQL 8.0（支持 PostgreSQL / H2 切换） |
| 数据访问 | Spring Data R2DBC（全异步） |
| 数据库迁移 | Flyway |
| 国际化 | react-i18next |
| 容器化 | Docker Compose |

## 快速开始

### 环境要求

- JDK 17+
- MySQL 8.0
- Node.js 18+

### 后端

```bash
cd backend
# 创建数据库
mysql -u root -p -e "CREATE DATABASE IF NOT EXISTS job_winner CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"

# 构建 & 启动
mvn clean package -DskipTests
java -jar target/job-winner-0.0.1-SNAPSHOT.jar
```

默认使用 MySQL，可通过 `-Dspring.profiles.active=h2` 切换到 H2 文件数据库（无需安装 MySQL）。

### 前端

```bash
cd ui
npm install
npm run dev
```

前端运行在 `http://localhost:3000`，后端 API 在 `http://localhost:8080/graphql`。

### Docker

```bash
cd backend
docker compose --profile h2 up
```

## 持续改进

这个项目会随着我的日常使用不断迭代，遇到体验不好的地方就会顺手改掉。也欢迎提 Issue 和建议。
