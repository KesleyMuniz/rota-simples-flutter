import 'package:flutter/material.dart';
import '../design_system.dart';

Future<T?> showRSBottomSheet<T>({
  required BuildContext context,
  required Widget child,
  String? title,
  bool isDismissible = true,
}) {
  return showModalBottomSheet<T>(
    context: context,
    isDismissible: isDismissible,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (_) => _RSBottomSheet(title: title, child: child),
  );
}

class _RSBottomSheet extends StatelessWidget {
  const _RSBottomSheet({required this.child, this.title});

  final Widget child;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: RSColors.bgCard,
        borderRadius: RSRadius.bottomSheetBorder,
        border: const Border(
          top: BorderSide(color: RSColors.border10),
          left: BorderSide(color: RSColors.border10),
          right: BorderSide(color: RSColors.border10),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 12),
          Container(width: 36, height: 4, decoration: BoxDecoration(color: RSColors.border14, borderRadius: RSRadius.pillBorder)),
          if (title != null) ...[
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: RSSpacing.lg),
              child: Text(title!, style: RSType.screenTitle()),
            ),
          ],
          Padding(
            padding: EdgeInsets.fromLTRB(RSSpacing.lg, RSSpacing.lg, RSSpacing.lg, RSSpacing.screenBottom + MediaQuery.of(context).viewInsets.bottom),
            child: child,
          ),
        ],
      ),
    );
  }
}
