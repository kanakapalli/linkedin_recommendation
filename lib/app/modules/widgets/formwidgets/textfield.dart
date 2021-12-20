import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class Textfields extends StatelessWidget {
  final String? hinttext;
  final String? label;

  const Textfields({this.hinttext,this.label, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final log = Logger();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        
        onChanged: (value) {
          //Do something with the user input.
          log.i(value);
        },
             validator: (value) {  
               try {
                 var one = int.parse(value!);
               } catch (e) {
                 return 'Please enter number';  
               }
              if (value!.isEmpty) {  
                return 'Please enter valid phone number';  
              }  
              return null;  
            },  
        decoration: InputDecoration(
          
          hintText: hinttext,
          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
        ),
      ),
    );
  }
}
