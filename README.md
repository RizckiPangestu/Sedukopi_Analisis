## Latar Belakang
Dalam industri Food and Beverage (F&B) yang sangat kompetitif, pengambilan keputusan berbasis data menjadi kunci utama untuk menjaga profitabilitas dan pertumbuhan bisnis yang berkelanjutan. Sedukopi, sebagai jaringan kedai kopi yang terus berkembang, mengelola berbagai pilihan menu.

Seiring bertambahnya transaksi setiap harinya, data yang terkumpul sebenarnya menyimpan banyak potensi tersembunyi. Jika digali lebih dalam, data penjualan dan operasional ini bisa membantu manajemen Sedukopi untuk:
- Melihat menu mana yang benar-benar membawa keuntungan bagi perusahaan.
- Merancang promo yang tepat sasaran sesuai kebiasaan pelanggan.

## Problem Statement
Saat ini, manajemen Sedukopi sedang menghadapi tiga tantangan nyata di lapangan:
1. Terdapat kecurigaan dari pihak eksekutif (CEO) mengenai ketidakseimbangan performa menu, di mana terdapat menu dengan volume penjualan tinggi namun memberikan margin yang tipis, serta potensi adanya hidden gem (menu bermargin tinggi) yang kurang dipromosikan. 
2. Tim pemasaran berencana meluncurkan paket bundling untuk meningkatkan nilai rata-rata pesanan (Average Order Value), namun belum memiliki landasan data mengenai kombinasi item yang secara riil sering dipesan bersamaan oleh pelanggan.

proyek portofolio ini bertujuan untuk menjawab dua pertanyaan utama:
1. Menu apa saja yang laris tapi untungnya kecil, dan mana menu "hidden gem" yang harus segera didorong promonya?
2. Pasangan menu apa yang paling menjanjikan untuk dijadikan paket bundling?

## Data
Untuk menjawab pertanyaan-pertanyaan di atas, proyek ini menggunakan dataset penjualanl dari Sedukopi yang mencakup periode 2022 hingga 2025. Dataset ini meliputi data transaksi, detail pesanan, menu, gerai, dan karyawan. Data tersebut akan dianalisis menggunakan pendekatan Menu Engineering (Matriks Boston) dan Analisis Cross-Selling.

### Matrix Boston
Model ini digunakan untuk mengklasifikasikan performa setiap menu berdasarkan dua hal: popularitas (volume penjualan) dan profitabilitas (margin keuntungan). Menu akan dibagi menjadi 4 kategori:
Star: Penjualan tinggi dan margin tinggi. Ini adalah menu andalan yang paling laris dan sangat menguntungkan.
Plowhorse: Penjualan tinggi, tetapi margin rendah. Menu yang disukai pelanggan dan sering dipesan, namun keuntungan per porsinya tipis.
Puzzle: Penjualan rendah, tetapi margin tinggi. Ini adalah "hidden gem"; menu yang keuntungannya besar, tapi jarang dibeli (butuh lebih banyak promosi).
Dog: Penjualan rendah dan margin rendah. Menu yang tidak populer dan tidak membawa keuntungan yang berarti.

### Cross Selling
Digunakan untuk melihat pola pembelian pelanggan guna menyusun paket bundling. Metodenya adalah dengan melihat item mana saja yang muncul di dalam satu keranjang belanja yang sama, dengan cara memasangkan data detail pesanan (order details) terhadap pesanan itu sendiri (self-join). 

### Kolom relevan dari dataset yang digunakan untuk analisis ini antara lain: 
- Order ID: ID unik dari setiap keranjang transaksi 
- Quantity:Jumlah produk yang terjual 
- Price: Harga jual produk
- Cost: Harga modal produk

Dengan menggunakan gabungan data ini, kita dapat memetakan strategi bisnis yang lebih terarah, seperti menentukan menu mana yang butuh dorongan promosi dan merancang paket bundling yang paling masuk akal.

## Kesimpulan:

Kategori Kopi berperan sebagai penggerak utama volume penjualan, sedangkan kategori Makanan menjadi penyumbang keuntungan terbesar. Hal ini mengindikasikan produk kopi memiliki margin keuntungan yang lebih tipis dibandingkan makanan.

Terdapat perbedaan signifikan antara popularitas produk dan kontribusinya terhadap profit:

1. Top 3 Terlaris: Matcha Espresso Fusion, Cheesecake Slice, dan Butter Croissant.
2. Top 3 Paling Menguntungkan: Club Sandwich, Almond Croissant, dan French Toast.

## Insight:
Berdasarkan temuan tersebut, performa menu dapat diklasifikasikan ke dalam tiga segmen utama:
1. Volume Tinggi & Margin Tipis: Matcha Espresso Fusion, Cheese Cake Slice, Soda Gembira, Macchiato, dan Taro Latte.
2. Hidden Gem (Margin Tinggi & Volume Rendah): French Toast, Spaghetti Carbonara, Salad Caesar, Mie Goreng Jawa, dan Sandwich Tuna.
3. Volume & Profit Rendah: Earl Grey, Cookies Chocochip, Cinnamon Roll, Matcha Latte, dan Kue Sus Vanilla.

## Rekomendasi
Untuk memaksimalkan pendapatan dan efisiensi operasional, langkah strategis yang perlu dilakukan adalah:
1. Gunakan Strategi "Menu Pancingan": Pertahankan kualitas menu bervolume tinggi karena berfungsi sebagai penarik traffic pelanggan. Jadikan menu populer ini sebagai pancingan dalam paket penawaran untuk mempromosikan menu lain.
2. Promosi Agresif & Cross-Selling untuk "Hidden Gem": Menu ini adalah kunci pelipatgandaan profit perusahaan. Instruksikan kasir untuk aktif menawarkan menu tersebut dan terapkan strategi bundling berbasis data transaksi berikut:
    - French Toast dipasangkan dengan Strawberry Smoothie / Salad Caesar / Avocado Shake.
    - Spaghetti Carbonara dipasangkan dengan Club Sandwich / Iced Latte / Piccolo.
    - Salad Caesar dipasangkan dengan French Toast / Sandwich Ayam / Mie Goreng Jawa.
    - Mie Goreng Jawa dipasangkan dengan Cappuccino / Caramel Macchiato / Piccolo.
    - Sandwich Tuna dipasangkan dengan Spaghetti Aglio Olio / Nasi Goreng Spesial / Mocha.
3. Evaluasi Menu Bawah: Hentikan sementara operasional menu dengan volume dan profit rendah untuk mengefisiensikan beban bahan baku dan mengurangi potensi kerugian.
