import 'package:flutter/material.dart';

class TransferMoneyScreen extends StatefulWidget {
  const TransferMoneyScreen({super.key});

  @override
  State<TransferMoneyScreen> createState() => _TransferMoneyScreenState();
}

class _TransferMoneyScreenState extends State<TransferMoneyScreen> {

  String productValue = 'Select Product';
  var productItems = [
    'Select Product',
    'Forex Card',
    'Cash'
  ];

  String purposeValue = 'Select Purpose';
  var purposeItem = [
    'Select Purpose',
    'Personal Visit',
    'Overseas Education',
    'Business Travel',
    'Employment',
    'Medical Visit'
  ];

  String relationValue = 'Select Relation';
  var relationItem = [
    'Select Relation',
    'My Self',
    'Husband',
    'Wife',
    'Son',
    'Daughter',
    'Father',
    'Mother',
    'Brother',
    'Sister',
    'Grand Daughter',
    'Grand Son'
  ];

  String currencyValue = 'Select Currency';
  var currencyItem = [
    'Select Currency',
    'US Dollar',
    'Swiss Franc',
    'Swedish Krona',
    'South African Rand',
    'Singapore Dollar',
    'Saudi Riyal',
    'New Zealand Dollar',
    'Japanese Yen',
    'Hong Kong Dollar',
    'UAE Dirham',
    'Thai Baht',
    'Euro'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )
        ),
        title: const Text("Transfer Money", style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: "Montserrat",
            color: Colors.black
        ),),
        centerTitle: true,
        actions: [
          Center(
            child: Stack(
              children: [
                IconButton(
                  onPressed: (){
                    Navigator.pushNamed(context, "/dashboard");
                  }, icon: const Icon(Icons.shopping_cart), color: Colors.black,),
                Positioned(
                    right: 2,
                    top: 5,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(192, 38, 138, 1),
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: const Center(
                          child: Text("0", style: TextStyle(
                              fontSize: 10,
                              fontFamily: "Montserrat",
                              color: Colors.white
                          ),)
                      ),
                    )
                )
              ],
            ),
          ),
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, "/dashboard");
            }, icon: Image.asset("assets/images/dashboard.png"), color: Colors.black,)
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                        color: const Color.fromRGBO(225, 225, 225, 1)
                    )
                ),
                child: DropdownButton(
                  padding: const EdgeInsets.all(10),
                  isExpanded: true,
                  underline: const SizedBox(),
                  value: productValue,
                  style: const TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 14,
                      color: Color.fromRGBO(120, 120, 120, 1)
                  ),
                  icon: Image.asset("assets/images/dropdownArrow.png"),
                  items: productItems.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      productValue = newValue!;
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                        color: const Color.fromRGBO(225, 225, 225, 1)
                    )
                ),
                child: DropdownButton(
                  padding: const EdgeInsets.all(10),
                  isExpanded: true,
                  underline: const SizedBox(),
                  value: purposeValue,
                  style: const TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 14,
                      color: Color.fromRGBO(120, 120, 120, 1)
                  ),
                  icon: Image.asset("assets/images/dropdownArrow.png"),
                  items: purposeItem.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      purposeValue = newValue!;
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                        color: const Color.fromRGBO(225, 225, 225, 1)
                    )
                ),
                child: DropdownButton(
                  padding: const EdgeInsets.all(10),
                  isExpanded: true,
                  underline: const SizedBox(),
                  value: currencyValue,
                  style: const TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 14,
                      color: Color.fromRGBO(120, 120, 120, 1)
                  ),
                  icon: Image.asset("assets/images/dropdownArrow.png"),
                  items: currencyItem.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      currencyValue = newValue!;
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Forex Amount",
                      hintStyle: const TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 14,
                          color: Color.fromRGBO(120, 120, 120, 1)
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(225, 225, 225, 1)
                          )
                      )
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Mobile Number",
                      hintStyle: const TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 14,
                          color: Color.fromRGBO(120, 120, 120, 1)
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(225, 225, 225, 1)
                          )
                      )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 65,
        child: ElevatedButton(
            style: const ButtonStyle(
                shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero
                    )
                ),
                backgroundColor: MaterialStatePropertyAll(
                    Color.fromRGBO(185, 26, 129, 1)
                )
            ),
            onPressed: (){

            },
            child: Text(
              "Add to cart".toUpperCase(),
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  fontFamily: "Montserrat"
              ),
            )
        ),
      ),
    );
  }
}
