import "package:cascade_clearance/presenter/index.dart";
import "package:cascade_clearance/view/index.dart";
import "package:flutter/material.dart";

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = Responsive.getScreenSize(context);
    final double pageHeight = screenSize.height - kToolbarHeight;

    Container getFirstSection() {
      return Container(
        padding: const EdgeInsets.all(32),
        alignment: Alignment.center,
        height: pageHeight,
        child: const Text(
          "SIMPLEST OBVIOUS WAY TO DO IT.",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 56,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Container getSecondSection() {
      Image getImage() {
        return Image.asset(
          "images/img.png",
          fit: BoxFit.cover,
          color: Colors.black54,
          colorBlendMode: BlendMode.darken,
        );
      }

      Container getText() {
        EdgeInsets getPadding() {
          if (Responsive.isMobile(screenSize.width)) {
            return EdgeInsets.symmetric(
              horizontal: screenSize.width * 0.10,
            );
          }
          return EdgeInsets.symmetric(
            horizontal: screenSize.width * 0.30,
          );
        }

        return Container(
          padding: getPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "GLIDEPATH\u2120",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 48,
                  shadows: [
                    Shadow(
                      offset: Offset(4, 4),
                      blurRadius: 2.0,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              Text(
                "The human factor in aviation maintenance is directly related to accidents, so it requires a lot of effort from all members. GLIDEPATH\u2120 provides a systematic and clear method for effective human factor control.",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 24,
                  shadows: [
                    Shadow(
                      offset: Offset(2, 2),
                      blurRadius: 1.0,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      }

      return Container(
        alignment: Alignment.center,
        height: pageHeight,
        child: Stack(
          fit: StackFit.expand,
          children: [
            getImage(),
            getText(),
          ],
        ),
      );
    }

    Container getThirdSection() {
      EdgeInsets getPadding() {
        if (Responsive.isMobile(screenSize.width)) {
          return EdgeInsets.symmetric(
            horizontal: screenSize.width * 0.10,
          );
        }
        return EdgeInsets.symmetric(
          horizontal: screenSize.width * 0.30,
        );
      }

      return Container(
        alignment: Alignment.center,
        padding: getPadding(),
        height: pageHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "CONTACT US",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 48,
              ),
            ),
            Text(
              "Songdo Convensia, 123 Central-Ro,\nYeonsu-Gu, Incheon,\nRepublic of Korea",
              style: TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 48,
            ),
            CompanyTitle(
              fontSize: 18,
              copyrightMark: true,
            ),
          ],
        ),
      );
    }

    return Title(
      title: "CASCADE CLEARANCE",
      color: Colors.white,
      child: Scaffold(
        appBar: const BaseAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              getFirstSection(),
              getSecondSection(),
              getThirdSection(),
            ],
          ),
        ),
      ),
    );
  }
}
