import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/models/meal.dart';

final mealsProvider = Provider((ProviderRef ref) {
  return const [
    Meal(
        id: "1",
        categoryId: "2",
        name: "Sigara Böregi",
        imageUrl:
            "https://cdn.yemek.com/mnresize/1250/833/uploads/2016/10/patatesli-sigara-boregi-onecikan.jpg",
        ingredients: [
          "2 adet yufka.",
          "250 gr lor peynir.",
          "Maydanoz",
          "Kızartmak için sıvı yağ",
        ],
        prepare: """
1. Yufka üçgen şeklinde 12 eş parçaya bölünür.
2. Doğranmış maydanoz ve peynir karıştırılarak iç harcı hazır edilir.
3. Her üçgen yufkanın alt ucuna bir kaşık dolusu kadar peynir harcı yayılır.
4. Yufkanın kenarları malzeme dökülmemesi için içe doğru bükülür ve yufka rulo şeklinde sarılır.
5. Uç kısmı su ile hafifçe ıslatarak kapatırsanız börekleriniz açılmayacaktır.
6. Hazırlanan börekler kızgın yağda çevrilerek pişirilir.
7. Dilerseniz boş bir zamanınızda hazırlayacağınız börekleri dolap poşeti ile derin dondurucuda muhafaza edebilir, yiyeceğiniz zaman istediğiniz kadarını kızartabilirsiniz.
Afiyet olsun!
"""),
    Meal(
        id: "2",
        categoryId: "4",
        name: "Katmer",
        imageUrl:
            "https://cdn.yemek.com/mnresize/1250/833/uploads/2015/06/katmer-onecikan.jpg",
        ingredients: [
          "Yarım kilogram yufka",
          "200 gram tereyağı",
          "1 su bardağı sıvı yağ",
          "1 su bardağı dövülmüş ceviz içi",
          "1 su bardağı dövülmüş fındık içi",
          "1 su bardağı toz şeker",
          "1 paket vanilin şeker (5 gram)",
          "1 çay bardağı su",
          "Bir tutam tuz",
          "Toz şeker ve tarçın karışımı (üzeri için)",
        ],
        prepare: """
1. Yufkaları tezgahın üzerine serin.
2. Eritilmiş tereyağı ve sıvı yağ karışımını yufkaların üzerine sürün.
3. Ceviz içi ve toz şeker serpiştirin.
4. Yufkaları rulo şeklinde sarın ve yağlı kağıt serili tepsiye yerleştirin.
5. Üzerine çırpılmış yumurta sarısı sürün.
6. Önceden ısıtılmış 180 derece fırında üzeri kızarana kadar pişirin.
7. Fırından çıkan sıcak tatlıyı, üzerine su serperek şekerli tarçın karışımına bulayın.
8. Dilimleyerek servis yapın.
"""),
    Meal(
      id: "3",
      categoryId: "3",
      name: "Fırında Tavuk",
      imageUrl:
          "https://iasbh.tmgrup.com.tr/d927a9/821/464/0/254/589/587?u=https://isbh.tmgrup.com.tr/sbh/2022/12/30/1672378461920.jpg",
      ingredients: [
        "Tavuk",
        "Yarım su bardağı sıvı yağ",
        "Limon suyu",
        "Tuz",
        "Karabiber",
        "Baharatlar (isteğe bağlı)",
        "Sarımsak (isteğe bağlı)",
        "Yarım su bardağı su",
      ],
      prepare: """
1. Fırın ısısını 200 dereceye ayarlayın.
2. Tavuk parçalarını iyice yıkayın ve suyunu süzün.
3. Bir kapta sıvı yağ, limon suyu, tuz, karabiber ve isteğe bağlı baharatları karıştırın.
4. Tavuk parçalarını bu karışıma bulayın, her tarafını iyice kaplayın.
5. Tavukları fırın tepsisine yerleştirin.
6. Üzerine doğranmış sarımsak serpiştirin.
7. Yarım su bardağı suyu tavukların etrafına ekleyin.
8. Tavukları önceden ısıtılmış 200 derece fırında, üzeri iyice kızarana kadar pişirin (yaklaşık 40-45 dakika).
9. Fırından çıkan sıcak tavukları servis tabağına alın.
Afiyet olsun!
""",
    ),
    Meal(
      id: "4",
      categoryId: "4",
      name: "Sütlaç",
      imageUrl:
          "https://cdn.yemek.com/mnresize/940/940/uploads/2015/03/ytk-firin-sutlac-site.jpg",
      ingredients: [
        "Yarım su bardağı pirinç",
        "1 litre süt",
        "1 su bardağı toz şeker",
        "1 paket vanilin şeker (5 gram)",
        "2 yemek kaşığı pirinç unu",
        "1 yemek kaşığı nişasta",
      ],
      prepare: """
1. Pirinci yıkayın ve süzün.
2. Süt, toz şeker, vanilin şeker, pirinç unu ve nişastayı bir tencereye alın.
3. Karışımı sürekli karıştırarak kaynamaya bırakın.
4. Kaynamaya başlayan karışıma yıkanmış pirinci ekleyin.
5. Orta ateşte karışım koyu bir kıvam alana kadar sürekli karıştırarak pişirin.
6. Koyu bir kıvama geldiğinde ocaktan alın ve kaselere paylaştırın.
7. Sütlaçları soğuduktan sonra buzdolabında bir süre bekletip servis yapın.
""",
    ),
    Meal(
      id: "5",
      categoryId: "3",
      name: "Karnıyarık",
      imageUrl:
          "https://cdn.yemek.com/mnresize/940/940/uploads/2014/10/karniyarik-yemekcom.jpg",
      ingredients: [
        "3 adet patlıcan",
        "300 gr kıyma",
        "2 adet yeşil biber",
        "1 adet soğan",
        "2 adet domates",
        "2 diş sarımsak",
        "Tuz",
        "Karabiber",
        "Kimyon",
        "Sıvı yağ",
      ],
      prepare: """
1. Patlıcanları alacalı soyup, uzunlamasına ortadan ikiye kesin.
2. Tuzlu suda bir süre bekletin, ardından iyice yıkayarak suyunu süzün.
3. Bir tavada sıvı yağı kızdırın ve patlıcanları her iki tarafını da kızartın.
4. Kıymayı bir tavada kavurun.
5. Soğanı ince doğrayıp kıymaya ekleyin, pembeleşene kadar kavurun.
6. Yeşil biberleri ve sarımsakları ekleyin, karıştırın.
7. Kabuklarını soyup doğradığınız domatesleri ekleyin, tuz ve baharatları da ekleyerek karıştırın.
8. Kızarmış patlıcanların içine hazırladığınız harçtan koyun.
9. Fırın tepsisine dizip önceden ısıtılmış 180 derece fırında üzeri kızarana kadar pişirin.
Afiyet olsun!
""",
    ),
    Meal(
      id: "6",
      categoryId: "3",
      name: "Patates Köftesi",
      imageUrl:
          "https://cdn.yemek.com/mnresize/940/940/uploads/2015/01/patates-koftesi-yeni.jpg",
      ingredients: [
        "4 adet orta boy patates",
        "2 yemek kaşığı un",
        "1 yumurta",
        "1 çay bardağı sıvı yağ",
        "Tuz",
        "Karabiber",
        "Pul biber",
        "Maydanoz",
      ],
      prepare: """
1. Patatesleri haşlayın, soyup püre haline getirin.
2. Püreye un, yumurta, sıvı yağ, tuz ve baharatları ekleyin.
3. Karışımı yoğurun, üzerine ince doğranmış maydanozu ekleyin ve tekrar yoğurun.
4. Harçtan ceviz büyüklüğünde parçalar koparıp yuvarlayarak köfte şekli verin.
5. Hazırladığınız patates köftelerini servis tabağına alın.
6. Dilerseniz üzerine yoğurt veya sos ekleyerek servis yapabilirsiniz.
Afiyet olsun!
""",
    ),
    Meal(
      id: "7",
      categoryId: "4",
      name: "Baklava",
      imageUrl:
          "https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/5b3a4f1ef35536dd44ed1a64ed55f2f2/Derivates/78efec556a9f9d444cae9fac03247ba34195c621.jpg",
      ingredients: [
        "Yufka",
        "200 gr tereyağı",
        "2 su bardağı dövülmüş ceviz içi",
        "2 su bardağı dövülmüş fındık içi",
        "2 su bardağı toz şeker",
        "1 paket vanilin şeker (5 gram)",
        "1 çay bardağı su",
      ],
      prepare: """
1. Yufkaları tezgahın üzerine serin.
2. Eritilmiş tereyağı ile her yufkayı yağlayın.
3. Yağlanmış yufkaları üst üste koyun.
4. Üst üste koyduğunuz yufkaların üzerine ceviz ve fındık içini serpiştirin.
5. En üst kata yine yağ sürün.
6. Hazırladığınız baklava hamurunu dilimleyin.
7. Dilimlenmiş baklavaları önceden ısıtılmış 180 derece fırında kızarana kadar pişirin.
8. Şekerli suyu ocakta kaynatın.
9. Fırından çıkan sıcak baklavaların üzerine sıcak şekerli suyu dökün.
10. Şerbeti çekmesi için bir süre dinlendirin.
11. Soğuduktan sonra dilimleyerek servis yapın.
Afiyet olsun!
""",
    ),
    Meal(
      id: "8",
      categoryId: "2",
      name: "Paçanga Böreği",
      imageUrl:
          "https://i.lezzet.com.tr/images-xxlarge-recipe/pacanga_boregi-69450364-faae-4863-be1d-34dc5cd7c1ed.jpg",
      ingredients: [
        "Yufka",
        "Pastırma",
        "Sucuk",
        "Kaşar peyniri",
        "2 adet yeşil biber",
        "2 adet domates",
        "1 su bardağı sıvı yağ",
      ],
      prepare: """
1. Yufkaları tezgahın üzerine serin.
2. Yufkaların arasına sıvı yağ sürün.
3. İlk yufkayı fırın tepsisine serin.
4. Üzerine pastırmayı yerleştirin.
5. İkinci yufkayı serin ve üzerine sucukları yerleştirin.
6. Üçüncü yufkayı serin ve üzerine rendelenmiş kaşar peynirini serpin.
7. Yeşil biber ve domatesi doğrayıp peynirin üzerine serin.
8. Kalan yufkaları sıvı yağ ile aralarına sürerek üst üste kapatın.
9. En üste sıvı yağ sürün ve dilimleyerek önceden ısıtılmış 180 derece fırında kızarana kadar pişirin.
10. Dilimleyerek servis yapın.
Afiyet olsun!
""",
    ),
    Meal(
      id: "9",
      categoryId: "1",
      name: "Yoğurtlu Peynir Ezme",
      imageUrl:
          "https://i.lezzet.com.tr/images-xxlarge-recipe/yogurtlu-peynir-ezme-0adebcb5-264d-4138-9a5f-ef7ae5978f38.jpg",
      ingredients: [
        "Beyaz peynir",
        "Yoğurt",
        "Sarımsak",
        "Tuz",
        "Zeytinyağı",
        "Nane",
        "Pul biber",
      ],
      prepare: """
1. Beyaz peyniri bir kaba rendeleyin.
2. Üzerine yoğurdu ekleyin ve karıştırın.
3. Sarımsakları ezerek karışıma ekleyin.
4. Tuz ve zeytinyağını da ekleyip karıştırın.
5. Servis tabağına alın, üzerine nane ve pul biber serpiştirin.
6. İsteğe bağlı olarak zeytinyağı gezdirerek servis yapın.
Afiyet olsun!
""",
    ),
    Meal(
        id: "10",
        categoryId: "5",
        name: "Haydari",
        imageUrl:
            "https://i.lezzet.com.tr/images-xxlarge/haydari-362402fa-8bb5-4eb8-88df-fb4319f51c33",
        ingredients: [
          "1 su bardağı yoğurt",
          "Yarım su bardağı lor peyniri",
          "1 diş sarımsak (isteğe bağlı)",
          "Yarım çay bardağı zeytinyağı",
          "Tuz",
          "Nane (isteğe bağlı)",
          "Dereotu (isteğe bağlı)",
        ],
        prepare: """
1. Yoğurdu bir kaseye alın.
2. Üzerine lor peyniri ekleyin ve karıştırın.
3. Sarımsak rendesi ekleyin (isteğe bağlı).
4. Zeytinyağını ekleyin ve karıştırın.
5. Tuz ekleyin ve tekrar karıştırın.
6. İsteğe bağlı olarak üzerine nane ve dereotu ekleyebilirsiniz.
7. Haydariyi bir servis tabağına alın.
8. Soğuk servis yapın ve afiyetle tüketin.
"""),
  ];
});
