import 'package:flutter/material.dart';
import 'package:soldnet/presentation/widgets/call/call_footer.dart';

class CallContainer extends StatelessWidget {
  const CallContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: paddingTop + 16,
          ),
          const Spacer(),
          const CallFooter(),
        ],
      ),
    );
  }
}
