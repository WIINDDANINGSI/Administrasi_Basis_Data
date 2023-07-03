-- menggunakan database
use dqlabmarthbasic;

-- mengurutkan data menggunakan ORDER BY
-- ambil nama produk, dan quantity dari table tr_penjualan_dqlab kemudian urutkan  berdasarkan  qty
SELECT nama_produk, qty
from tr_penjualan_dqlab
order by qty;

SELECT nama_produk, qty
from tr_penjualan_dqlab
order by nama_produk;

--  mengurutkan dua kolom menggunakan ORDER BY
-- ambil nama produk, quantity dari table tr_penjualan_dqlab kemudian urutkan berdasarkan qty dan nama_produk
select nama_produk, qty
from tr_penjualan_dqlab
order by qty, nama_produk; 

-- latihan mandiri
-- pengurutan berdasakan qty dan tgl_transaksi dari tr_penjualan_dqlab
SELECT *
FROM tr_penjualan_dqlab
ORDER BY qty, tgl_transaksi;
-- pengurutan berdasarkan nama pelanggan dari table ms_pelanggan
SELECT *
FROM ms_pelanggan_dqlab
ORDER BY nama_pelanggan;
-- pengurutan berdasarkan alamat dari tabel ms_pelanggan
SELECT *
FROM ms_pelanggan_dqlab
ORDER BY nama_pelanggan;

-- ASC dan DESC mengurutkan dari besar ke kecil
-- ambil nama produk dan quantity dari table tr_penjualan_dqlab urutkan berdasarkan qty secara descanding
select nama_produk, qty
from tr_penjualan_dqlab
ORDER BY qty DESC;

-- mengurutkan dua kolom dengan ASCENDING dan DESCENDING
select nama_produk, qty
from tr_penjualan_dqlab
ORDER BY qty DESC, nama_produk ASC;

-- latihan mandiri
-- ambil semua kolom pada tr_penjualan_dqlab diurtkan berdasarkan tgl_transaksi secara descending dan qty secara ascending
SELECT *
FROM tr_penjualan_dqlab
ORDER BY tgl_transaksi DESC, qty ASC;
-- ambil semua kolom dari ms_pelanggan diurutkan berdasarkan nama_pelanggan secara descending
SELECT *
FROM ms_pelanggan_dqlab
ORDER BY nama_pelanggan DESC;
-- ambil semua kolom dari table ms_pelanggan diurutkan berdasarkan alamat secara descending
SELECT *
FROM ms_pelanggan_dqlab
ORDER BY alamat DESC;

-- ambil nama_produk, qty, harga, dan total_beli dari tr_penjualan-dqlab urutkan berdasarkan total beli
select nama_produk , qty, harga, qty*harga as total_beli
from tr_prnjualan_dqlab
ORDER BY total_beli DESC;  

-- LATIHAN MANDIRI
-- pengurutan dengan ekspresi total harga menggunakan rumusan jumlah barang dikali harga barang dikurang diskon dari table tr_penjualan_dqlab
SELECT nama_produk, qty, harga, diskon, total_bayar, jumlah_barang * harga_barang - diskon AS total_harga
FROM tr_penjualan_dqlab;

-- FUNGSI AGERASI
-- menghitung penjumlahan nilai qty seluruh row pada tabel penjualan 
select sum(qty) from tr_penjualan_dqlab;
select sum(nama_produk) from tr_penjualan_dqlab; -- bisa tapi menghasilkan nilai 0

-- menhitung jumlah seluruh row pada table penjualan
select count(*) from tr_penjualan_dqlab;

-- menghitung penjumlahan nilai qty dan jumlah seluruh row di table penjualan
select sum(qty), count(*) from tr_penjualan_dqlab;

-- menhitung rata-rata qty, nilai max qty, dan nilai minimum qty di tabel penjualan
select avg(qty), max(qty), min(qty) from tr_penjualan_dqlab;

-- menghitung jumlah nilai unik dari nama_produk pada tabel penjualan
select count (destinct nama_produk) from tr_penjualan_dqlab; 
select count(*), count (destinct nama_produk) from tr_penjualan_dqlab;

-- GROUP BY
-- mengambil grouping nilai dari kolom  nama_produk dari tabel tr_pejualan
select nama_produk from tr_penjualan_dqlab
group by nama_produk;

-- mengambil nilai grouping dari kolom nama_produk dan qty pada tabel penjualan
select nama_produk, qty from tr_penjualan_dqlab
group by nama_produk, qty
order by qty desc;

-- mengambil jumlah qty  dari grouping nama_produk seluruh row di tabel tr_penjualan
select nama_produk, sum(qty) from tr_penjualan_dqlab
group by nama_produk;

-- HAVING
-- mengambil jumlah qty diatas 2 dari grouping dari nama_produk terhadap seluruh row pada tabel tr_penjualan
select nama_produk,  sum(qty)
from tr_penjualan_dqlab
group by nama_produk
having  sum (qty) > 2;

-- LATIHAN MANDIRI
-- menghitung dafrat nama_produk yang total  jumlah produk terjual per kelompok nama_produk adalah diatas nilai 4
SELECT nama_produk, SUM(jumlah_produk) AS total_jumlah
FROM tr_penjualan_dqlab
GROUP BY nama_produk
HAVING total_jumlah > 4;

-- menghitung daftar nama_produk yang total jumlah produk terjual perkelompok nama produk sama dengan 9
SELECT nama_produk
FROM tr_penjualan_dqlab
GROUP BY nama_produk
HAVING SUM(jumlah_produk) = 9;

-- menghitung daftar kelompok nama produk dan total nilai penjualan dan mengurutkan berdasarkan nilai penjualan terbesar
SELECT kelompok_nama_produk, SUM(harga * jumlah_produk - diskon) AS total_penjualan
FROM tr_penjualan_dqlab
GROUP BY kelompok_nama_produk
ORDER BY total_penjualan DESC;
