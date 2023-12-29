#menggunakan base images Node.Js Versi 14
FROM node:14

#Menentukan Bahwa working directory untuk cointaineradalah /app.
WORKDIR /app

#menyalin seluruh source code ke working directory di container
COPY . . 

#menentukan agar aplikasi berjalan dalam production mode dan menggunakan container bernama
#item-db sebagai database host.
ENV NODE_ENV=production DB_HOST=item-db

#menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

#ekspos bahwa port yang digunakan oleh aplikasi adalah 8080
EXPOSE 8080

#saat container di luncurkan, jalankan server dengan perintah npm start
CMD ["npm","start"]