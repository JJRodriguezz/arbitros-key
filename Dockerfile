FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm ci --only=production

COPY . .

EXPOSE 3000

ENV PORT=3000
ENV NODE_ENV=production

CMD ["node", "server.js"]
```

---

### 2. **.dockerignore** (raíz)
```
node_modules
npm-debug.log
.git
.gitignore
README.md
.env
.vscode
.idea
*.md
.DS_Store
```

---

### 3. **.env** (raíz)
```
PORT=3000
NODE_ENV=development
SPRINGBOOT_API_URL=http://localhost:8080/api
S3_BUCKET_URL=https://arbitros-imagenes-2025.s3.us-east-1.amazonaws.com