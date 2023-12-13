import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StacktAvatar extends StatelessWidget {
  const StacktAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Align(
          alignment: Alignment(-1, 0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://source.boomplaymusic.com/group10/M00/E9/CA/a407c104df0a412cb4007fc9b3d396d6_320_320.jpg"),
          ),
        ),
        const Align(
          alignment: Alignment(-0.88, 0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://play-lh.googleusercontent.com/EyadVNzZfOrCXPJmmqieuEi2dJG1ZjfrdVUuJtRenOqlOTUmZNl5h4cNA-yz_UNG0M4"),
          ),
        ),
        const Align(
          alignment: Alignment(-0.76, 0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZG6Vey-wIkLuJYiw50kcL-DjkzUsM1vtKjA3MMk3XCCNtsV5HaPrmqyyHpvK3ro6mnAM&usqp=CAU"),
          ),
        ),
        Align(
          alignment: const Alignment(0.24, 0),
          child: Text(
            "Followed by username, username \nand 100 others",
            style: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        )
      ],
    );
  }
}
