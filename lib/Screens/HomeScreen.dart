import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

TextEditingController no1 = TextEditingController();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF5F7F8),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 350,
              width: 350,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('Assets/Images/logo.png'),
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            InkWell(
              child: Center(
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green),
                  child: const Center(
                    child: Text(
                      "Generate Tables",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              onTap: () {
                setState(
                  () {
                    Navigator.of(context).pushNamed('table');
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
