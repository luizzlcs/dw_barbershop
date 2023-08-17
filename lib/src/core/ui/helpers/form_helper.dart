import 'package:flutter/material.dart';

void unfocus(BuildContext context) => FocusScope.of(context).unfocus();

extension FocusExtension on BuildContext{
  void unfocus()=> FocusScope.of(this).unfocus();
}


// posso fazer a chamada:
  // assim -> unfocus(context)
  // ou assim -> context.unfocus()