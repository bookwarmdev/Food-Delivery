 import 'package:flutter/material.dart';
import 'package:food_delivery/utils/ui.dart';
import 'package:food_delivery/views/buy/buy.dart';
import 'package:food_delivery/views/home/home.dart';
 
class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  // final Completer<GoogleMapController> _completer = Completer();

  // static const LatLng _center = LatLng(
  //   6.4141,
  //   4.0887,
  // );

  // void _onMapCreated(GoogleMapController googleMapController) {
  //   _completer.complete(googleMapController);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? 'assets/images/setLocation.png'
                  : 'assets/images/setLocation1.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // GoogleMap(
            //   onMapCreated: _onMapCreated,
            //   initialCameraPosition: const CameraPosition(
            //     target: _center,
            //     zoom: 11.0,
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Container(
                margin: const EdgeInsets.only(top: 30.0),
                child: const Search(),
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 10.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: MediaQuery.of(context).platformBrightness ==
                            Brightness.light
                        ? AppColor.white
                        : AppColor.dark.withOpacity(0.8),
                    boxShadow: MediaQuery.of(context).platformBrightness ==
                            Brightness.light
                        ? [
                            BoxShadow(
                              offset: const Offset(0, 0),
                              blurRadius: 50.0,
                              spreadRadius: 0.0,
                              color: AppColor.kblurColor.withOpacity(0.2),
                            ),
                          ]
                        : AppColor.appContanerShadowDark,
                  ),
                  height: 181.0,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Order Location',
                        style: AppTextStyle.kTextHeader4.copyWith(
                          color: AppColor.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/images/Pinlogo.png'),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.5,
                            child: Text(
                              '4517 Washington Ave. Manchester, Kentucky 39495',
                              style: AppTextStyle.kTextHeader3.copyWith(
                                fontWeight: FontWeight.normal,
                                overflow: TextOverflow.clip,
                                fontSize: 15.0,
                                height: 1.3,
                                color:
                                    MediaQuery.of(context).platformBrightness ==
                                            Brightness.light
                                        ? AppColor.black
                                        : AppColor.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      AuthButton(
                        title: 'Set Location',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Trackorder(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
