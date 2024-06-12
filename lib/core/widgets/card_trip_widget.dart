import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../screens/google_map_screen.dart';

class CardTripWidget extends StatelessWidget{
  final CityDataModel cityDataModel;
  const CardTripWidget({super.key, required this.cityDataModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
          image: AssetImage("images/backgroundCard.png"),
          opacity: .4,
          alignment: Alignment.centerRight
        )
      ),
      child: Column(
        children: [
          RowCardData(titleData: "Destination : ", valueData: cityDataModel.cityName,),
          const SizedBox(height: 8,),
          RowCardData(titleData: "Price : ", valueData: cityDataModel.price,),
          const SizedBox(height: 8,),
          RowCardData(titleData: "A-Time : ", valueData: cityDataModel.arrivalTime,),
          const SizedBox(height: 8,),
          RowCardData(titleData: "Distance : ", valueData: cityDataModel.kiloMeter,),
          const SizedBox(height: 8,),
          RowCardData(titleData: "Driver Name : ", valueData: cityDataModel.driverName,),
          const SizedBox(height: 8,),
          RowCardData(titleData: "Driver Phone : ", valueData: cityDataModel.driverPhone,),
        ],
      ),
    );
  }
}

// class TripDataModel{
//   final String location;
//   final String destination;
//   final String price;
//   final String establishTime;
//   final String arrivalTime;
//   final String riderName;
//   final String riderPhone;
//   TripDataModel({
//     required this.location,
//     required this.destination,
//     required this.price,
//     required this.establishTime,
//     required this.arrivalTime,
//     required this.riderName,
//     required this.riderPhone
//   });
// }

textStyleForCard(){
  return const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.black
  );
}

class RowCardData extends StatelessWidget{
  final String titleData;
  final String valueData;
  const RowCardData({super.key, required this.titleData, required this.valueData});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text (
            titleData,
            style: textStyleForCard(),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Expanded(
          child: Text (
            valueData,
            style: textStyleForCard(),
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}