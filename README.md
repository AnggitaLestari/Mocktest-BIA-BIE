# Mock Technical Test 
## BI Engineer dan BI Analyst

### Halo, saya Anggita Lestari. 
Saya baru saja menyelesaikan bootcamp Business Intelligence di Binar Academy. 

Repository ini menampilkan hasil mock technical test saya untuk soal BI Engineer dan BI Analyst.

dengan daftar isi sebagai berikut : 

### VIDEO PRESENTASI 

#### [Video Presentasi mock technical test BI Engineer dan BI Analyst](https://www.loom.com/share/68bc14255e184268b8dd31bc114d2c02?sid=7d5384b9-d50d-4654-b69f-af9c81303c94)

Saya telah mengupload video hasil mock pengerjaan technical test saya untuk soal BI Engineer dan BI Analyst pada link terlampir.

Dalam video tersebut, saya mendemonstrasikan:

* Ekstraksi data dari CSV ke PostgreSQL menggunakan Python
* Pembuatan SQL statement untuk analisis metrik bisnis
* Penyelesaian query SQL
* Pembuatan visualisasi data

### BIE - BI Engineer Mock Technical Test
#### 1. [Mock Technical Test - Soal BIE (Pdf file)](https://github.com/AnggitaLestari/Mocktest-BIA-BIE/blob/main/BIE%20Mock%20Technical%20Test%20.pdf)
#### 2. [Jawaban Soal 1.a (proses Extract CSV ke Postgesql - Mock Technical Test - Soal BIE)](https://github.com/AnggitaLestari/Mocktest-BIA-BIE/blob/main/BIE%20-%20BIA%20SQL%20Test%20%231.ipynb)
#### 3. [Jawaban Soal 1.b (SQL statement (metrics) - Mock Technical Test - Soal BIE)](https://github.com/AnggitaLestari/Mocktest-BIA-BIE/blob/main/Query%20Metrics%20Superstore%20Test%201.sql)
#### 4. [Jawaban Soal 2 (SQL statement (2nd highest salary engineering) - Mock Technical Test - Soal BIE)](https://github.com/AnggitaLestari/Mocktest-BIA-BIE/blob/main/BIE%20SQL%20Test%20%232.ipynb)
#### 5. [Jawaban Soal 3 (SQL statement (Neighborhoods) - Mock Technical Test - Soal BIE)](https://github.com/AnggitaLestari/Mocktest-BIA-BIE/blob/main/BIE%20SQL%20Test%20%233.ipynb)

### BIA - BI Analyst Mock Technical Test
#### 1. [Mock Technical Test - Soal BIA (Pdf file)](https://github.com/AnggitaLestari/Mocktest-BIA-BIE/blob/main/BIA%20Mock%20Technical%20Test.pdf)
#### 2. [Jawaban Soal 1.a (Penjelasan Metrics Fingerprint - Mock Technical Test - Soal BIA)](https://github.com/AnggitaLestari/Mocktest-BIA-BIE/blob/main/Jawaban%20BIA%20Mock%20Technical%20Test%20soal%201.pdf)
#### 3. Jawaban Soal 1.b Mock up dashboard Fingerprint : 
![alt text](https://github.com/AnggitaLestari/Mocktest-BIA-BIE/blob/main/Mockup%20dasboard%20FingerPrint%20-%20BIA%20-%20Test%201.jpg?raw=true)

### [Please check the detailed fingerprint dashboard mock-up on Canva (Link)](https://www.canva.com/design/DAGHsXRU0NY/aUzqUhQ_7NBIL1pW2kfyfw/view?utm_content=DAGHsXRU0NY&utm_campaign=designshare&utm_medium=link&utm_source=editor)

## Let's Connect!

I'm always excited to connect with fellow data enthusiasts, professionals in the BI field, or anyone interested in my journey. 

I'm passionate to learn more about BI, continuously learning and improving to deliver impactful data-driven insights. 

Your messages, questions, or feedback are warmly welcome!

* 💼 Connect with me on [LinkedIn](www.linkedin.com/in/4nggitalestari)
* 📧 Email me at [anggitalestari@gmail.com]
* [For other projects you can check (Link)](https://github.com/AnggitaLestari/End-to-end-pipeline-and-visualization-for-bikeshare)

Thank you for visiting my repository. Happy coding! 🚀📊

1. **Product Sales Performance**:
```sql
SELECT 
  i.name AS product_name,
  i.price,
  COUNT(*) AS total_quantity_sold,
  SUM(i.price) AS total_revenue
FROM sales_records sr
JOIN items i ON sr.item_id = i.id
GROUP BY i.name, i.price
ORDER BY total_quantity_sold DESC

