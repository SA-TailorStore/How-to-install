# วิธีรัน Kanok App
[คลิปตัวอย่างการใช้งาน](https://youtu.be/w4qy4m1k2XQ)

## สิ่งที่ต้องเตรียม
1. MySQL https://www.apachefriends.org/download.html
2. Go https://go.dev/
3. Node.js https://nodejs.org/en
4. Git https://git-scm.com/
5. Android Studio https://developer.android.com/studio/install (ติดตั้ง Emulator ด้วย ใช้ API 35)

## สร้าง Database จากไฟล์ SQL
Download ได้จาก Repository นี้ `kanok-app.sql`

## วิธีการรัน BackEnd
1. โคลน project ด้วยคำสั่ง 
```bash
git clone https://github.com/SA-TailorStore/Kanok-API.git
```
2. เข้าไปในโฟลเดอร์ Kanok-API แล้วรันคำสั่ง
```bash
cd Kanok-API
```
3. รันคำสั่งเพื่อติดตั้ง package ที่จำเป็น
```bash
go mod tidy
```
4. สร้างไฟล์ .env แล้วกำหนดค่าต่างๆ ดังนี้
```bash
cp .env.example .env
```
```.env
DB_DATABASE="kanok-app"
DB_HOST="localhost"
DB_USERNAME="root"
DB_PASSWORD=""
DB_PORT="3306"

JWT_SECRET="e4cc1998b89fa660cf1b6a55a3cfb992"
CLOUDINARY_URL=cloudinary://<your_api_key>:<your_api_secret>@xxxxxx ทำตามข้อ (5.)
```
5. สร้าง [Cloudinary Account](https://cloudinary.com/) แล้วนำ URL มาใส่ใน .env [วิธีทำ](https://youtu.be/CxAnPfVStWU)

6. รันคำสั่งเพื่อรัน server
```bash
go run main.go
```

## วิธีการรัน FrontEnd
1. โคลน project ด้วยคำสั่ง 
```bash
git clone https://github.com/SA-TailorStore/Kanok-App.git
```
2. เข้าไปในโฟลเดอร์ Kanok-App แล้วรันคำสั่ง
```bash
cd Kanok-App
```
3. รันคำสั่งเพื่อติดตั้ง package ที่จำเป็น
```bash
npm install
```
4. สร้างไฟล์ .env แล้วกำหนดค่าต่างๆ ดังนี้
```bash
cp .env.example .env
```
```.env
EXPO_PUBLIC_API_URL=http://xx.xx.xx.xx:9000
```
เนื่องจาก[ปัญหา axios ใน react native ไม่สามารถใช้ localhost](https://stackoverflow.com/questions/42189301/axios-in-react-native-not-calling-server-in-localhost) ก็เลยต้องใช้ IP ของเครื่องเราเอง

windows ใช้คำสั่ง
```bash
ipconfig | findstr /i "IPv4"
```
mac ใช้คำสั่ง
```bash
ifconfig en0 | grep inet | awk '$1=="inet" {print $2}'
```
แล้วเอา ip ไปใส่แทน xx.xx.xx.xx

5. รันคำสั่งเพื่อรัน server
```bash
npx expo start
```
6. สแกน QR Code ด้วย Expo Go หรือใช้ Emulator ของ Android
```bash
npx expo start --android
```