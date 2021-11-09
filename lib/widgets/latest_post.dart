import 'package:flutter/material.dart';
import 'package:zido/localization/app_localizations.dart';
import 'package:zido/localization/constains.dart';
import 'package:zido/resources/app_color.dart';
import 'package:zido/resources/app_images.dart';

class LatestPost extends StatelessWidget {
  const LatestPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('psts');
    print(MediaQuery.of(context).size.height * 0.23);
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.height * 0.23,
      child: Stack(children: [
        Image.asset(AppImages.Holder),
         Flexible(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 8),
            child: Text(AppLocalizations.of(context)!.translate(KPostsImage)!
             ,
              maxLines: 3,
              style: TextStyle(
                  color: AppColor.White,
                  fontWeight: FontWeight.w700,
                  fontSize: 10),
            ),
          ),
        ),
        Positioned(
          bottom: 40,
          child: Row(children: [
            Container(
                width: 25,
                height: 25,
                child: Image.asset(AppImages.Smily)),
            Column(children: [
              Text(AppLocalizations.of(context)!.translate(KNatalia)!,style: TextStyle(fontSize: 12,color: AppColor.White),),
              Text('@natalia_sanzzid',style: TextStyle(fontSize: 12,color: AppColor.White)),
            ],)
          ],),
        )
      ]),
    );
  }
}
