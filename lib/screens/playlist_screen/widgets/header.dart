import 'package:flutter/material.dart';
import 'package:flutter_application_spotify/data/data.dart';

class Header extends StatelessWidget {
  final Playlist playlist;
  const Header({super.key, required this.playlist});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                playlist.imageURL,
              ),
              fit: BoxFit.cover,
             
              filterQuality: FilterQuality.high,
            ),
            borderRadius: BorderRadius.circular(12)
          ),
        ),
        SizedBox(width: 10,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('PLAYLIST',style: Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 12),),
              SizedBox(height: 5,),
              Text(playlist.name,style: Theme.of(context).textTheme.displayMedium,overflow: TextOverflow.ellipsis,),
              SizedBox(height: 5,),
               Text(playlist.description,style: Theme.of(context).textTheme.bodySmall,overflow: TextOverflow.ellipsis,),
                 SizedBox(height: 5,),
               Text('Created by ${playlist.creator} - ${playlist.songs.length} songs, ${playlist.duration}',style: Theme.of(context).textTheme.labelMedium!.copyWith(fontSize: 12),overflow: TextOverflow.ellipsis,),
          
            ],
          ),
        )
      ],
    );
  }
}
