import 'package:flutter/material.dart';

import 'Widget/TaskFormField.dart';

class TipCalculator extends StatefulWidget {
  const TipCalculator({super.key});

  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {
  final formKey = GlobalKey<FormState>();

  final  totalBillController = TextEditingController();
  final  totalTipController = TextEditingController();
  final  totalPeopleController = TextEditingController();

  static const Color containerColor = Color(0xffF5F8FB);
  static const Color textBlack = Color(0xff232323);
  static const Color textLightBlack = Color(0xff717171);
  static const Color clearButtonColor= Color(0xffFF7511);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tip Calculator", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.black87)),
        centerTitle: true,
        elevation: 4,
        shadowColor: Colors.black.withOpacity(0.3),
        backgroundColor: Colors.white70,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    const Text("Total Bill"),
                    Text("\$ ${totalBillController.text}", style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w700, color: textBlack)),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Person", style: TextStyle(color: textLightBlack)),
                        Text("Tip Amount", style: TextStyle(color: textLightBlack)),
                      ],
                    ),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("05", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: textBlack)),
                        Text("\$ 20.0", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: textBlack))
                      ],
                    )

                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.all(15),
                child: const Row(
                  mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Amount Per Person", style: TextStyle(color: textLightBlack)),
                    Text("\$ 20.0", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: textBlack))
                  ],
                ),
              ),
              TaskFormField(
                controller: totalBillController,
                title: "Total Bill",
                hintText: "Please enter total bill",
                iconData: Icons.attach_money,
              ),
              TaskFormField(
                controller: totalTipController,
                title: "Tip Percentage",
                hintText: "Please enter tip percentage",
                iconData: Icons.percent,
              ),
              TaskFormField(
                controller: totalPeopleController,
                title: "Number of people",
                hintText: "Please enter total number",
              ),


              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      formKey.currentState!.validate();
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top:20), padding: const EdgeInsets.symmetric(vertical:10, horizontal:45), decoration: BoxDecoration(
                        color: Colors.black87, borderRadius: BorderRadius.circular(10)
                    ),
                      alignment: Alignment.center,
                      child: const Text("Calculate", style: TextStyle(color:Colors.white)),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      margin: const EdgeInsets.only(top:20), padding: const EdgeInsets.symmetric(vertical:10, horizontal:45), decoration: BoxDecoration(
                        color: clearButtonColor, borderRadius: BorderRadius.circular(10)
                    ),
                      child: const Text("Clear", style: TextStyle(color:Colors.white)),
                    ),
                  )
                ],
              )
            ],

          ),
        ),
      ),
    );
  }
}