import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sharik/models/file.dart';

// todo not only file model but also the interface
Future<FileModel?> openDialog(BuildContext context, Widget dialog) {
  return showGeneralDialog<FileModel>(
      context: context,
      barrierLabel: '',
      barrierDismissible: true,
      transitionDuration: const Duration(milliseconds: 180),
      transitionBuilder: (ctx, anim1, anim2, child) => BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: 2 * anim1.value, sigmaY: 2 * anim1.value),
            child: FadeTransition(
              opacity: anim1,
              child: SafeArea(child: child),
            ),
          ),
      pageBuilder: (_, __, ___) => dialog);
}
