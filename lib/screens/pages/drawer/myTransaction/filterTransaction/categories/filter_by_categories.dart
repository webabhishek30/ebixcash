import 'package:flutter/material.dart';

class FilterByCategories extends StatefulWidget {
  const FilterByCategories({super.key});

  @override
  State<FilterByCategories> createState() => _FilterByCategoriesState();
}

class _FilterByCategoriesState extends State<FilterByCategories> {

  List categoriesList = [
    {
      "categoryName" : "Merchant Payments",
      "value" : false
    },
    {
      "categoryName" : "Merchant Refunds",
      "value" : false
    },
    {
      "categoryName" : "Money Received",
      "value" : false
    },
    {
      "categoryName" : "Money Sent",
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
            child: Text("Categories",
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
                  itemCount: categoriesList.length,
                  itemBuilder: (BuildContext context, int index){
                    return CheckboxListTile(
                        contentPadding: EdgeInsets.zero,
                        checkColor: const Color.fromRGBO(48, 183, 231, 1),
                        fillColor: MaterialStatePropertyAll<Color>(Colors.white),

                        side: categoriesList[index]["value"] ? const BorderSide(
                            color: Color.fromRGBO(48, 183, 231, 1),
                            width: 2
                        ) : const BorderSide(
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                        title: Text("${categoriesList[index]["categoryName"]}", style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: "Montserrat",
                            fontSize: 14
                        ),),
                        selected: categoriesList[index]["value"],
                        value: categoriesList[index]["value"],
                        onChanged: (value){
                          setState(() {
                            categoriesList[index]["value"] = value;
                            print(categoriesList[index]["categoryName"]);
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
