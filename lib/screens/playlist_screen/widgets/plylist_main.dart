import 'package:flutter/material.dart';
import 'package:flutter_application_spotify/data/data.dart';
import 'package:flutter_application_spotify/screens/playlist_screen/widgets/header.dart';
import 'package:flutter_application_spotify/screens/playlist_screen/widgets/playbar.dart';
import 'package:flutter_application_spotify/screens/playlist_screen/widgets/playlist_table.dart';


class PlylistMain extends StatefulWidget {
  final Playlist playlist;

  const PlylistMain({super.key, required this.playlist});

  @override
  State<PlylistMain> createState() => _PlylistMainState();
}

class _PlylistMainState extends State<PlylistMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leadingWidth: double.infinity,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              InkWell(
                customBorder: const CircleBorder(),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      color: Colors.black26, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.chevron_left,
                    size: 24,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                customBorder: const CircleBorder(),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      color: Colors.black26, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.chevron_right,
                    size: 24,
                  ),
                ),
              )
            ],
          ),
        ),
        actions: [
          TextButton.icon(
            style: TextButton.styleFrom(
                foregroundColor: Theme.of(context).iconTheme.color),
            onPressed: () {},
            label: Text(
              'Praveen',
            ),
            icon: const Icon(Icons.account_circle_outlined),
          ),
          SizedBox(
            width: 8,
          ),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down))
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              const Color(0xFFAF1018),
              Theme.of(context).scaffoldBackgroundColor
            ],
                stops: const [
              0,
              0.4
            ])),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children:  [
              Header(playlist: widget.playlist,),
              const SizedBox(height: 20,),
              Playbar(followers: widget.playlist.followers),
              PlaylistTable(tracks: widget.playlist.songs)
            ],
          ),
        ),
      ),
    );
  }
}
