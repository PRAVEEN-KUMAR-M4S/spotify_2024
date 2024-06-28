import 'package:flutter/material.dart';
import 'package:flutter_application_spotify/data/data.dart';
import 'package:flutter_application_spotify/screens/playlist_screen/bloc/selectedsong_bloc.dart';
import 'package:flutter_application_spotify/screens/playlist_screen/widgets/library_playlist.dart';
import 'package:flutter_application_spotify/screens/playlist_screen/widgets/plylist_main.dart';
import 'package:flutter_application_spotify/screens/playlist_screen/widgets/side_menu.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            child: Row(
              children: [
                SideMenu(),
                Expanded(
                    child: PlylistMain(
                  playlist: lofihiphopPlaylist,
                ))
              ],
            ),
          ),
          BlocBuilder<SelectedsongBloc, SelectedsongState>(
            builder: (context, state) {
              if (state is SelectedState) {
                return Container(
                  height: 75,
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                    color: Theme.of(context).scaffoldBackgroundColor
                  ),

                  child: Row(
                    children: [
                      Row(),Row(),Row()
                    ],
                  ),
                );
              }
              return const SizedBox();
            },
          )
        ],
      ),
    );
  }
}
