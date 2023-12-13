import 'package:flutter/material.dart';

class StakePages extends StatelessWidget {
  const StakePages({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: 100,
            child: Stack(
              children: [
                Positioned(
                  left: 10,
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                ),
                Positioned(
                  left: 26,
                  child: CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                  ),
                ),
                Positioned(
                  left: 40,
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
