import 'package:flutter/material.dart';
import 'package:jumia_auth/constants/global_variables.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const CustomTextField({required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: GlobalVariables.secondaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: GlobalVariables.greyBackgroundCOlor),
        ),
        label: Text(
          '$hintText',
          style: TextStyle(color: GlobalVariables.secondaryColor),
        ),
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
      ),
      validator: (val) {
        if (val == null || val.isEmpty) {
          return '$hintText';
        }
        return null;
      },
    );
  }
}

class IdentityContainer extends StatelessWidget {
  final VoidCallback onTap;
  final String identityInfo;
  const IdentityContainer({required this.identityInfo, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      color: Color(0xffeeeeee),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(identityInfo),
            TextButton(onPressed: onTap, child: Text('Edit'))
          ],
        ),
      ),
    );
  }
}
