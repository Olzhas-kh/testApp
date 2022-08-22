import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:narxoz/src/core/extension/extensions.dart';
import 'package:narxoz/src/core/resources/resources.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

class FilePickerWidget extends StatefulWidget {
  final File? file;
  final Function(File?) callback;
  const FilePickerWidget({
    this.file,
    required this.callback,
    super.key,
  });

  @override
  State<FilePickerWidget> createState() => _FilePickerWidgetState();
}

class _FilePickerWidgetState extends State<FilePickerWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: () async {
            final FilePickerResult? result = await FilePicker.platform.pickFiles(
              type: FileType.custom,
              allowedExtensions: ['pdf', 'jpg', 'png'],
            );

            if (!mounted) return;
            if (result != null) {
              File file = File(
                result.files.single.path!,
              );

              if (Platform.isIOS) {
                final documentPath = (await getApplicationDocumentsDirectory()).path;
                file = await file.copy('$documentPath/${path.basename(file.path)}');
              }
              // answers[index].value = file;
              widget.callback(file);
            } else {
              // buildErrorCustomSnackBar(
              //   context,
              //   'File Picker Error',
              // );
            }
            setState(() {});
          },
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.kGray2,
              ),
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            alignment: Alignment.center,
            child: widget.file != null
                ? Text(
                    widget.file!.path.substring(
                      widget.file!.path.length - 3,
                    ),
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                : const Icon(
                    Icons.add,
                    color: AppColors.kGray2,
                  ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text(
            '${context.appLocale.noteAttachSupportingDocumentsFormatPdfJpg} '
            '${context.appLocale.maximumFileSize}: 200kB',
            style: AppTextStyles.rubik14w400Red,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
