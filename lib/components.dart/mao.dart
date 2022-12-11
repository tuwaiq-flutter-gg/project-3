import 'package:flutter/material.dart';

import 'package:flutter_map/plugin_api.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:myevent/components.dart/cards.dart';
import 'package:myevent/components.dart/mapcards.dart';
import 'package:myevent/pages/eventpage.dart';
// ignore: unused_import

class MyMap extends StatefulWidget {
  const MyMap({super.key});

  @override
  State<MyMap> createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
        options: MapOptions(
          center: LatLng(24.774265, 46.738586),
        ),
        children: [
          TileLayer(
            urlTemplate:
                "https://api.mapbox.com/styles/v1/r3xxuu/clbi10a5n000i14n21devckg1/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoicjN4eHV1IiwiYSI6ImNsYmh5aGd0aDB1aWwzdXBmdzRyZzd0YzcifQ.mRAX41gLGb2Qflltw4fD9w",
            additionalOptions: {
              "access_token":
                  "<pk.eyJ1IjoicjN4eHV1IiwiYSI6ImNsYmh5aGd0aDB1aWwzdXBmdzRyZzd0YzcifQ.mRAX41gLGb2Qflltw4fD9w>",
            },
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(24.774265, 46.738586),
                width: 130,
                height: 180,
                builder: (context) => InkWell(
                  onTap: () {
                    Get.to(Eventpage(Destance: 20,SecText: " Opening Hours : 08:15 PM to 10:30 PM11:00 PM to 01:00 AMCity : RiyadhLocation : THE MUSICAL MANSION - BLVD CITYDescription :A fine dining experience combined with an outstanding line up of musicians and singers performing an international and middle eastern repertoire - The price is 230sr one person.",cardTitle: "THE MUSICAL MANSION",imagepath: "images/event1.jpg",) );
                  },
                  child: SizedBox(
                      height: 200,
                      width: 200,
                      child: MappCard(
                          Destance: 30,
                          SecText: "",
                          cardTitle: "THE MUSICAL MANSION",
                          imagepath: "images/event1.jpg",)),
                ),
              ),
              Marker(
                point: LatLng(24.841127, 46.754670),
                width: 130,
                height: 180,
                builder: (context) => SizedBox(
                    height: 100,
                    width: 100,
                    child: InkWell(
    
     onTap: () {
                    Get.to(Eventpage(Destance: 20,SecText: "Opening Hours : 07:00 PM to 01:00 AM City : Riyadh Location : VOVPrice including VAT : SR 70Description :Experience our premier venue and compete in the Vov tournament with 10000 Saudi riyals in prize pool",cardTitle: "VOV COMMUNITY TOURNAMENT",imagepath: "images/event2.jpeg",) );
                  },
    
                      child: MappCard(
                          Destance: 25,
                          SecText: "",
                          cardTitle: "VOV Tournament",
                          imagepath: "images/event2.jpeg"),
                    )),
              ),
              Marker(
                point: LatLng(24.740500, 46.698599),
                width: 130,
                height: 180,
                builder: (context) => InkWell(
      onTap: () {
                    Get.to(Eventpage(Destance: 20,SecText: "Opening Hours : 04:00 PM to 12:00 AM City : Riyadh Location : Science factory - Winter WonderlandPrice including VAT : SR 65 Description :Science Factory combines entertainment and knowledge through amazing scientific experiments and different experiences from multiple scientific fields in a fun way that amuses everyone.*Includes winter wonderland zone entry",cardTitle: "SCIENCE FACTORY",imagepath: "images/event4.jpg",) );
                  },
                  child: SizedBox(
                      height: 100,
                      width: 100,
                      child: MappCard(
                          Destance: 30,
                          SecText: "",
                          cardTitle: "SCIENCE FACTORY",
                          imagepath: "images/event4.jpg")),
                ),
              ),
              Marker(
                point: LatLng(24.793390, 46.711509),
                width: 130,
                height: 180,
                builder: (context) => InkWell(
    
    
     onTap: () {
                    Get.to(Eventpage(Destance: 20,SecText: "Morocco is going head to head with Portugal starting on 10 Dec 2022 at 15:00 UTC at Al-Thumama Stadium stadium, Al-Thumama city, Qatar.",cardTitle: "Maroc vs portugal",imagepath: "images/event3.jpg",) );
                  },
    
                  child: SizedBox(
                      height: 100,
                      width: 100,
                      child: MappCard(
                          Destance: 30,
                          SecText: "",
                          cardTitle: "Maroc vs portugal",
                          imagepath: "images/event3.jpg")),
                ),
              ),
            ],
          ),
        ],
      
    );
  }
}
