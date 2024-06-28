import 'package:flutter/material.dart';
import 'package:flutter_application_spotify/data/data.dart';

class LibraryPlaylist extends StatelessWidget {
  const LibraryPlaylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                  child: Text(
                    'YOUR LIBRARY',
                    style: Theme.of(context).textTheme.titleSmall,
                  )),
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
          SizedBox(
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
    );
  }
}
