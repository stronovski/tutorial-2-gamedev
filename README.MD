# Latihan: Playtest
## 1. Apa saja pesan log yang dicetak pada panel Output?
![alt text](<Screenshot 2025-02-14 104814.png>)

## 2. Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output
![alt text](<Screenshot 2025-02-14 104906.png>)

## 3. Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?
![alt text](<Screenshot 2025-02-14 105222.png>)
Dapat dilihat bahwa jika BlueShip memasuki ObjectiveArea, maka pesan log “Reached Objective” akan terlihat pada panel Output. Dengan hal ini, lokasi scene ObjectiveArea perlu untuk diperhatikan, karena jika ObjectiveArea diletakkan di daerah yang tidak bisa dijangkau oleh BlueShip yang mana hanya bisa bergerak ke atas dan ke bawah, maka pesan “Reached Objective” tidak akan pernah bisa dicapai.

# Latihan: Playtest
## 1. Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?
Sprite merupakan node yang menampilkan texture 2D. Texture yang ditampilkan bisa jadi merupakan wilayah dari texture atlas lain yang lebih besar, ataupun frame dari animasi sprite sheet. 

## 2. Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?
RigidBody2D digunakan untuk objek yang bereaksi pada collision/force, tetapi objek tersebut tidak dapat dikontrol secara langsung, melainkan dengan memberikan force ke objek. Sementara itu, StaticBody2D tidak dapat berekasi pada collision, seperti platform ataupun obstacle lainnya.

## 3. Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?
Saat atribut Mass diganti pada tipe RigidBody2D, tidak terdapat perbedaan signifikan pada scene MainLevel, meskipun atribut Mass diganti menggunakan value yang ekstrim, seperti 10.000.

## 4. Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?
Saat atribut Disabled dinyalakan, maka BlueShip akan jatuh bebas melewati platform dan keluar dari screen yang dapat terlihat di layar.

## 5. Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?
![alt text](<Screenshot 2025-02-14 114103-1.png>)
![alt text](<Screenshot 2025-02-14 114128.png>)
Saat atribut position diubah, maka posisi pesawat akan berganti sebanyak pixel yang diinput, begitu pula dengan rotasi. Atribut Scale dapat memperbesar atau memperkecil pesawat sebanyak yang dibutuhkan.

## 6. Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?
Hal ini terjadi karena position yang terlihat di Inspector adalah posisi relatif terhadap parent, bukan posisi absolut dalam dunia, sedangkan posisi visual yang terlihat adalah hasil dari kombinasi posisi parent dengan posisi relatif node. Dengan adanya hal tersebut, maka value yang berada di position node dalam inspector dan visualisasinya bisa saja berbeda.
