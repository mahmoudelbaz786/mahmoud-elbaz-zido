import 'package:flutter/material.dart';
import 'package:zido/localization/app_localizations.dart';
import 'package:zido/localization/constains.dart';
import 'package:zido/resources/app_color.dart';
import 'package:zido/resources/app_images.dart';

import 'city_status.dart';

class LatestItems extends StatelessWidget {
  const LatestItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width * 0.07);
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      height: MediaQuery.of(context).size.height * 0.40,
      decoration: BoxDecoration(
          color: AppColor.Latest, borderRadius: BorderRadius.circular(4)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Stack(children: [
              Image.asset(
                AppImages.Car,
                width: MediaQuery.of(context).size.width * 0.45,
                fit: BoxFit.cover,
              ),
              Positioned(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.03,
                top: MediaQuery.of(context).size.width * 0.36,
                child: GridTileBar(
                  title: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 33),
                    child: Text('36 : 21 : 36'),
                  ),
                  backgroundColor: AppColor.GridBar,
                ),
              ),
              Positioned(
                right: MediaQuery.of(context).size.width * 0.03,
                top: MediaQuery.of(context).size.width * 0.02,
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.07,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                        color: AppColor.White,
                        borderRadius: BorderRadius.circular(4)),
                    child: Image.asset(AppImages.Fav)),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: buildPriceRow(context),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    AppLocalizations.of(context)!.translate(kProductDec)!,
                    style: TextStyle(
                      fontSize: 10,
                      color: AppColor.GrayPrimary,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
          CityStatus()
        ],
      ),
    );
  }

  Row buildPriceRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "12000",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: Flexible(
            child: Text(
              AppLocalizations.of(context)!.translate(kSear)!,
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ],
    );
  }
}
