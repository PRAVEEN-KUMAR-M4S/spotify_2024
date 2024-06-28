import 'package:flutter/material.dart';
import 'package:flutter_application_spotify/screens/playlist_screen/widgets/library_playlist.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 280,
      color: Theme.of(context).primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              'assets/spotify_logo.png',
              height: 40,
              filterQuality: FilterQuality.high,
            ),
          ),
          const SideMenuTab(icon: Icons.home, txt: 'Home',),
          const SideMenuTab(icon: Icons.search, txt: 'Search',),
          const SideMenuTab(icon: Icons.audiotrack, txt: 'Radio',),
            LibraryPlaylist()
        ],
      ),
    );
  }
}

class SideMenuTab extends StatelessWidget {
  final IconData icon;
  final String txt;
  const SideMenuTab({
    super.key, required this.icon, required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
       icon,
        color: Theme.of(context).iconTheme.color,
        size: 28,
      ),
      title: Text(
        txt,
        style: Theme.of(context).textTheme.bodySmall,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
