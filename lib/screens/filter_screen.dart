import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/filter_model.dart';
import 'package:flutter_application_2/models/normalButton_model.dart';
import 'package:flutter_application_2/screens/widgets/filiter_wedgit.dart';
import 'package:flutter_application_2/screens/widgets/normalButton_wedgit.dart';

class FilterScreen extends StatefulWidget {

  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
   
  bool eggs = true;
  bool noodles = false;
  bool chips = false;
  bool fastFood = false;

  
  bool individual = false;
  bool cocola = true;
  bool ifad = false;
  bool kazi = false;
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     
      appBar:
      AppBar(
        leading:Icon(Icons.arrow_back_ios) ,
        
        
        title: Text("Filters"),
        centerTitle: true,
      ),
      body:Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffF2F3F2),
          borderRadius: BorderRadius.circular(20),
          
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text("Categories",style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(
            height: 24,
          ),
           ...categories.map(
              (filter) => FiliterWedgit(filter),
            ),
            SizedBox(
              height: 40,
            ),
            Text("Brands",style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          ),
          ...brands.map(
            (filter) => FiliterWedgit(filter)
          ),
          SizedBox(height: 100,),
          NormalButtonWedgit(button: NormalbuttonModel("Apply Filiter")),
          SizedBox(
            height: 15,
          )
          
          ]
        ),
        



      ),
    );
  }
}
   List<FilterModel> categories = [
    FilterModel(
      value: true,
      title: "Eggs",
    ),

    FilterModel(
      value: false,
      title: "Noodles",
    ),

    FilterModel(
      value: false,
      title: "Chips",
    ),

    FilterModel(
      value: false,
      title: "Fast Food",
    ),
  ];

  List<FilterModel> brands = [
    FilterModel(
      value: false,
      title: "Individual",
    ),

    FilterModel(
      value: true,
      title: "Cocola",
    ),

    FilterModel(
      value: false,
      title: "IFAD",
    ),

    FilterModel(
      value: false,
      title: "Kazi famous",
    ),
  ];

  