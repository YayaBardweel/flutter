import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  TimeOfDay time = TimeOfDay(hour: 9, minute: 30);
  int currentStep = 0;
  List<String> items = ["مراجعة","تشخيص","عملية"];
  String? selectedItem = 'مراجعة';

  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
    home:Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFB799FF),
          title: Center(
            child: Text(
              "الاضافة",
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: Stepper(
          type: StepperType.vertical,
          steps: getSteps(),
          currentStep: currentStep,
          onStepContinue: (){
            final isLastStep = currentStep == getSteps().length - 1;
            if (isLastStep){
              print("done");

            }else {
              setState(() => currentStep += 1);
            }
          },
          onStepCancel: currentStep == 0 ? null : (){
            setState(() => currentStep -= 1);
          },
        ),
      ),
    )
    );
  }
  List<Step> getSteps() => [
    Step(
        isActive: currentStep >= 1,
        title: Text("اختر نوع الموعد",style: TextStyle(fontFamily: 'Tajawal',fontSize: 20),),
        content: SizedBox(
          width: 150,
          child: DropdownButton<String>(
            value: selectedItem,
            items: items
                .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(item,style: TextStyle(fontSize: 20),),
            ))
                .toList(),
            onChanged: (item) => setState(() {
              selectedItem = item;
            }),
          ),
        )
    ),
    Step(
        isActive: currentStep >= 2,
        title: Text("مكان الموعد",style: TextStyle(fontFamily: 'Tajawal',fontSize: 20),),
        content: Container(
          child: TextField(),
        )
    ),
    Step(
        isActive: currentStep >= 3,

        title: Text("توقيت الموعد",style: TextStyle(fontFamily: 'Tajawal',fontSize: 20)),
        content:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${time.hour}:${time.minute}",
                  style: TextStyle(fontSize: 25),
                ),
                ElevatedButton(
                    child: Text("select Time"),
                    onPressed: () async {
                      TimeOfDay? newTime = await showTimePicker(
                          context: context,
                          initialTime: time
                      );
                      if(newTime == null) return;

                      setState(() {
                        time = newTime;
                      });
                    },
                )
              ],
            ),
          ),

    ),
    Step(
        isActive: currentStep >= 4,
        title: Text("ملاحظات",style: TextStyle(fontFamily: 'Tajawal',fontSize: 20)),
        content: TextField())

  ];
}
