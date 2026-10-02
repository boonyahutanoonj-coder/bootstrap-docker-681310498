# 1. ใช้ Node.js 20 บน Linux Alpine
FROM node:20-alpine

# 2. กำหนดโฟลเดอร์ทำงานหลักภายใน Container
WORKDIR /app

# 3. คัดลอก package.json เพื่อติดตั้ง Dependencies
COPY package*.json ./
RUN npm install

# 4. คัดลอกโค้ดทั้งหมดเข้า Container
COPY . .

# 5. เปิดพอร์ต 5173
EXPOSE 5173

# 6. สั่งรัน Dev Server
CMD ["npm", "run", "dev"]
