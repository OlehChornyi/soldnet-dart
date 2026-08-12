import 'package:flutter/material.dart';
import 'package:soldnet/presentation/widgets/call/call_footer.dart';
import 'package:soldnet/presentation/widgets/call/call_video_self.dart';

class CallContainer extends StatelessWidget {
  const CallContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(bottom: 12, right: 12, child: const CallVideoSelf())
              ],
            ),
          ),
          const CallFooter(),
        ],
      ),
    );
  }
}
