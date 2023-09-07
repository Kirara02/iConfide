import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconfide/src/config/theme/colors.dart';

class UXInputSelectForm extends StatelessWidget {
  final List<String> options;
  final String? value;
  final ValueChanged<dynamic> onChanged;

  const UXInputSelectForm({
    Key? key,
    required this.options,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<dynamic>(
      value: value,
      items: options.map((option) {
        return DropdownMenuItem<String>(
          value: option,
          child: Text(
            option.toString(),
          ),
        );
      }).toList(),
      onChanged: onChanged,
      icon: Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Icon(
          CupertinoIcons.chevron_down,
          size: 20,
          color: AppColors.primaryColors,
        ),
      ),
      isExpanded: true,
      decoration: InputDecoration(
        hintText: 'Select your problem',
        prefixIcon: Icon(
          Icons.location_on_outlined,
          color: AppColors.primaryColors,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        filled: true,
        fillColor: UIColors.grey_20,
        contentPadding: const EdgeInsets.only(
          left: 10,
          top: 10,
          bottom: 10,
        ),
      ),
    );
  }
}
