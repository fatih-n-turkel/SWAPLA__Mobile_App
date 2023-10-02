import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Swapla/constants/core/app_export.dart';
import 'package:Swapla/ui/mesajlar/presentation/details/widgets/action.dart';
import 'package:Swapla/ui/mesajlar/presentation/details/widgets/category.dart';

import '../../../../constants/core/utils/color_constant.dart';
import '../../../../constants/core/utils/image_constant.dart';
import '../../../../constants/core/utils/math_utils.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.fromHex('#ECE9FF'),
      body: Stack(
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Image.asset(
                ImageConstant.imgUnsplashcfkwe7,
                height: getSize(
                  375,
                ),
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Container(
                width: size.width,
                margin: EdgeInsets.only(
                  top: getVerticalSize(
                    56,
                  ),
                ),
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    20,
                  ),
                  right: getHorizontalSize(
                    20,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        CupertinoIcons.chevron_left,
                        color: ColorConstant.whiteA700,
                        size: 20,
                      ),
                    ),
                    SizedBox(
                      height: getSize(22),
                      width: getSize(22),
                      child: SvgPicture.asset(
                        ImageConstant.imgIconshare,
                        color: Colors.white,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: getSize(
                500,
              ),
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: const EdgeInsets.symmetric(),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(
                  getHorizontalSize(16),
                ))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Aksesuarcılar Kulübü",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.gray900,
                              fontSize: getFontSize(
                                32,
                              ),
                              fontFamily: 'General Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Gap(8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    height: getSize(
                                      14,
                                    ),
                                    width: getSize(
                                      14,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgIconuser,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        2,
                                      ),
                                    ),
                                    child: Text(
                                      "4",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.bluegray400,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'General Sans',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(10),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  SizedBox(
                                    height: getSize(
                                      14,
                                    ),
                                    width: getSize(
                                      14,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgIconeye,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        2,
                                      ),
                                    ),
                                    child: Text(
                                      "2 482",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.bluegray400,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'General Sans',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Gap(10),
                          Text(
                            "Aksesuar çılgınlarının buluştuğu ve çılgınlar gibi takas yaptıkları Aksesuarcılar Kulübü'ne sen de hoşgeldin.🐈💜.",
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.gray900,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'General Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      padding: const EdgeInsets.only(left: 15),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: [
                        {'animal': '🐈', 'text': 'Dekorasyon'},
                        {'animal': '🌿', 'text': 'Bitki'},
                        {'animal': '👾', 'text': 'Takı'}
                      ].map<Widget>((e) => Category(e)).toList()),
                    ),
                    const Gap(15),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                              ColorConstant.fromHex('#ECE9FF'),
                              Colors.grey.shade100
                            ])),
                        child: const ActionList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
