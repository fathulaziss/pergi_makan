import 'package:pergi_makan/shared/constants/assets.dart';
import 'package:pergi_makan/shared/models/model_destination.dart';
import 'package:pergi_makan/shared/models/model_food.dart';

List<ModelDestination> listDestination = <ModelDestination>[
  ModelDestination(
    name: 'Menara Pandang Banjarmasin',
    location:
        'Jl. Kapten Piere Tendean, Kec. Banjarmasin Tengah, Kota Banjarmasin, ',
    locationDetail:
        'Jl. Kapten Piere Tendean, Gadang, No 7  Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70123',
    image: AppImages.imgDestination1,
    imageDetail: AppImages.imgDestinationDetail1,
    tags: [
      'Soto Banjar',
      'Lontong Orani',
      'Patin Baubar',
      'Sate Tulang',
      'Gangan Pailat',
      'Mandai',
      'Sop Mutiara',
      'Bubur Baayak',
    ],
    foods: <ModelFood>[
      ModelFood(
        name: 'Soto Pahlawan',
        location:
            'Jl. Pahlawan, Seberang Mesjid, Kec. Banjarmasin Tengah, Kota Banjarmasin,',
        image: AppImages.imgFoodDestination1a,
      ),
      ModelFood(
        name: 'Soto Kuwin Jaya',
        location:
            'Jl. Brigjen Katamso, Kertak Baru Ilir, Kec. Banjarmasin Tengah, Kota Banjarmasin,',
        image: AppImages.imgFoodDestination1b,
      ),
      ModelFood(
        name: 'Soto Banjar H. Anang Ayam Bapukah',
        location:
            'Jl. Pekapuran A No.2, Sungai Baru, Kec. Banjarmasin Tengah, Kota Banjarmasin,',
        image: AppImages.imgFoodDestination1c,
      ),
    ],
  ),
  ModelDestination(
    name: 'Museum Waska',
    location:
        'Jl. Kampung Kenanga, Sungai Jingah, Kec. Banjarmasin Utara, Kota Banjarmasin,',
    locationDetail:
        'Jl. Kampung Kenanga, Sungai Jingah, Kec. Banjarmasin Utara, Kota Banjarmasin, Kalimantan Selatan 70122',
    image: AppImages.imgDestination2,
    imageDetail: AppImages.imgDestinationDetail2,
    tags: [
      'Soto Banjar',
      'Lontong Orani',
      'Patin Baubar',
      'Sate Tulang',
      'Gangan Pailat',
      'Mandai',
      'Sop Mutiara',
      'Bubur Baayak',
    ],
    foods: <ModelFood>[
      ModelFood(
        name: 'Soto Bang Amat',
        location:
            'Jl. Banua Anyar No.6, Benua Anyar, Kec. Banjarmasin Tim., Kota Banjarmasin,',
        image: AppImages.imgFoodDestination2a,
      ),
      ModelFood(
        name: 'Depot Soto Banjar Spesial Kambang Kenanga',
        location:
            'Jl. Banua Anyar, Benua Anyar, Kec. Banjarmasin Tim., Kota Banjarmasin,',
        image: AppImages.imgFoodDestination2b,
      ),
    ],
  ),
  ModelDestination(
    name: 'Kampung Biru dan Kampung Hijau',
    location: 'Kampung Melayu, Kec. Banjarmasin Tengah,',
    locationDetail:
        'Kampung Melayu, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70121',
    image: AppImages.imgDestination3,
    imageDetail: AppImages.imgDestinationDetail3,
    tags: [
      'Soto Banjar',
      'Lontong Orani',
      'Patin Baubar',
      'Sate Tulang',
      'Gangan Pailat',
      'Mandai',
      'Sop Mutiara',
      'Bubur Baayak',
    ],
    foods: <ModelFood>[
      ModelFood(
        name: 'Soto Apung',
        location:
            'Kampung Melayu, laut, Kota Banjarmasin, Kalimantan Selatan 70121',
        image: AppImages.imgFoodDestination3a,
      ),
      ModelFood(
        name: 'Depot Soto Banjar Spesial Kambang Kenanga',
        location:
            'Jl. Kp. Melayu Darat No.19, RT. 10, Melayu, Kec. Banjarmasin Tengah,',
        image: AppImages.imgFoodDestination3b,
      ),
    ],
  ),
  ModelDestination(
    name: 'Makam Surgi Mufti / Makam Syekh Jamaluddin Al-Banjari',
    location: ' Jl. Sungai Jingah, Surgi Mufti, Kec. Banjarmasin Tengah,',
    locationDetail:
        'Kampung Melayu, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70121',
    image: AppImages.imgDestination4,
    imageDetail: AppImages.imgDestinationDetail4,
    tags: [
      'Soto Banjar',
      'Lontong Orani',
      'Patin Baubar',
      'Sate Tulang',
      'Gangan Pailat',
      'Mandai',
      'Sop Mutiara',
      'Bubur Baayak',
    ],
    foods: <ModelFood>[
      ModelFood(
        name: 'Soto Yana Yani',
        location:
            'Jl. Sungai Jingah, Sungai Jingah, Kec. Banjarmasin Utara, Kota Banjarmasin,',
        image: AppImages.imgFoodDestination4a,
      ),
      ModelFood(
        name: 'Soto Banjar Mama Sulthan',
        location:
            'Jl. Sultan Adam No.10, Surgi Mufti, Kec. Banjarmasin Utara, Kota Banjarmasin,',
        image: AppImages.imgFoodDestination4b,
      ),
      ModelFood(
        name: 'Soto Adi Kuin Ayam Kampung',
        location:
            'Jl. Sultan Adam No.13, Surgi Mufti, Kec. Banjarmasin Utara, Kota Banjarmasin,',
        image: AppImages.imgFoodDestination4c,
      ),
    ],
  )
];
