import 'package:flutter/material.dart';
import 'package:flutter_application_spotify/data/data.dart';
import 'package:flutter_application_spotify/screens/playlist_screen/bloc/selectedsong_bloc.dart';

import 'package:flutter_application_spotify/screens/playlist_screen/widgets/plylist_main.dart';
import 'package:flutter_application_spotify/screens/playlist_screen/widgets/side_menu.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaWidth=MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: [
           Expanded(
            child: Row(
              children: [
                SideMenu(),
                Expanded(
                    child: Container(
                       margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
            
                borderRadius: BorderRadius.circular(20)),
                      child: PlylistMain(
                                        playlist: lofihiphopPlaylist,
                                      ),
                    ))
              ],
            ),
          ),
          BlocBuilder<SelectedsongBloc, SelectedsongState>(
            builder: (context, state) {
              if (state is SelectedState) {
                return Container(
                  height:80,
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                    color: Colors.black87
                  ),

                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height:double.infinity,
                        width: mediaWidth*0.28,
                        
                        child: Row(
                          children: [
                            Container(
                            
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(image: AssetImage('assets/lofigirl.jpg',),fit: BoxFit.cover)
                              ),
                            ),
                            SizedBox(width: 10,),
                            Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                              Text(state.song.title,style: Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 16),),
                              SizedBox(height:5),
                              Text(state.song.artist,style: Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 12,color: Colors.grey),)
                            ],),
                            SizedBox(width: 5,),
                            IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_rounded))
                          ],
                          
                        ),
                      ),Column(
                        children: [
                          Row(
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.shuffle),iconSize: 25,padding: EdgeInsets.only(),),
                               IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous_sharp,color: Colors.grey,),iconSize: 25,padding: EdgeInsets.only(),),
                                IconButton(onPressed: (){}, icon: Icon(Icons.play_circle_fill_outlined),iconSize: 34,padding: EdgeInsets.only(),),
                                 IconButton(onPressed: (){}, icon: Icon(Icons.skip_next_sharp,color: Colors.grey,),iconSize: 25,padding: EdgeInsets.only(),),
                                 IconButton(onPressed: (){}, icon: Icon(Icons.loop_sharp),iconSize: 20,padding: EdgeInsets.only(),)
                            ],
                          ),
                          Row(
                            children: [
                              Text('0:18',style: Theme.of(context).textTheme.labelMedium!.copyWith(fontSize: 12),),
                              SizedBox(width: 5,),
                              Container(
                                width: mediaWidth * 0.4,
                                height: 5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey,

                                ),
                              ),
                              SizedBox(width: 5,),
                              Text(state.song.duration,style:Theme.of(context).textTheme.labelMedium!.copyWith(fontSize: 12) ,)
                            ],
                          )
                        ],
                      ),Row(
                        children: [
                          Container(
                            height: 28,
                            width: 20,
                            decoration: BoxDecoration(
                              border: Border.all(color: Theme.of(context).hintColor,width: 1.2,style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Center(child: Icon(Icons.play_arrow,color: Theme.of(context).hintColor,size: 16,)),
                          ),
                          SizedBox(width: 5,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.devices_outlined,size: 20,)),
                    
                          IconButton(onPressed: (){}, icon: Icon(Icons.volume_up_outlined,size: 20,)),
                          Container(
                            width: mediaWidth * 0.09,
                            height: 5,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey
                            ),
                          )

                          
                        ],
                      )
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
