import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/filter_model.dart';

class FiliterWedgit extends StatefulWidget {
   final FilterModel filter;
  const FiliterWedgit(this.filter,{super.key});

  @override
  State<FiliterWedgit> createState() => _FiliterWedgitState();
}

class _FiliterWedgitState extends State<FiliterWedgit> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value:widget.filter.value, onChanged: 
        widget.filter.onChanged=(value){
            setState(() {
              widget.filter.value=value!;
            });
        },
         activeColor: const Color(0xff4CAF73),
          checkColor: Colors.white,
          side: const BorderSide(
            color: Color(0xffBDBDBD),
            width: 1.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          materialTapTargetSize:
              MaterialTapTargetSize.shrinkWrap,
              
        ),
          Text(
          widget.filter.title,
          style: const TextStyle(
            fontSize: 16,
          ),
          ),

        const SizedBox(width: 8),



      ],
    );
  }
}
