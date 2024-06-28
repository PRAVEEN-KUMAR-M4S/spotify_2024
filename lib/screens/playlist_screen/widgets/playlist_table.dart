import 'package:flutter/material.dart';
import 'package:flutter_application_spotify/data/data.dart';
import 'package:flutter_application_spotify/screens/playlist_screen/bloc/selectedsong_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlaylistTable extends StatelessWidget {
  final List<Song> tracks;
  const PlaylistTable({super.key, required this.tracks});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedsongBloc, SelectedsongState>(
      builder: (context, state) {
        Song? song;
        if (state is SelectedState) {
          song = state.song;
        }

        return DataTable(
        
          showCheckboxColumn: false,

            columns: const [
              DataColumn(label: Text('TITLE')),
              DataColumn(label: Text('ARTIST')),
              DataColumn(label: Text('ALBUM')),
              DataColumn(label: Icon(Icons.access_time))
            ],
            rows: tracks.map((e) {
              final selectedsong = song?.id == e.id;
              final textStyle = TextStyle(color: selectedsong?Theme.of(context).hintColor:Theme.of(context).iconTheme.color);
              return DataRow(cells: [
                DataCell(Text(e.title,style: textStyle,)),
                DataCell(Text(e.artist,style: textStyle,)),
                DataCell(Text(e.album,style: textStyle,)),
                DataCell(Text(e.duration,style: textStyle,))
              ],
              selected: selectedsong,
              onSelectChanged: (_)=>context.read<SelectedsongBloc>().add(OnSelect(song: e))
              );
            
            }).toList());
      },
    );
  }
}
