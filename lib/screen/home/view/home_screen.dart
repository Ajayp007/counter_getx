import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:getx/screen/home/controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
        centerTitle: true,
      ),
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${controller.i}",
              style: const TextStyle(fontSize: 25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      controller.i++;
                      controller.i++;
                    },
                    child: const Text("+2")),
                ElevatedButton(
                    onPressed: () {
                      controller.i--;
                      controller.i--;
                    },
                    child: const Text("-2")),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      controller.i++;
                      controller.i++;
                      controller.i++;
                      controller.i++;
                    },
                    child: const Text("+4")),
                ElevatedButton(
                    onPressed: () {
                      controller.i--;
                      controller.i--;
                      controller.i--;
                      controller.i--;
                    },
                    child: const Text("-4")),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                controller.i;
              },
              child: Text("Clear"),
            ),
          ],
        ),
      ),
    );
  }
}
