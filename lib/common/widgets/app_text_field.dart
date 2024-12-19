import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:multi_dropdown/multi_dropdown.dart';
import 'package:patel_samaj_app/core/styles/style.dart';

class AppTextField {
  Widget buildTextField(
    TextEditingController controller,
    String label,
    // Function(String) onSaved,
    {
    bool readOnly = false,
    String? hintText,
    int? maxLines,
    double? height,
    bool isNumber = false,
  }) {
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppColors.grey,
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label.isEmpty
            ? const SizedBox.shrink()
            : Text(
                label,
                style: AppTextStyle.bodyText1.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
        label.isEmpty ? const SizedBox.shrink() : SizedBox(height: 8.h),
        Container(
          padding: const EdgeInsets.only(bottom: 15),
          height: height ?? (label.isEmpty ? 60.h : 70.h),
          width: double.infinity,
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              hintText: hintText ?? label,
              border: outlineInputBorder,
              enabledBorder: outlineInputBorder,
              focusedBorder: outlineInputBorder.copyWith(
                borderSide: const BorderSide(
                  color: AppColors.primaryBlue,
                ),
              ),
            ),
            inputFormatters:
                isNumber ? [FilteringTextInputFormatter.digitsOnly] : null,
            readOnly: readOnly,
            scrollPadding: EdgeInsets.zero,
            maxLines: maxLines,
            validator: (value) => value!.isEmpty ? 'Required' : null,
            // onSaved: (value) => onSaved(value!),
          ),
        ),
      ],
    );
  }

  Widget buildMobileNumberInput(
    BuildContext context,
    TextEditingController controller, {
    String label = 'Your Number',
    String hintText = 'Enter your phone number',
    // Function(String) onSubmitted,
  }) {
    ValueNotifier<String> selectedCountryCodeNotifier =
        ValueNotifier<String>('+91'); // Default country code

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTextStyle.heading4),
        SizedBox(height: 0.01.sh),
        SizedBox(
          height: 0.1.sh,
          child: TextFormField(
            controller: controller,
            style: AppTextStyle.bodyText1
                .copyWith(color: AppColors.black, fontSize: 16.sp),
            keyboardType: TextInputType.phone,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            validator: (value) => value!.isEmpty ? 'Required' : null,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              hintText: hintText,
              hintStyle: AppTextStyle.caption,
              prefixIconConstraints: BoxConstraints(maxWidth: 0.25.sw),
              prefixIcon: Row(
                children: [
                  CountryCodePicker(
                    initialSelection: '+91', // Set initial country code to +91
                    showFlag: false,
                    onChanged: (countryCode) {
                      selectedCountryCodeNotifier.value =
                          countryCode.dialCode!; // Update selected country code
                      selectedCountryCodeNotifier.notifyListeners();
                    },
                    textStyle: AppTextStyle.subtitle1,
                  ),
                  SizedBox(
                    height: 0.03.sh,
                    child:
                        const VerticalDivider(width: 4, color: AppColors.black),
                  ),
                ],
              ),
            ),

            // onSubmitted: (_) => _login(context), // Trigger login on enter
          ),
        ),
      ],
    );
  }

  Widget buildDateTextField(
    BuildContext context,
    TextEditingController controller,
    String label, {
    String? hintText,
    int? maxLines,
    double? height,
    bool isReadOnly = false,
    required Function(DateTime) onDateSelected,
  }) {
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppColors.grey,
      ),
    );

    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            label,
            style: AppTextStyle.bodyText1.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8.h),
          Container(
            padding: const EdgeInsets.only(bottom: 15),
            height: height ?? 70.h,
            width: double.infinity,
            child: TextFormField(
              controller: controller,
              readOnly: true,
              decoration: InputDecoration(
                hintText: label,
                border: outlineInputBorder,
                enabledBorder: outlineInputBorder,
                focusedBorder: outlineInputBorder.copyWith(
                  borderSide: const BorderSide(
                    color: AppColors.primaryBlue,
                  ),
                ),
                suffixIcon: isReadOnly
                    ? null
                    : IconButton(
                        onPressed: () async {
                          DateTime? date = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime.now(),
                          );
                          if (date != null) {
                            controller.text =
                                DateFormat('dd-MM-yyyy').format(date);
                            onDateSelected(date);
                          }
                        },
                        icon: const Icon(
                          Icons.calendar_today_outlined,
                          color: AppColors.primaryBlue,
                        ),
                      ),
              ),
              validator: (value) => value!.isEmpty ? 'Required' : null,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMultiDropdown({
    required MultiSelectController<int> controller,
    required List<DropdownItem<int>> items,
    required String label,
    String? hintText,
    bool isSingleSelect = true,
    Function(List<int>)? onSelectionChange,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select $label',
          style: AppTextStyle.bodyText1.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 8.h),
        MultiDropdown<int>(
          items: items,
          controller: controller,
          enabled: true,
          searchEnabled: true,
          chipDecoration: ChipDecoration(
            backgroundColor: AppColors.primaryBlue,
            wrap: true,
            runSpacing: 5,
            spacing: 10,
            labelStyle: AppTextStyle.bodyText1.copyWith(color: AppColors.white),
          ),
          singleSelect: isSingleSelect,
          fieldDecoration: FieldDecoration(
            hintText: hintText ?? '$label Name',
            hintStyle: const TextStyle(color: Colors.black87),
            showClearIcon: false,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Colors.black87,
              ),
            ),
          ),
          dropdownDecoration: DropdownDecoration(
            marginTop: 2,
            maxHeight: 500,
            header: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                'Select $label from the list',
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          dropdownItemDecoration: DropdownItemDecoration(
            selectedIcon:
                const Icon(Icons.check_box, color: AppColors.primaryBlue),
            disabledIcon: Icon(Icons.lock, color: Colors.grey.shade300),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please select a $label';
            }
            return null;
          },
          onSelectionChange: onSelectionChange,
        ),
      ],
    );
  }

  Widget buildRadioField(String label, List<String> options,
      Function(String) onChanged, String groupValue) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(label,
            style:
                AppTextStyle.bodyText1.copyWith(fontWeight: FontWeight.w600)),
        SizedBox(height: 8.h),
        SizedBox(
          height: 70.h,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...options.map((option) => Expanded(
                    child: RadioListTile<String>(
                      title: Text(option, style: AppTextStyle.bodyText1),
                      value: option,
                      groupValue: groupValue,
                      onChanged: (value) => onChanged(value!),
                      contentPadding: EdgeInsets.zero,
                    ),
                  )),
              // Radio(
              //   value: 'Male',
              //   groupValue: widget.member.gender,
              //   onChanged: (value) {
              //     // Handle gender selection
              //   },
              // ),
              // const Text('Male'),
              // SizedBox(width: 20.w),
              // Radio(
              //   value: 'Female',
              //   groupValue: widget.member.gender,
              //   onChanged: (value) {
              //     // Handle gender selection
              //   },
              // ),
              // const Text('Female'),
            ],
          ),
        ),
      ],
    );
  }
}
