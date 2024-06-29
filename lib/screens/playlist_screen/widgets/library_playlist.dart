import 'package:flutter/material.dart';
import 'package:flutter_application_spotify/data/data.dart';
import 'package:flutter_application_spotify/screens/playlist_screen/widgets/library_widget.dart';

class LibraryPlaylist extends StatelessWidget {
  const LibraryPlaylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
         margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(16)),
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 10),
          physics: const ClampingScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Row(
                        children: [
                           Icon(Icons.library_music_outlined),
                        SizedBox(width: 5,),
                        Text(
                          'Your Library',
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 16,color: Colors.grey.shade300,fontWeight: FontWeight.bold),
                        ),
                        ],
                       ),
                       Icon(Icons.search)
                      ],
                    )),
                    SizedBox(height: 5,),
                   LibraryWidget(),
                ...yourLibrary.map(
                  (e) => ListTile(
                    dense: true,
                    title: Text(
                      e,
                      style: Theme.of(context).textTheme.bodySmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      'PLAYLIST',
                      style: Theme.of(context).textTheme.titleSmall,
                    )),
                ...playlists.map(
                  (e) => ListTile(
                    dense: true,
                    title: Text(
                      e,
                      style: Theme.of(context).textTheme.bodySmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
