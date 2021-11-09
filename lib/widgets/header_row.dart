import 'package:flutter/material.dart';
import 'package:zido/localization/app_localizations.dart';
import 'package:zido/localization/constains.dart';
import 'package:zido/resources/app_color.dart';

class HeaderRow extends StatelessWidget {
  late String? header;

  HeaderRow(this.header);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(header!,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
         Text(
          AppLocalizations.of(context)!.translate(kSeeAll)!,
          style: TextStyle(
              fontSize: 12, color: AppColor.Moov, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
