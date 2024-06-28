import 'package:flutter/material.dart';
import 'package:flutter_application_spotify/common/custom_button.dart';

class Playbar extends StatelessWidget {
  final String followers;
  const Playbar({super.key, required this.followers});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButton(),
        SizedBox(width: 10,),
        IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,size: 25,)),
        SizedBox(width: 10,),
        IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz,size: 25,)),
        Spacer(),
        Text('Followers\n${followers}',style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12),textAlign: TextAlign.right,)
      ],
    );
  }
}
