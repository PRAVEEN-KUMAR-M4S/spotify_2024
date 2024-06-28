import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Theme.of(context).hintColor
        ),
        child: Text('PLAY',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 12,letterSpacing: 2),),
      ),
    );
  }
}