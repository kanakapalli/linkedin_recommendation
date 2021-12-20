import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:recommendation_generator/app/modules/widgets/formwidgets/textfield.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final log = Logger(); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          
          Form(
            key: controller.formKey,
            child: Container(child: Column(
              children: [
                Textfields(hinttext: "Name",),
                 Textfields(hinttext: "Role",),
            Textfields(hinttext: "Skills",),
            Textfields(hinttext: "Expersence",),
              ],
            )),
          ),
         

          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: ElevatedButton(
                  child: Text('Genrate'),
                  
                  onPressed: () {
                    if (controller.formKey.currentState!.validate()) {  
                    // If the form is valid, display a Snackbar.  
                    Scaffold.of(context)  
                        .showSnackBar(SnackBar(content: Text('Data is in processing.')));  
                  }  
                  },
                ),
            ),
          ),

        ],
      )
    );
  }
}
