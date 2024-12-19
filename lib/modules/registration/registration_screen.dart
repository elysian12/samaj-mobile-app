import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:multi_dropdown/multi_dropdown.dart';
import 'package:patel_samaj_app/common/utils/string_extension.dart';
import 'package:patel_samaj_app/common/utils/ui_utils.dart';
import 'package:patel_samaj_app/common/widgets/app_button.dart';
import 'package:patel_samaj_app/common/widgets/app_text_field.dart';
import 'package:patel_samaj_app/core/styles/style.dart';
import 'package:patel_samaj_app/data/di/service_locator.dart';
import 'package:patel_samaj_app/data/models/member_model.dart';
import 'package:patel_samaj_app/router/app_router.dart';
import 'package:patel_samaj_app/router/app_router.gr.dart';

enum OccupationType { job, business }

class OccupationControllers {
  String professionalType = 'Job';
  final nameController = TextEditingController();
  final nameGujController = TextEditingController();
  final occupationTypeController = TextEditingController();
  final addressController = [TextEditingController()];
  final occupationPosterUrlController = TextEditingController();
}

@RoutePage()
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> with UiUtils {
  ValueNotifier<int> currentStep = ValueNotifier(0);

  final nameController = TextEditingController();
  final nameGujController = TextEditingController();
  final fatherHusbandNameController = TextEditingController();
  final fatherHusbandNameGujController = TextEditingController();
  final grandfatherFatherInLawNameController = TextEditingController();
  final grandfatherFatherInLawNameGujController = TextEditingController();
  final surnameController = TextEditingController();
  final surnameGujController = TextEditingController();
  final familySakhController = TextEditingController();
  final familySakhGujController = TextEditingController();
  final birthDateController = TextEditingController();
  final mobileNoController = TextEditingController();
  final emailIdController = TextEditingController();
  final pragatiMandalGujController = TextEditingController();

  final bloodGroupController = MultiSelectController<int>();
  final maritalStatusController = MultiSelectController<int>();
  final cityController = MultiSelectController<int>();
  final countryController = MultiSelectController<int>();
  final nativeVillageController = MultiSelectController<int>();
  final mosalVillageController = MultiSelectController<int>();
  final maternalVillageController = MultiSelectController<int>();
  final pragatiMandalController = MultiSelectController<int>();

  final skinColorController = MultiSelectController<int>();
  final heightController = TextEditingController();
  final weightController = TextEditingController();
  final hobbiesController = TextEditingController();
  final physicalStatusController = TextEditingController();
  final selfIncomeController = TextEditingController();
  final aboutSelfController = TextEditingController();
  final expectationController = TextEditingController();

  final List<TextEditingController> residentAddressControllers = [TextEditingController()];
  final List<OccupationControllers> occupationControllers = [];

  final ValueNotifier<String?> _gender = ValueNotifier(null);
  bool? _isPlanningToGetMarried;

  final List<String> bloodGroupsList = ['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'];
  final List<String> maritalStatusList = ['Single', 'Married', 'Divorced', 'Widowed'];
  final List<String> skinToneList = ['Fair', 'Medium', 'Dark'];
  Member? _memberModel;

  ValueNotifier<Uint8List?> imageData = ValueNotifier(null);
  Function(Uint8List?) onImagePicked = (Uint8List? image) {};

  Widget buildResidentAddressFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Resident Address',
              style: AppTextStyle.heading4.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  residentAddressControllers.add(TextEditingController());
                });
              },
              child: Text(
                '+ Add Address',
                style: AppTextStyle.bodyText2.copyWith(
                  color: AppColors.primaryPurple,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        ...residentAddressControllers.asMap().entries.map((entry) {
          TextEditingController controller = entry.value;
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: AppTextField().buildTextField(
                  controller,
                  entry.key == 0 ? '' : 'Resident Address ${entry.key + 1}',
                  hintText: 'Resident Address',
                ),
              ),
              residentAddressControllers.length > 1
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          residentAddressControllers.removeAt(entry.key);
                        });
                      },
                      icon: const Icon(Icons.delete),
                    )
                  : const SizedBox.shrink(),
            ],
          );
        }),
        SizedBox(height: 16.h),
      ],
    );
  }

  Widget buildOccupationFields() {
    List<String> occupationTypes = OccupationType.values.map((e) => e.name.capitalize()).toList();
    final occupationTypesController = MultiSelectController<int>();
    Uint8List? imageData;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Occupation',
              style: AppTextStyle.heading4.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  occupationControllers.add(OccupationControllers());
                });
              },
              child: Text(
                '+ Add Occupation',
                style: AppTextStyle.bodyText2.copyWith(
                  color: AppColors.secondaryPurple,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16.h),
        ...occupationControllers.asMap().entries.map((entry) {
          int idx = entry.key;
          var controller = entry.value;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (idx != 0)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Occupation ${idx + 1}',
                          style: AppTextStyle.heading4.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.remove_circle_outline, color: Colors.red),
                          onPressed: () {
                            setState(() {
                              occupationControllers.removeAt(idx);
                            });
                          },
                        )
                      ],
                    ),
                    SizedBox(height: 8.h),
                  ],
                ),
              Row(
                children: [
                  Expanded(
                    child: AppTextField().buildRadioField(
                      'What is your current professional status?',
                      occupationTypes,
                      (v) {
                        setState(() {
                          controller.professionalType = v;
                        });
                      },
                      controller.professionalType,
                    ),
                  ),
                ],
              ),
              AppTextField().buildTextField(
                controller.nameController,
                controller.professionalType == 'Job' ? 'Job Name' : 'Business Name',
              ),
              AppTextField().buildTextField(
                controller.nameGujController,
                controller.professionalType == 'Job' ? 'Job Name in Gujarati' : 'Business Name in Gujarati',
              ),
              AppTextField().buildMultiDropdown(
                controller: occupationTypesController,
                isSingleSelect: false,
                items: [DropdownItem(label: 'Engineer', value: 0), DropdownItem(label: 'Doctor', value: 1)],
                label: controller.professionalType == 'Job' ? 'Job Title' : 'Business/Occupation Type',
              ),
              SizedBox(height: 16.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        controller.professionalType == 'Job' ? 'Job Address' : 'Business Address',
                        style: AppTextStyle.heading4.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            controller.addressController.add(TextEditingController());
                          });
                        },
                        child: Text(
                          '+ Add Address',
                          style: AppTextStyle.bodyText2.copyWith(
                            color: AppColors.secondaryPurple,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  ...controller.addressController.asMap().entries.map((entry) {
                    TextEditingController addressController = entry.value;
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: AppTextField().buildTextField(
                            addressController,
                            entry.key == 0 ? '' : (controller.professionalType == 'Job' ? 'Job Address ${entry.key + 1}' : 'Business Address ${entry.key + 1}'),
                          ),
                        ),
                        controller.addressController.length > 1
                            ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    controller.addressController.removeAt(entry.key);
                                  });
                                },
                                icon: const Icon(Icons.delete),
                              )
                            : const SizedBox.shrink(),
                      ],
                    );
                  }),
                ],
              ),
              uploadFileContainer(
                onPickedImage: (imageData) => setState(() => imageData = imageData),
                label: controller.professionalType == 'Job' ? 'Job/Family Poster' : 'Business/Family Poster',
                initialImage: imageData,
              ),
            ],
          );
        }),
      ],
    );
  }

  Widget step1() {
    return Column(
      children: [
        Column(
          children: [
            Text(
              'Tell us about yourself',
              style: AppTextStyle.heading3,
            ),
            SizedBox(height: 16.h),
            Column(
              children: [
                Center(
                  child: ValueListenableBuilder<Uint8List?>(
                    valueListenable: imageData,
                    builder: (context, imgData, _) => CircleAvatar(
                      radius: 40.r,
                      backgroundColor: Colors.grey[300],
                      backgroundImage: imgData != null ? MemoryImage(imgData) : null,
                      child: imgData == null ? Icon(Icons.person, size: 40.r, color: Colors.grey[600]) : null,
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  height: 35.h,
                  width: 70.w,
                  child: AppButton(
                    label: 'Add Face',
                    fontSize: 12.sp,
                    onPressed: () async {
                      // FilePickerResult? result = await FilePicker.platform.pickFiles(type: FileType.image);
                      // if (result != null) {
                      //   imageData.value = result.files.first.bytes;
                      //   onImagePicked(result.files.first.bytes);
                      // }
                    },
                    // height: 35.h,
                    // width: 70.w,
                    borderRadius: 8,
                    // child: Text(
                    //   'Add Face',
                    //   style: AppTextStyle.button.copyWith(color: AppColors.primaryPurple),
                    // ),
                  ),
                ),
              ],
            ),
            AppTextField().buildTextField(
              nameController,
              'Name',
            ),
            AppTextField().buildTextField(
              nameGujController,
              'Name (Guj)',
            ),
            AppTextField().buildTextField(
              mobileNoController,
              'Mobile No.',
            ),
            AppTextField().buildTextField(
              emailIdController,
              'Email Id',
            ),
            ValueListenableBuilder<String?>(
                valueListenable: _gender,
                builder: (context, value, child) {
                  return AppTextField().buildRadioField(
                    'Gender',
                    ['Male', 'Female'],
                    (value) {
                      _gender.value = value;
                      _memberModel?.gender = value;
                    },
                    value ?? 'Male',
                  );
                }),
            AppTextField().buildTextField(
              surnameController,
              'Surname',
            ),
            AppTextField().buildTextField(
              surnameGujController,
              'Surname (Guj)',
            ),
            AppTextField().buildTextField(
              fatherHusbandNameController,
              'Father/Husband Name',
            ),
            AppTextField().buildTextField(
              fatherHusbandNameGujController,
              'Father/Husband Name (Guj)',
            ),
            AppTextField().buildTextField(
              grandfatherFatherInLawNameController,
              'Grandfather/Father-in-law Name',
            ),
            AppTextField().buildTextField(
              grandfatherFatherInLawNameGujController,
              'Grandfather/Father-in-law Name (Guj)',
            ),
            AppTextField().buildTextField(
              familySakhController,
              'Family Sakh',
            ),
            AppTextField().buildTextField(
              familySakhGujController,
              'Family Sakh (Guj)',
            ),
            AppTextField().buildMultiDropdown(
              controller: bloodGroupController,
              items: bloodGroupsList.asMap().entries.map((entry) => DropdownItem(label: entry.value, value: entry.key)).toList(),
              label: 'Blood Group',
              isSingleSelect: true,
              onSelectionChange: (values) {
                if (values.isNotEmpty) {
                  _memberModel?.bloodGroup = bloodGroupsList[values.first]; // Assuming values contain the index
                }
              },
            ),
            SizedBox(height: 16.h),
            AppTextField().buildMultiDropdown(
              controller: maritalStatusController,
              items: maritalStatusList.asMap().entries.map((entry) => DropdownItem(label: entry.value, value: entry.key)).toList(),
              label: 'Marital Status',
              isSingleSelect: true,
              onSelectionChange: (values) {
                if (values.isNotEmpty) {
                  _memberModel?.maritalStatus = maritalStatusList[values.first];
                }
              },
            ),
            SizedBox(height: 16.h),
            AppTextField().buildDateTextField(
              context,
              birthDateController,
              'Birth Date',
              onDateSelected: (date) {
                birthDateController.text = DateFormat('dd/MM/yyyy').format(date);
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget step2() {
    return Column(
      children: [
        Text(
          'Your location',
          style: AppTextStyle.heading3,
        ),
        SizedBox(height: 16.h),
        AppTextField().buildMultiDropdown(
          controller: countryController,
          items: [DropdownItem(label: 'India', value: 0), DropdownItem(label: 'USA', value: 1)],
          label: 'Country',
          isSingleSelect: true,
        ),
        SizedBox(height: 16.h),
        AppTextField().buildMultiDropdown(
          controller: cityController,
          items: [DropdownItem(label: 'Jaipur', value: 0), DropdownItem(label: 'Udaipur', value: 1)],
          label: 'City',
          isSingleSelect: true,
        ),
        SizedBox(height: 16.h),
        AppTextField().buildMultiDropdown(
          controller: nativeVillageController,
          items: [DropdownItem(label: 'Rajsamand', value: 0), DropdownItem(label: 'Village1', value: 1)],
          label: 'Native Village',
          isSingleSelect: true,
        ),
        SizedBox(height: 16.h),
        AppTextField().buildMultiDropdown(
          controller: mosalVillageController,
          items: [DropdownItem(label: 'Mosal', value: 0), DropdownItem(label: 'Village2', value: 1)],
          label: 'Mosal Village',
          isSingleSelect: true,
        ),
        SizedBox(height: 16.h),
        AppTextField().buildMultiDropdown(
          controller: maternalVillageController,
          items: [DropdownItem(label: 'Maternal', value: 0), DropdownItem(label: 'Village3', value: 1)],
          label: 'Maternal Village',
          isSingleSelect: true,
        ),
        SizedBox(height: 16.h),
        AppTextField().buildMultiDropdown(
          controller: pragatiMandalController,
          items: [DropdownItem(label: 'Pragati', value: 0), DropdownItem(label: 'Mandal4', value: 1)],
          label: 'Pragati Mandal',
          isSingleSelect: true,
        ),
        SizedBox(height: 16.h),
        AppTextField().buildTextField(
          pragatiMandalGujController,
          'Pragati Mandal (Guj)',
        ),
        buildResidentAddressFields(),
      ],
    );
  }

  Widget step3() {
    return Column(
      children: [
        Text(
          'Your Profession',
          style: AppTextStyle.heading3,
        ),
        SizedBox(height: 16.h),
        buildOccupationFields(),
      ],
    );
  }

  Widget step4() {
    return Column(
      children: [
        Text(
          'Your matrimony preferences',
          style: AppTextStyle.heading3,
        ),
        SizedBox(height: 16.h),
        AppTextField().buildRadioField(
          'Are you planning to get married?',
          ['Yes', 'No'],
          (v) {
            setState(() {
              _isPlanningToGetMarried = v == 'Yes';
              _memberModel?.isPlanningToGetMarried = _isPlanningToGetMarried!;
            });
          },
          _isPlanningToGetMarried == true ? 'Yes' : 'No',
        ),
        if (_isPlanningToGetMarried == true) ...[
          AppTextField().buildTextField(
            heightController,
            'Height',
          ),
          AppTextField().buildTextField(
            weightController,
            'Weight',
          ),
          AppTextField().buildMultiDropdown(
            controller: skinColorController,
            items: skinToneList.asMap().entries.map((entry) => DropdownItem(label: entry.value, value: entry.key)).toList(),
            label: 'Skin Color',
            hintText: 'Skin Color',
            isSingleSelect: true,
            onSelectionChange: (values) {
              if (values.isNotEmpty) {
                _memberModel?.skinColor = skinToneList[values.first]; // Assuming values contain the index
              }
            },
          ),
          SizedBox(height: 16.h),
          AppTextField().buildTextField(
            hobbiesController,
            'Hobbies',
          ),
          AppTextField().buildTextField(
            physicalStatusController,
            'Physical Status',
          ),
          AppTextField().buildTextField(
            selfIncomeController,
            'Self Income',
          ),
          AppTextField().buildTextField(
            aboutSelfController,
            'About Self',
          ),
          AppTextField().buildTextField(
            expectationController,
            'Expectation',
          ),
        ],
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  if (currentStep.value > 0) {
                    currentStep.value--;
                  } else {
                    getIt<AppRouter>().back();
                  }
                },
                iconSize: 20.sp,
                constraints: BoxConstraints(
                  maxWidth: 30.w,
                  maxHeight: 30.h,
                ),
                padding: EdgeInsets.zero,
                icon: const Icon(Icons.arrow_back_ios_outlined),
              ),
            ),
            SizedBox(
              height: 0.82.sh,
              width: double.infinity,
              child: ValueListenableBuilder(
                  valueListenable: currentStep,
                  builder: (context, value, child) {
                    return Stepper(
                      currentStep: value,
                      connectorColor: WidgetStateProperty.resolveWith((states) => states.contains(WidgetState.selected) ? AppColors.secondaryPurple : AppColors.grey),
                      // connectorThickness: 2.h,
                      elevation: 0,
                      stepIconMargin: EdgeInsets.symmetric(horizontal: 1.w),
                      type: StepperType.horizontal,
                      steps: [
                        Step(
                          title: const Text(''),
                          content: step1(),
                          isActive: value >= 0,
                        ),
                        Step(
                          title: const Text(''),
                          content: step2(),
                          isActive: value >= 1,
                        ),
                        Step(
                          title: const Text(''),
                          content: step3(),
                          isActive: value >= 2,
                        ),
                        Step(
                          title: const Text(''),
                          content: step4(),
                          isActive: value >= 3,
                        ),
                      ],
                      controlsBuilder: (context, details) => const SizedBox.shrink(),
                    );
                  }),
            ),
            const Spacer(),
            ValueListenableBuilder(
                valueListenable: currentStep,
                builder: (context, value, child) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                    child: AppButton(
                      label: 'Continue',
                      onPressed: () {
                        if (value == 3) {
                          getIt<AppRouter>().push(const AdvertisementRoute());
                        } else {
                          currentStep.value = value + 1;
                        }
                      },
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
