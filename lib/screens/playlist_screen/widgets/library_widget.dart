import 'package:flutter/material.dart';

class LibraryWidget extends StatelessWidget {
  const LibraryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: LinearGradient( begin: Alignment.topLeft,
                end: Alignment.bottomRight,colors: [
                  Colors.purple,Colors.white

            ])
          ),
          child: Center(child: Icon(Icons.favorite_outlined,size: 18,),),
        ),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Liked Songs',style: Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 14),),
            SizedBox(height: 4,),
            Row(
              children: [
                Icon(Icons.push_pin_sharp,size: 14,color: Theme.of(context).hintColor,),
                SizedBox(width: 3,),
                Text('Playlist - 5 Songs',style: Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 12,color: Colors.grey),)
              ],
            )
          ],
        )
      ],
    );
  }
}
