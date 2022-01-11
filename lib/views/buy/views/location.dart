import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/utils/widget/auth_button.dart';
import 'package:food_delivery/utils/widget/background.dart';
import 'package:food_delivery/views/home/widget/search.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        GoogleMap(
          onMapCreated: (GoogleMapController googleMapController) {
            Completer<GoogleMapController> _completer = Completer();
            _completer.complete(googleMapController);
          },
          initialCameraPosition: const CameraPosition(
            target: LatLng(
              45.521563,
              -122.677433,
            ),
            zoom: 11.0,
          ),
        ),
      ],
    )
        // SafeArea(
        //   child: Background(
        //     child: Column(
        //       children: [
        // const Search(),
        // Container(
        //   padding: const EdgeInsets.symmetric(
        //       horizontal: 10.0, vertical: 10.0),
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(16),
        //     color: AppColor.white,
        //     boxShadow: [
        //       BoxShadow(
        //         offset: const Offset(0, 0),
        //         blurRadius: 50.0,
        //         spreadRadius: 0.0,
        //         color: AppColor.kblurColor.withOpacity(0.2),
        //       ),
        //     ],
        //   ),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Text(
        //         'Order Location',
        //         style: AppTextStyle.kTextHeader4.copyWith(
        //           color: AppColor.grey,
        //         ),
        //       ),
        //       const SizedBox(
        //         height: 15.0,
        //       ),
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //         children: [
        //           Image.asset('assets/images/Pinlogo.png'),
        //           SizedBox(
        //             width: MediaQuery.of(context).size.width / 1.5,
        //             child: Text(
        //               '4517 Washington Ave. Manchester, Kentucky 39495',
        //               style: AppTextStyle.kTextHeader3.copyWith(
        //                 fontWeight: FontWeight.normal,
        //                 overflow: TextOverflow.clip,
        //                 fontSize: 15.0,
        //                 height: 1.3,
        //               ),
        //             ),
        //           )
        //         ],
        //       ),
        //       const SizedBox(
        //         height: 20.0,
        //       ),
        //       AuthButton(title: 'Set Location', onTap: () {}),
        //     ],
        //   ),
        // ),
        //       ],
        //     ),
        //   ),
        // ),
        );
  }
}
