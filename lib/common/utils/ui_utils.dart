import 'dart:typed_data';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patel_samaj_app/common/widgets/app_button.dart';
import 'package:patel_samaj_app/core/styles/style.dart';

mixin UiUtils {
  Widget purpleGradientChild(Widget child) => ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (bounds) => const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [AppColors.primaryPurple, AppColors.secondaryPurple],
        ).createShader(bounds),
        child: child,
      );

  Widget uploadFileContainer({
    required void Function(List<Uint8List?>) onPickedImage,
    String? label,
    Uint8List? initialImage,
    List<String> allowedExtensions = const ['jpg', 'jpeg', 'png', 'pdf'],
    bool allowMultiple = false,
  }) {
    final imageData = ValueNotifier<Uint8List?>(initialImage);

    Future<void> pickImage() async {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: allowedExtensions,
        allowMultiple: allowMultiple,
      );
      if (result != null) {
        imageData.value = result.files.first.bytes;
        onPickedImage(result.files.map((file) => file.bytes).toList());
      }
    }

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label ?? 'Post Image',
            style: AppTextStyle.heading4.copyWith(fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 8.h),
          DottedBorder(
            radius: const Radius.circular(10),
            borderType: BorderType.RRect,
            borderPadding: const EdgeInsets.all(6),
            dashPattern: const [8, 4],
            color: AppColors.grey,
            child: InkWell(
              onTap: pickImage,
              child: SizedBox(
                height: 120.h,
                child: ValueListenableBuilder<Uint8List?>(
                  valueListenable: imageData,
                  builder: (_, imgData, __) => Center(
                    child: imgData != null
                        ? Image.memory(
                            imgData,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) => const Icon(Icons.picture_as_pdf_sharp),
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              purpleGradientChild(const Icon(Icons.cloud_upload, color: AppColors.primaryPurple)),
                              SizedBox(height: 8.h),
                              Text(
                                'Click here to upload file',
                                style: AppTextStyle.bodyText2.copyWith(color: AppColors.primaryPurple),
                              ),
                            ],
                          ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget profilePictureContainer({
    required ValueNotifier<Uint8List?> imageData,
    required Function(Uint8List?) onImagePicked,
  }) {
    return Column(
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
        Center(
          child: AppButton(
            label: 'Add Face',
            onPressed: () async {
              FilePickerResult? result = await FilePicker.platform.pickFiles(type: FileType.image);
              if (result != null) {
                imageData.value = result.files.first.bytes;
                onImagePicked(result.files.first.bytes);
              }
            },
            borderRadius: 8,
          ),
        ),
      ],
    );
  }
}
