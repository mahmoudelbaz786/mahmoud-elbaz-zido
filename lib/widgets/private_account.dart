import 'package:flutter/material.dart';
import 'package:zido/localization/app_localizations.dart';
import 'package:zido/localization/constains.dart';
import 'package:zido/resources/app_color.dart';
import 'package:zido/resources/app_images.dart';

class PrivateAccount extends StatelessWidget {
  String? status;

  bool isPending;

  PrivateAccount(this.status, this.isPending);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width * 0.042);

    return Flexible(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width * 0.34,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: AppColor.Latest),
        child: Row(
          children: [
            Container(
                width:132,
                child: Image.asset(AppImages.BR)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Padding(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                  child: Text(
                      AppLocalizations.of(context)!.translate(KPrivateRoom)!,
                    maxLines: 2,
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                  child: Row(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        child: Image.asset(AppImages.Avatar),
                      ),
                       Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: Text(
                          AppLocalizations.of(context)!.translate(Kema)!,
                          style: TextStyle(color: AppColor.Moov, fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              color: AppColor.Moov,
                              borderRadius: BorderRadius.circular(6)),
                          child: Image.asset(AppImages.Check),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    '@khadijadosaryongusername',
                    style: TextStyle(fontSize: 10, color: AppColor.GridBar),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      // if (isPending)   Container(
                      //        width:14,
                      //        height:10,
                      //        child: Image.asset(AppImages.Members)),
                      Container(
                        width: 12,
                        height: 14,
                        child: Image.asset(AppImages.Timer),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          '00:10:47',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 55),
                        child: Container(
                          width: 65,
                          height: 25,
                          decoration: BoxDecoration(
                              color:
                                  isPending ? AppColor.HeathGreen : AppColor.Moov,
                              borderRadius: BorderRadius.circular(4)),
                          child: isPending
                              ? const Center(
                                  child: Text(
                                  'Pending',
                                  style: TextStyle(color: AppColor.White),
                                ))
                              :  Center(
                                  child: Text(AppLocalizations.of(context)!.translate(Kjoin)!,
                                      style: TextStyle(color: AppColor.White)),
                                ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
