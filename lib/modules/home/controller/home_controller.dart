import 'package:al_hadith_app/modules/home/models/hadit_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final hadit = <HaditModel>[
    HaditModel(
      id: 1,
      haditBookName: 'সহিহ বুখারী',
      haditBookWriter: 'ইমাম বুখারী',
      haditCount: '৭৫৬৩',
    ),
    HaditModel(
      id: 2,
      haditBookName: 'সহিহ মুসলিম',
      haditBookWriter: 'ইমাম মুসলিম',
      haditCount: '৭৪৫৩',
    ),
    HaditModel(
      id: 3,
      haditBookName: 'সুনানে আন-নাসায়ী',
      haditBookWriter: 'ইমাম নাসায়ী',
      haditCount: '৫৭৫৮',
    ),
    HaditModel(
      id: 4,
      haditBookName: 'সুনানে আবু দাউদ',
      haditBookWriter: 'ইমাম আবু দাউদ',
      haditCount: '৫২৭৪',
    ),
  ].obs;
  var items = <String>[
    '''“আবূ হুরাইরাহ (রাঃ) হতে বর্ণিত। নবী সাল্লাল্লাহু আলাইহি ওয়াসাল্লাম বলেছেন, ঈমানের ষাটেরও অধিক শাখা আছে। আর লজ্জা হচ্ছে ঈমানের একটি শাখা।”\n\n বুখারী''',
    '''“ মুহাম্মদ ইবন ইউসুফ (রহঃ) ... ইবন মাস’উদ (রাঃ) থেকে বর্ণিত, তিনি বলেন, নবী করীম সাল্লাল্লাহু আলাইহি ওয়াসাল্লাম আমাদের অবস্থার প্রতি লক্ষ্য রেখে নির্দিষ্ট দিনে ওয়ায-নসীহত করতেন, আমরা যাতে বিরক্ত না হই।”\n\n বুখারী''',
    '''“ আদম ইবনু আবূ ইয়াস (রহঃ) ... আয়িশা (রাঃ) থেকে বর্ণিত, তিনি বলেনঃ আমি ও নবী সাল্লাল্লাহু আলাইহি ওয়াসাল্লাম একই পাত্রে (কাদাহ) থেকে (পানি নিয়ে) গোসল করতাম। সেই পাত্রকে ফারাক বলা হতো।”\n\n বুখারী''',
  ].obs;
}
