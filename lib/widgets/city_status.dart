import 'package:flutter/material.dart';
import 'package:zido/localization/app_localizations.dart';
import 'package:zido/localization/constains.dart';
import 'package:zido/resources/app_color.dart';

class CityStatus extends StatelessWidget {
  const CityStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.03,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColor.Moov,
              ),
            ),
            child:  Center(
                child: Text(
                  AppLocalizations.of(context)!.translate(kcity)! ,
              style: TextStyle(color: AppColor.Moov,),textAlign: TextAlign.center,
            )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.03,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColor.HeathGreen,
                ),
              ),
              child: Center(
                  child: Text(
                    AppLocalizations.of(context)!.translate(Knew)! ,
                style: TextStyle(color: AppColor.HeathGreen),
              )),
            ),
          )
        ],
      ),
    );
  }
}
