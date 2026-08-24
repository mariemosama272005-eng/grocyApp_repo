import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        TextFormField(
              onTapOutside: (event) {
                FocusScope.of(context).unfocus();
              },
              cursorColor: Colors.green,
              
              decoration: InputDecoration(
                fillColor: Color(0xffF2F3F2),
                filled: true,
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left:15),
                  child: Icon(Icons.search),
                ),
                label:Text("Search Store",style: TextStyle(
                  fontWeight:FontWeight(600),
                  color: Color(0xff7C7C7C),
        
                ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15)
        
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15)
        
                ),
              ),
            ),
      ],
    );
  }
}