import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:fruits/core/Utils/Backend_EndPoints.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/services/Shared_preferences.dart';
import 'package:fruits/features/Profile/presentation/views/widgets/CustomProfileActionsItem.dart';
import 'package:fruits/generated/l10n.dart';
import 'package:fruits/main.dart';

class ProfileLanguageToggle extends StatefulWidget {
  const ProfileLanguageToggle({super.key});

  @override
  State<ProfileLanguageToggle> createState() => _ProfileLanguageToggleState();
}

class _ProfileLanguageToggleState extends State<ProfileLanguageToggle> {
  late String languageCode;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final locale = Localizations.localeOf(context);
    languageCode = locale.languageCode;
  }

  @override
  Widget build(BuildContext context) {
    return Customprofileactionsitem(
      image: Assets.assetsImagesLanguageIcon,
      title: S.of(context).language,
      trailing: ToggleButtons(
        isSelected: [languageCode == 'ar', languageCode == 'en'],
        onPressed: (index) async {
          languageCode = index == 0 ? 'ar' : 'en';
          Fruit_Hub.setLocale(context, Locale(languageCode));
          await shared_preferences_Services.stringSetter(
              key: BackendEndpoints.languageCode, value: languageCode);
          setState(() {});
        },
        children: const [
          Text('العربية'),
          Text('English'),
        ],
      ).animate().fadeIn(duration: 300.ms),
    );
  }
}
