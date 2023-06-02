import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Jenkins extends StatelessWidget {
  const Jenkins({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 140,
            width: 140,
            child: SvgPicture.asset("assets/logo.svg",
                semanticsLabel: 'Jenkins Logo'),
          ),
          const DefaultTextStyle(
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
            child: Text("欢迎来到 Jenkins！"),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 320,
            child: Form(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40,
                  child: TextFormField(
                    style: const TextStyle(fontSize: 12), // Set font size to 12
                    decoration: const InputDecoration(
                        hintText: "用户名", border: OutlineInputBorder()),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 40,
                  child: TextFormField(
                    style: const TextStyle(fontSize: 12), // Set font size to 12
                    decoration: const InputDecoration(
                        hintText: "密码", border: OutlineInputBorder()),
                  ),
                )
              ],
            )),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 320,
            child: Row(
              children: [
                Checkbox(value: false, onChanged: (bool? v) {}),
                const Text(
                  "保持登录状态",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 320,
            child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(0, 98, 209, 1.0))),
                child: const Text(
                  "登录",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                )),
          )
        ],
      )),
    );
  }
}
