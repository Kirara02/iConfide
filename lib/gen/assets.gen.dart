/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Beranda.svg
  SvgGenImage get beranda => const SvgGenImage('assets/icons/Beranda.svg');

  /// File path: assets/icons/class_icon.svg
  SvgGenImage get classIcon => const SvgGenImage('assets/icons/class_icon.svg');

  /// File path: assets/icons/credit.svg
  SvgGenImage get credit => const SvgGenImage('assets/icons/credit.svg');

  /// File path: assets/icons/dana.svg
  SvgGenImage get dana => const SvgGenImage('assets/icons/dana.svg');

  /// File path: assets/icons/link_aja.svg
  SvgGenImage get linkAja => const SvgGenImage('assets/icons/link_aja.svg');

  /// File path: assets/icons/ovo.svg
  SvgGenImage get ovo => const SvgGenImage('assets/icons/ovo.svg');

  /// File path: assets/icons/private_chat.svg
  SvgGenImage get privateChat =>
      const SvgGenImage('assets/icons/private_chat.svg');

  /// File path: assets/icons/search.svg
  SvgGenImage get search => const SvgGenImage('assets/icons/search.svg');

  /// File path: assets/icons/shopee_pay.svg
  SvgGenImage get shopeePay => const SvgGenImage('assets/icons/shopee_pay.svg');

  /// File path: assets/icons/shopping_cart.svg
  SvgGenImage get shoppingCart =>
      const SvgGenImage('assets/icons/shopping_cart.svg');

  /// File path: assets/icons/video.svg
  SvgGenImage get video => const SvgGenImage('assets/icons/video.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        beranda,
        classIcon,
        credit,
        dana,
        linkAja,
        ovo,
        privateChat,
        search,
        shopeePay,
        shoppingCart,
        video
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/User1.png
  AssetGenImage get user1 => const AssetGenImage('assets/images/User1.png');

  /// File path: assets/images/User2.png
  AssetGenImage get user2 => const AssetGenImage('assets/images/User2.png');

  /// File path: assets/images/User3.png
  AssetGenImage get user3 => const AssetGenImage('assets/images/User3.png');

  /// File path: assets/images/banner.png
  AssetGenImage get banner => const AssetGenImage('assets/images/banner.png');

  /// File path: assets/images/banner_image.png
  AssetGenImage get bannerImage =>
      const AssetGenImage('assets/images/banner_image.png');

  /// File path: assets/images/user_icon_female.png
  AssetGenImage get userIconFemale =>
      const AssetGenImage('assets/images/user_icon_female.png');

  /// File path: assets/images/user_icon_male.png
  AssetGenImage get userIconMale =>
      const AssetGenImage('assets/images/user_icon_male.png');

  /// File path: assets/images/user_icon_male_2.png
  AssetGenImage get userIconMale2 =>
      const AssetGenImage('assets/images/user_icon_male_2.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        user1,
        user2,
        user3,
        banner,
        bannerImage,
        userIconFemale,
        userIconMale,
        userIconMale2
      ];
}

class $AssetsL10nGen {
  const $AssetsL10nGen();

  /// File path: assets/l10n/en.json
  String get en => 'assets/l10n/en.json';

  /// File path: assets/l10n/id.json
  String get id => 'assets/l10n/id.json';

  /// List of all assets
  List<String> get values => [en, id];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/liquid-loading.json
  LottieGenImage get liquidLoading =>
      const LottieGenImage('assets/lottie/liquid-loading.json');

  /// File path: assets/lottie/notFound.json
  LottieGenImage get notFound =>
      const LottieGenImage('assets/lottie/notFound.json');

  /// File path: assets/lottie/onboard1.json
  LottieGenImage get onboard1 =>
      const LottieGenImage('assets/lottie/onboard1.json');

  /// File path: assets/lottie/onboard2.json
  LottieGenImage get onboard2 =>
      const LottieGenImage('assets/lottie/onboard2.json');

  /// File path: assets/lottie/onboard3.json
  LottieGenImage get onboard3 =>
      const LottieGenImage('assets/lottie/onboard3.json');

  /// File path: assets/lottie/under-contruction.json
  LottieGenImage get underContruction =>
      const LottieGenImage('assets/lottie/under-contruction.json');

  /// List of all assets
  List<LottieGenImage> get values =>
      [liquidLoading, notFound, onboard1, onboard2, onboard3, underContruction];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsL10nGen l10n = $AssetsL10nGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class LottieGenImage {
  const LottieGenImage(this._assetName);

  final String _assetName;

  LottieBuilder lottie({
    Animation<double>? controller,
    bool? animate,
    FrameRate? frameRate,
    bool? repeat,
    bool? reverse,
    LottieDelegates? delegates,
    LottieOptions? options,
    void Function(LottieComposition)? onLoaded,
    LottieImageProviderFactory? imageProviderFactory,
    Key? key,
    AssetBundle? bundle,
    Widget Function(BuildContext, Widget, LottieComposition?)? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    double? width,
    double? height,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    String? package,
    bool? addRepaintBoundary,
    FilterQuality? filterQuality,
    void Function(String)? onWarning,
  }) {
    return Lottie.asset(
      _assetName,
      controller: controller,
      animate: animate,
      frameRate: frameRate,
      repeat: repeat,
      reverse: reverse,
      delegates: delegates,
      options: options,
      onLoaded: onLoaded,
      imageProviderFactory: imageProviderFactory,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      package: package,
      addRepaintBoundary: addRepaintBoundary,
      filterQuality: filterQuality,
      onWarning: onWarning,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
