
class Haircuts{
  String name;
  String image;
  String description;
  String category;

  Haircuts({
    required this.name,
    required this.image,
    required this.description,
    required this.category,
  });
}
var generalList = [...favList,...haircutsList];
var favList=[];
var haircutsList = [
  Haircuts(
    name: 'Undercut',
    image: 'images/haircut1.jpg',
    description: 'Pria selalu berusaha untuk mengikuti tren yang sedang bergulir. Model rambut undercut memang masih menjadi yang paling banyak diminati saat ini dan menjadi salah satu tren gaya rambut ikonik di kalangan kaum pria. Hal ini dikarenakan potongan rambut undercut terbilang sederhana, simpel, segar, dan praktis.',
    category: 'medium',
  ),
  Haircuts(
    name: 'Top Knot',
    image: 'images/haircut2.jpg',
    description: 'Cara pemotongan model rambut pendek pria top knot yaitu rambut bagian samping kanan dan kiri dibuat tipis habis hingga plontos, begitu pula dengan rambut bagian belakang. Kemudian rambut bagian atas dibiarkan panjang agar bisa dikuncir.',
    category: 'long',
  ),
  Haircuts(
    name: 'Brushed Top',
    image: 'images/haircut3.jpg',
    description: 'Rambut pria ini sudah menjadi model rambut pria terfavorit di tahun 2018 hingga sekarang, lho. Sekilas model rambut brushed on top ini memang terlihat seperti model spike di awal tahun 2000-an lalu. Namun, perbedaannya terletak pada tingkat ketipisan rambut bagian samping dan bagian belakang.',
    category: 'medium',
  ),
  Haircuts(
    name: 'Buzz Cut',
    image: 'images/haircut4.jpg',
    description: 'Model rambut pria pendek rapi tipe buzz cut memiliki ciri khas rambut yang terbilang tipis. Biasanya model buzz-cut kerap digunakan oleh para anggota militer. Hindari memberi warna cerah. Warna hitam yang natural dan alami akan lebih disarankan. Pastinya, gaya rambut yang sesuai dengan bentuk wajah dan kepala, akan membuat penampilan kamu semakin menarik.',
    category: 'short',
  ),
  Haircuts(
    name: 'Front Puff',
    image: 'images/haircut5.jpg',
    description: 'Gaya rambut pria satu ini merupakan perpaduan dari gaya rambut medium bangs (berponi) dan voluminous pompadour (pompadour yang bervolume). Kesan unik memang lebih ditonjolkan lewat potongan rambut ini.',
    category: 'medium',
  ),
  Haircuts(
    name: 'Short & Spiky',
    image: 'images/haircut6.jpg',
    description: 'Model potongan rambut spiky adalah salah satu model potongan rambut rambut yang paling populer sejak lama. Meskipun begitu, gaya rambut ini tetap dianggap fashionable serta mengikuti perkembangan zaman. Ciri khas dari model rambut spiky adalah potongan rambut bagian atas yang meruncing berdiri, dan rambut yang tipis pada bagian samping yang dapat memberikan kesan jenjang pada wajah.',
    category: 'short',
  ),
  Haircuts(
    name: 'Pompadour',
    image: 'images/haircut7.jpg',
    description: 'Gaya rambut pendek pria model pompadour ini sangat cocok buat kamu yang memiliki bentuk wajah oval. Walaupun ketenaran model rambut pompadour ini sudah mulai meredup, namun beberapa pria yang biasa menggunakan pomade masih menerapkan model rambut ini. Model rambut seperti ini akan memberikan kesan macho, trendi, dan kekinian. Cocok untuk wajah yang berjenggot ataupun tidak, kamu akan terlihat keren saat memakai model rambut pompadour.',
    category: 'medium',
  ),
  Haircuts(
    name: 'Short with Pony',
    image: 'images/haircut8.jpg',
    description: 'Biasanya, potongan rambut poni lebih populer di kalangan perempuan. Namun, bagi kamu pria berwajah oval tidak perlu ragu untuk mencoba potongan rambut pria poni ini. Model rambut pria berponi mulai populer saat munculnya K-Pop dan K-Drama di Indonesia. \nNah, bagi kamu yang menginginkan wajah terlihat lebih manis bisa menggunakan rambut model poni seperti artis Korea. Terutama bagi kamu yang memiliki dahi lebar, model rambut ini bisa menutupinya. Kamu bisa menambahkan aksesori kacamata untuk menyempurnakan penampilan.',
    category: 'medium',
  ),
  Haircuts(
    name: 'Caesar Fade',
    image: 'images/haircut9.jpg',
    description: 'Model potongan rambut pria caesar fade memiliki ciri khas bagian samping dan belakang yang sangat tipis, sedangkan pada bagian atas rambut dibiarkan sedikit panjang. Gaya rambut pria ini dibentuk dengan bagian atas panjang dan semakin menipis hingga hilang di bagian bawah. \nPenipisan ketebalan rambut tersebut dimulai dari bagian atas kepala hingga kebagian leher. Gaya rambut caesar fade ini memiliki kelebihan yaitu bagian atas rambut bisa disisir ke semua arah sesuai dengan selera kamu. Gaya rambut caesar fade ini cukup banyak digemari terutama bagi kamu yang memiliki selera rambut dengan ukuran sangat pendek.',
    category: 'short',
  ),
  Haircuts(
    name: 'Disconnected Undercut',
    image: 'images/haircut10.jpg',
    description: 'Jika kamu sudah memiliki hairstyle pria seperti ini bukan berarti bisa dibiarkan begitu saja. Kamu harus bisa menatanya dengan baik agar bisa mendapatkan hasil menarik yang maksimal. Meski ada beberapa gaya yang sulit dibuat dan tidak bisa diaplikasikan ke dalam kegiatan sehari-hari karena akan menyita waktu yang lama, disconnect undercut ini juga merupakan jenis salah satu model potongan undercut yang terbilang tidak mudah sehingga yang melakukannya harus benar-benar handal.',
    category: 'medium',
  ),
  Haircuts(
    name: 'Comb Over',
    image: 'images/haircut11.jpg',
    description: 'Comb over adalah cara menyisir rambut ke atas yang sudah lama sehingga menjadi gaya rambut yang paling kontemporer. Model rambut ini menyatukan gaya garis menyisir dengan gaya horizontal serta menyatukannya dengan undercut pada bagian bawahnya. Akan ada sisi kontras yang terlihat antara rambut yang paling bervolume pada bagian atas dengan sisi samping yang lebih pendek.',
    category: 'medium',
  ),
  Haircuts(
    name: 'Line Up',
    image: 'images/haircut12.png',
    description: 'Memasuki awal tahun 2019, model rambut pria pendek masih menjadi salah satu model rambut yang diminati dan banyak digemari para pria. Salah satunya line up haircut, model rambut pendek yang sangat simpel. Kamu tidak akan repot merawat rambut, karena potongan ini sangat tipis. Gaya rambut pendek Zayn Malik ini juga bisa banget ditiru pria Indonesia.',
    category: 'short',
  ),
  Haircuts(
    name: 'Layered Undercut',
    image: 'images/haircut13.jpg',
    description: 'Gaya rambut layered undercut ini akan memberikan potongan berlayer. Otomatis akan membuat rambut terlihat lebih bervolume. Kamu bisa meminta kepada kapster untuk memilih seberapa besar layer yang akan dikreasikan. Yang perlu diperhatikan karena rambut pria mudah panjang maka setidaknya dalam kurun waktu empat minggu sekali datang ke tempat gunting rambut. Tujuannya adalah untuk merapikan rambut agar tidak merusaknya karena terlalu panjang. Bisa juga datang kalau kamu merasa rambut sudah terlampau panjang. Memang terbilang menyita waktu, namun jenis gaya rambut ini butuh perawatan yang ekstra.',
    category: 'medium',
  ),
  Haircuts(
    name: 'Patterned Fade',
    image: 'images/haircut14.jpg',
    description: 'Berbicara soal gaya rambut patterned fade memang sangat unik, karena garisan pada rambut dapat menjadi suatu nilai maskulinitas. Seperti halnya pesepak bola yang tampil dengan gaya rambut patterned fade. Model rambut ini adalah fade yang membentuk pola. Kamu bisa minta sang kapster membuat pola sesuai referensi kamu. Lebih baik buatlah pola yang tidak terlalu rumit dan juga tidak terlalu sederhana. Karena jika terlalu sederhana, model rambut kamu akan terlihat seperti pitak.',
    category: 'short',
  ),
  Haircuts(
    name: 'Short Neat',
    image: 'images/haircut15.jpg',
    description: 'Gaya rambut short neat adalah potongan rambut yang paling sederhana jika kamu malas memikirkan model rambut yang terlalu banyak detail. Kalau kamu ingin mencobanya, potong rambutmu sependek mungkin dengan menyisakan bagian atas yang dapat disisir ke arah samping. Untuk memaksimalkan gaya rambut ini, kamu bisa memakai pomade untuk membuat rambut tetap rapi dan makin terlihat tampan!',
    category: 'short',
  ),
  Haircuts(
    name: 'Curtain Cut',
    image: 'images/haircut16.jpg',
    description: 'Jika kamu generasi 90-an, pasti tidak merasa asing dengan potongan rambut belah tengah atau yang disebut curtain haircut. Meski terlihat simpel, untuk mendapatkan curtain haircut, kamu harus menumbuhkan rambut hingga tebal. Kemudian kamu bisa membentuknya dengan merapikan bagian samping rambut, dan pastikan jambang kamu tercukur dengan rapi ya. Model rambut klasik ini kembali tren di kalangan pria urban dan para pria “artsy” lho! Jadi cocok deh untuk kamu yang menyukai gaya preppy look.',
    category: 'medium',
  ),
  Haircuts(
    name: 'Man Bob',
    image: 'images/haircut17.jpg',
    description: 'Tidak hanya perempuan, pria juga bisa kok punya potongan rambut bob. Kamu pasti tahu Johnny Depp kan? Pemain film The Pirates of The Caribbean ini sempat memiliki potongan rambut bob dan tetap terlihat maskulin dengan brewoknya lho. Potongan sebahu akan membuat kamu terlihat lebih eksentrik.',
    category: 'long',
  ),
  Haircuts(
    name: 'Bowl Cut',
    image: 'images/haircut18.jpg',
    description: 'Buat kamu yang memiliki poni bisa juga mencoba opsi model rambut pendek pria ini. Tinggal bentuk poni sama rata dengan bagian belakang rambut. Poni rata dibiarkan ke depan, lalu sisir rapi bagian belakang. Bentuk bowl cut ini terinspirasi dengan model rambut yang menyerupai mangkok (bowl). Pas banget untuk pria yang memiliki rambut lurus dan tebal.',
    category: 'medium',
  ),
  Haircuts(
    name: 'Ivy League',
    image: 'images/haircut19.jpg',
    description: 'Untuk tampilan yang lebih smart, pria bisa mengaplikasikan Ivy League dengan pomade ataupun gel wax untuk ketahanan model rambut yang lebih lama. ',
    category: 'short',
  ),
  Haircuts(
    name: 'Modern Mullet',
    image: 'images/haircut20.jpg',
    description: 'Mullet modern dapat merujuk ke beberapa gaya rambut pria yang berbeda. Sementara mullet sendiri didefinisikan oleh rambut panjang di seluruh, terutama di bagian belakang, mulllet modern lebih pendek di bagian atas dan samping. Mullet sering terlihat sebagai gaya yang ketinggalan zaman dan tidak menarik, tetapi jika Anda bisa memakainya dengan benar maka itu benar-benar terlihat sebagai bagiannya.',
    category: 'long',
  ),
];

