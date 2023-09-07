import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconfide/gen/assets.gen.dart';
import 'package:iconfide/l10n/locale_keys.g.dart';
import 'package:iconfide/src/config/constant.dart';
import 'package:iconfide/src/config/screen.dart';
import 'package:iconfide/src/config/theme/colors.dart';
import 'package:iconfide/src/features/subscription/widget/payment_method_card.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  bool _isSubExpanded = false;
  bool _isPayExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.back_text.tr()),
      ),
      body: SingleChildScrollView(
        // padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpansionPanelList(
              elevation: 0,
              expandedHeaderPadding: EdgeInsets.zero,
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _isSubExpanded = !_isSubExpanded;
                });
              },
              children: [
                ExpansionPanel(
                  backgroundColor: UIColors.white,
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return const ListTile(
                      title: Text(
                        'Subscription Summary',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppConstants.kFontSizeL,
                        ),
                      ),
                    );
                  },
                  body: _isSubExpanded
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: SizedBox(
                            width: AppScreens.width,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          'Amount',
                                          style: TextStyle(
                                            fontSize: AppConstants.kFontSizeL,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Text(
                                          'IDR 150.000',
                                          style: TextStyle(
                                            fontSize: AppConstants.kFontSizeL,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          'Interval',
                                          style: TextStyle(
                                            fontSize: AppConstants.kFontSizeL,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Text(
                                          '1 Month',
                                          style: TextStyle(
                                            fontSize: AppConstants.kFontSizeL,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      : Container(),
                  isExpanded: _isSubExpanded,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ExpansionPanelList(
              elevation: 0,
              expandedHeaderPadding: EdgeInsets.zero,
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _isPayExpanded = !_isPayExpanded;
                });
              },
              children: [
                ExpansionPanel(
                  backgroundColor: UIColors.white,
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return const ListTile(
                      title: Text(
                        'Payment Method',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppConstants.kFontSizeL,
                        ),
                      ),
                    );
                  },
                  body: _isPayExpanded
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: SizedBox(
                            width: AppScreens.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Credit/ Debit Card',
                                        style: TextStyle(
                                          fontSize: AppConstants.kFontSizeM,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Wrap(
                                        runSpacing: 10,
                                        spacing: 10,
                                        children: [
                                          PaymentMethodCard(
                                            imgUrl: Assets.images.credit.path,
                                          ),
                                          PaymentMethodCard(
                                            imgUrl: Assets.images.visa.path,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'E-Wallet',
                                        style: TextStyle(
                                          fontSize: AppConstants.kFontSizeM,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Wrap(
                                        runSpacing: 10,
                                        spacing: 10,
                                        children: [
                                          PaymentMethodCard(
                                            imgUrl: Assets.images.dana.path,
                                          ),
                                          PaymentMethodCard(
                                            imgUrl:
                                                Assets.images.shopeepay.path,
                                          ),
                                          PaymentMethodCard(
                                            imgUrl: Assets.images.linkaja.path,
                                          ),
                                          PaymentMethodCard(
                                            imgUrl: Assets.images.ovo.path,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Container(),
                  isExpanded: _isPayExpanded,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
