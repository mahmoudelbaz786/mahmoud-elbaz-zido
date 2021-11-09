import 'package:flutter/material.dart';
import 'package:zido/bloc/language_bloc/lang_bloc.dart';
import 'package:zido/bloc/language_bloc/lang_event.dart';
import 'package:zido/localization/app_localizations.dart';
import 'package:zido/localization/constains.dart';

import 'package:zido/resources/app_color.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:zido/resources/app_images.dart';
import 'package:zido/widgets/header_row.dart';
import 'package:zido/widgets/latest_items.dart';
import 'package:zido/widgets/latest_post.dart';
import 'package:zido/widgets/private_account.dart';

import '../main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.Moov,
          centerTitle: true,
          title:  Text('Zido'),
          leading:  Padding(
            padding: EdgeInsets.all(8.0),
            child: InkWell(

              child: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  setState(() {
                    print(MyApp.lang);
                    LanguageBloc languageBloc = BlocProvider.of<LanguageBloc>(context);

                      languageBloc.add(ChangeLanguage(lang:LanguageBloc.Arabic));
                    }



                  );
                },
              ),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: InkWell(

                child: Icon(
                  Icons.notification_important_rounded,
                  color: AppColor.White,
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              buildImageSlideshow()





            ,
              buildHeaderPadding(context),
              latestItems(context),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
                child: HeaderRow(AppLocalizations.of(context)!.translate(KMzad)!,),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                child: ListView(shrinkWrap: true, children: [
                  PrivateAccount('Join', false),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: PrivateAccount('Pending', true),
                  ),
                ]),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
                child: HeaderRow(AppLocalizations.of(context)!.translate(KLastPosts)!),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.23,
                child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: const [LatestPost(), LatestPost(), LatestPost()]),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container latestItems(BuildContext context) {
    return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.40,
              child: ListView(
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: LatestItems(),
                    ),
                    LatestItems(),
                    LatestItems(),
                    LatestItems(),
                  ]),
            );
  }

  Padding buildHeaderPadding(BuildContext context) {
    return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
              child: HeaderRow(
                  AppLocalizations.of(context)!.translate(kLatestItems)),
            );
  }

  ImageSlideshow buildImageSlideshow() {
    return ImageSlideshow(
            width: double.infinity,
            height: 110,
            initialPage: 0,
            indicatorColor: Colors.blue,
            children: [
              Image.asset(
                AppImages.SliderImage,
                fit: BoxFit.cover,
              ),
              Image.asset(
                AppImages.SliderImage,
                fit: BoxFit.cover,
              ),
              Image.asset(
                AppImages.SliderImage,
                fit: BoxFit.cover,
              ),
            ]);
  }
}
