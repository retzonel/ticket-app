import 'package:flutter/material.dart';

class HotelDetail extends StatelessWidget {
  const HotelDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Hotel"),
              centerTitle: true,
              background: Image.network("https://via.placeholder.com/600x400"),
            ),
          ),

          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "datagggggggggggggggg eh hthyh rjgksdg kh  hwhj gdjkhh ykh j hgs hg hgr sdh h  tsjhdghhihtikg hgd hjhfj dhg f nbkj skjdbn kjdbkjnvjk dfsnkjb nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnndfjgnsjt jn jkghndjsk hgjdn jgnd jhn jdgnh jksdn kjhng s jnhhkjsnkjghknkjhgnfjkngkjd njkgdngjd fnajgnkgsjngdkjn fhkjgdnsjkhgjdnjkdnjfnsdkjghjesgjnkjds nkdjsg nkjsdnhkjgsndkjngkjd nsjgdjkhgkjd nkjgfnjksnskjdfnsjkgbn sdkjnhgkjsd njgnhkjgdnkhdjgkjdsn ksdjgnkjndjkh",
                ),
              ),

              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "More Images",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),

              Container(
                height: 200.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(8),
                      color: Colors.blue,
                      child: Image.network(
                        "https://via.placeholder.com/200x150",
                      ),
                    );
                  },
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
