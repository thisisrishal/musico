import 'package:flutter/material.dart';
import 'package:musico_scratch/custom/listOfSongs.dart';
import 'package:musico_scratch/custom/musicList.dart';

class PageSongs extends StatelessWidget {
  PageSongs({Key? key}) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (OverscrollIndicatorNotification overscroll) {
                  overscroll.disallowIndicator();
                  return false;
                },
                child: ListView.builder(
                  itemCount: audios.length,
                  itemBuilder: (BuildContext context, int index) {
                    return MusicList(
                      
                      header: 
                        audios[index].metas.title.toString(),
                        
                      
                      subhead: 
                        audios[index].metas.artist.toString(),
                      
                      imageurl:
                        audios[index].metas.image!.path,
                      
                      icon1: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_horiz_rounded),
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
