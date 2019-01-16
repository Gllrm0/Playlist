import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Playlist extends StatelessWidget {
  List songs = [
    {
      "song": 'Maldito Duende',
      "artist": "Héroes del Silencio",
      "album": "Senderos de traición",
      "album_img":
          "https://upload.wikimedia.org/wikipedia/en/e/e5/Heroes_del_Silencio.jpg",
      "favorite": false
    },
    {
      "song": 'Vestido de Cristal',
      "artist": "Kraken",
      "album": "Kraken II",
      "album_img":
          "https://upload.wikimedia.org/wikipedia/en/thumb/5/5a/Kraken2frontcover.jpg/220px-Kraken2frontcover.jpg",
      "favorite": true
    },
    {
      "song": 'Crimen',
      "artist": "Gustavo Cerati",
      "album": "Ahí Vamos",
      "album_img": "https://pbs.twimg.com/media/CBt5SBbWYAAtbet.png",
      "favorite": true
    },
    {
      "song": 'Y Nos Dieron las Diez',
      "artist": "Joaquín Sabina",
      "album": "Física y Química",
      "album_img":
          "https://img.discogs.com/QmCh_kMUEsc9bTmFS3JckHzv1sQ=/fit-in/300x300/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-689721-1149163536.jpeg.jpg",
      "favorite": true
    },
    {
      "song": 'Me Equivocaría Otra Vez',
      "artist": "Fito y Fitipaldis",
      "album": "Por la Boca Vive el Pez",
      "album_img":
          "https://upload.wikimedia.org/wikipedia/en/thumb/7/77/Por_la_boca_vive_el_pez.jpg/220px-Por_la_boca_vive_el_pez.jpg",
      "favorite": false
    },
    {
      "song": 'Solo',
      "artist": "Ekhymosis",
      "album": "Niño Gigante",
      "album_img":
          "https://images-na.ssl-images-amazon.com/images/I/41smLFlKHzL._SY355_.jpg",
      "favorite": true
    },
    {
      "song": 'Bolero Falaz',
      "artist": "Aterciopelados",
      "album": "El Dorado",
      "album_img":
          "https://upload.wikimedia.org/wikipedia/en/thumb/9/9f/Aterciopelados_CD.jpg/220px-Aterciopelados_CD.jpg",
      "favorite": false
    },
    {
      "song": '666',
      "artist": "Ángeles del Infierno",
      "album": "666",
      "album_img":
          "https://img.discogs.com/nJKXe6WresTYRiLblNB_COw1Ofw=/fit-in/300x300/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-6532748-1422116722-4765.jpeg.jpg",
      "favorite": false
    },
    {
      "song": 'Paloma',
      "artist": "Andrés Calamaro",
      "album": "Honestidad Brutal",
      "album_img":
          "https://img.discogs.com/jlv3qY1whyBCd0REllZz3Asz8pY=/300x300/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-1379412-1214515677.jpeg.jpg",
      "favorite": true
    },
    {
      "song": 'Tu Calorro',
      "artist": "Estopa",
      "album": "Estopa",
      "album_img":
          "https://img.discogs.com/3rs1jPwpJPzERVCCY0CUSIfGCug=/fit-in/577x572/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-2150480-1312178459.jpeg.jpg",
      "favorite": false
    },
    {
      "song": 'Trátame suavemente',
      "artist": "Soda Stereo",
      "album": "Soda Stereo",
      "album_img":
          "https://upload.wikimedia.org/wikipedia/en/1/15/Sodastereo.jpg",
      "favorite": false
    },
    {
      "song": 'Cerebros Destruidos',
      "artist": "Skorbuto",
      "album": "Anti Todo",
      "album_img":
          "https://www.demonsshop.com/18516-home_default/vinilo-lp-eskorbuto-anti-todo.jpg",
      "favorite": false
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: songs.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            ListTile(
              leading: Image(
                height: 40,
                image: NetworkImage(songs[index]['album_img']),
              ),
              title: Text(songs[index]['song']),
              subtitle:
                  Text(songs[index]['artist'] + " • " + songs[index]['album']),
              trailing: Icon(
                songs[index]['favorite']
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: Colors.redAccent,
              ),
              dense: true,
            ),
          ],
        );
      },
    );
  }
}
