import 'package:flutter/material.dart';

class FilterByMonth extends StatefulWidget {
  const FilterByMonth({super.key});

  @override
  State<FilterByMonth> createState() => _FilterByMonthState();
}

class _FilterByMonthState extends State<FilterByMonth> {


  List monthList = [
    {
      "monthName" : "January",
      "year" : "2023",
      "value" : false
    },
    {
      "monthName" : "February",
      "year" : "2023",
      "value" : false
    },
    {
      "monthName" : "March",
      "year" : "2023",
      "value" : false
    },
    {
      "monthName" : "April",
      "year" : "2023",
      "value" : false
    },
    {
      "monthName" : "May",
      "year" : "2023",
      "value" : false
    },
    {
      "monthName" : "June",
      "year" : "2023",
      "value" : false
    },
    {
      "monthName" : "July",
      "year" : "2023",
      "value" : false
    },
    {
      "monthName" : "August",
      "year" : "2023",
      "value" : false
    },
    {
      "monthName" : "September",
      "year" : "2023",
      "value" : false
    },
    {
      "monthName" : "October",
      "year" : "2023",
      "value" : false
    },
    {
      "monthName" : "November",
      "year" : "2023",
      "value" : false
    },
    {
      "monthName" : "December",
      "year" : "2023",
      "value" : false
    },
  ];



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          top: 20,
      ),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(

          )
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Image.asset("assets/images/close.png"),
                )
              ],
            ),
          ),
          const Center(
            child: Text("Choose Month",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  fontFamily: "Montserrat"
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: 1,
              width: 88,
              color: const Color.fromRGBO(112, 112, 112, 1),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 20.0,
                    left: 20,
                    right: 20
                ),
                child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemCount: monthList.length,
                    itemBuilder: (BuildContext context, int index){
                      return CheckboxListTile(
                          contentPadding: EdgeInsets.zero,
                          checkColor: const Color.fromRGBO(48, 183, 231, 1),
                          fillColor: const MaterialStatePropertyAll<Color>(Colors.white),

                          side: monthList[index]["value"] ? const BorderSide(
                            color: Color.fromRGBO(48, 183, 231, 1),
                            width: 2
                          ) : const BorderSide(
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                          title: Text("${monthList[index]["monthName"]} ${monthList[index][
                          "year"]}", style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: "Montserrat",
                              fontSize: 14
                          ),),
                          selected: monthList[index]["value"],
                          value: monthList[index]["value"],
                          onChanged: (value){
                            setState(() {
                              monthList[index]["value"] = value;
                              print(monthList[index]["monthName"]);
                            });
                          }
                      );
                    }, separatorBuilder: (BuildContext context, int index) {
                      return const Divider(
                        height: 1,
                        color: Color.fromRGBO(221, 221, 221, 1),
                      );
                },
                ),
              )
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 65,
              color: const Color.fromRGBO(185, 26, 129, 1),
              child: const Center(
                child: Text("APPLY", style: TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.white
                ),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
