import "package:cellphone/pages/home_pages.dart";
import "package:cellphone/pages/login_pages.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPage();
}

class _SplashPage extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const LoginPages(),
        ),
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF623663), Color.fromARGB(255, 216, 77, 149)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(
              image: AssetImage('assets/images/splash.png'),
              width: 150,
              height: 150,),
            Padding(
              padding: EdgeInsets.fromLTRB(20,0,0,0),
              child: Text(
                "Isung",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    fontFamily: "Montserrat"),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Sáng tạo qua màn cảm ứng",
              style: TextStyle(
                  fontSize: 16, color: Colors.white, fontFamily: "Montserrat"),
            )
          ],   
        ),
      ),
      
    );
  }
}
