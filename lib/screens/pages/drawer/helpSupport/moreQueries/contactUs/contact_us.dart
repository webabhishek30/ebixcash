import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {

  final _formKey = GlobalKey<FormState>();

  String? _selectedCategory;

  List<String> category = [
    "Jobs",
    "Complaint",
    "Others"
  ];


  String? _selectedIndustry;

  List<String> industry = [
    "Receive Money in India",
    "Bill Payments",
    "Send Money in India (Domestic Transfer)",
    "Aadhaar Enablement Payment",
    "Micro ATM",
    "POS Machines",
    "Gift card",
    "Prepaid Cards",
    "Flights, Hotels",
    "Rail Tickets"
  ];

  String? _selectedCountry;

  List<String> countryList = ["Afghanistan","Albania","Algeria","Andorra","Angola","Anguilla","Antigua &amp; Barbuda","Argentina","Armenia","Aruba","Australia","Austria","Azerbaijan","Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bermuda","Bhutan","Bolivia","Bosnia &amp; Herzegovina","Botswana","Brazil","British Virgin Islands","Brunei","Bulgaria","Burkina Faso","Burundi","Cambodia","Cameroon","Cape Verde","Cayman Islands","Chad","Chile","China","Colombia","Congo","Cook Islands","Costa Rica","Cote D Ivoire","Croatia","Cruise Ship","Cuba","Cyprus","Czech Republic","Denmark","Djibouti","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea","Estonia","Ethiopia","Falkland Islands","Faroe Islands","Fiji","Finland","France","French Polynesia","French West Indies","Gabon","Gambia","Georgia","Germany","Ghana","Gibraltar","Greece","Greenland","Grenada","Guam","Guatemala","Guernsey","Guinea","Guinea Bissau","Guyana","Haiti","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Isle of Man","Israel","Italy","Jamaica","Japan","Jersey","Jordan","Kazakhstan","Kenya","Kuwait","Kyrgyz Republic","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macau","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Mauritania","Mauritius","Mexico","Moldova","Monaco","Mongolia","Montenegro","Montserrat","Morocco","Mozambique","Namibia","Nepal","Netherlands","Netherlands Antilles","New Caledonia","New Zealand","Nicaragua","Niger","Nigeria","Norway","Oman","Pakistan","Palestine","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Poland","Portugal","Puerto Rico","Qatar","Reunion","Romania","Russia","Rwanda","Saint Pierre &amp; Miquelon","Samoa","San Marino","Satellite","Saudi Arabia","Senegal","Serbia","Seychelles","Sierra Leone","Singapore","Slovakia","Slovenia","South Africa","South Korea","Spain","Sri Lanka","St Kitts &amp; Nevis","St Lucia","St Vincent","St. Lucia","Sudan","Suriname","Swaziland","Sweden","Switzerland","Syria","Taiwan","Tajikistan","Tanzania","Thailand","Timor L'Este","Togo","Tonga","Trinidad &amp; Tobago","Tunisia","Turkey","Turkmenistan","Turks &amp; Caicos","Uganda","Ukraine","United Arab Emirates","United Kingdom","Uruguay","Uzbekistan","Venezuela","Vietnam","Virgin Islands (US)","Yemen","Zambia","Zimbabwe"];

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
        title: const Text("Contact Us", style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: "Montserrat",
            color: Colors.black
        ),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, "/dashboard");
            }, icon: Image.asset("assets/images/dashboard.png"), color: Colors.black,)
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "First Name",
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(120, 120, 120, 1),
                          fontSize: 14,
                          fontFamily: "Montserrat"
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(225, 225, 225, 1)
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Please enter first name.";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Last Name",
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(120, 120, 120, 1),
                          fontSize: 14,
                          fontFamily: "Montserrat"
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(225, 225, 225, 1)
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Please enter last name.";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "Mobile Number",
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(120, 120, 120, 1),
                          fontSize: 14,
                          fontFamily: "Montserrat"
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(225, 225, 225, 1)
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Please enter mobile number.";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  DropdownButtonFormField(
                      icon: Image.asset("assets/images/select_dropdown_arrow.png"),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Please select category.";
                        }
                        return null;
                      },
                      isExpanded: true,
                      decoration: InputDecoration(
                        hintText: "Category",
                        hintStyle: const TextStyle(
                            color: Color.fromRGBO(120, 120, 120, 1),
                            fontSize: 14,
                            fontFamily: "Montserrat"
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(225, 225, 225, 1)
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      ),
                      value: _selectedCategory,
                      items: category.map((String val){
                        return DropdownMenuItem<String>(
                          value: val,
                          child: Text(val),
                        );
                      }).toList(),
                      onChanged: (value){
                        setState(() {
                          _selectedCategory = value!;
                        });
                      }
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(120, 120, 120, 1),
                          fontSize: 14,
                          fontFamily: "Montserrat"
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(225, 225, 225, 1)
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Please enter your email address.";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  DropdownButtonFormField(
                      icon: Image.asset("assets/images/select_dropdown_arrow.png"),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Please select country.";
                        }
                        return null;
                      },
                      isExpanded: true,
                      decoration: InputDecoration(
                        hintText: "Country",
                        hintStyle: const TextStyle(
                            color: Color.fromRGBO(120, 120, 120, 1),
                            fontSize: 14,
                            fontFamily: "Montserrat"
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(225, 225, 225, 1)
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      ),
                      value: _selectedCountry,
                      items: countryList.map((String val){
                        return DropdownMenuItem<String>(
                          value: val,
                          child: Text(val),
                        );
                      }).toList(),
                      onChanged: (value){
                        setState(() {
                          _selectedCountry = value!;
                        });
                      }
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  DropdownButtonFormField(
                      icon: Image.asset("assets/images/select_dropdown_arrow.png"),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Please select industry.";
                        }
                        return null;
                      },
                      isExpanded: true,
                      decoration: InputDecoration(
                        hintText: "Industry",
                        hintStyle: const TextStyle(
                            color: Color.fromRGBO(120, 120, 120, 1),
                            fontSize: 14,
                            fontFamily: "Montserrat"
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(225, 225, 225, 1)
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      ),
                      value: _selectedIndustry,
                      items: industry.map((String val){
                        return DropdownMenuItem<String>(
                          value: val,
                          child: Text(val),
                        );
                      }).toList(),
                      onChanged: (value){
                        setState(() {
                          _selectedIndustry = value!;
                        });
                      }
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: "Write your query...",
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(120, 120, 120, 1),
                          fontSize: 14,
                          fontFamily: "Montserrat"
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(225, 225, 225, 1)
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Please enter your query.";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: "Additional information (Optional)",
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(120, 120, 120, 1),
                          fontSize: 14,
                          fontFamily: "Montserrat"
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(225, 225, 225, 1)
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              )
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 65,
        width: MediaQuery.of(context).size.width,
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
              final isValid = _formKey.currentState?.validate();
              if(!isValid!){
                return;
              }
              print(_selectedCategory);
              _formKey.currentState?.save();
              showDialog(
                  context: context,
                  builder: (context){
                    Future.delayed(const Duration(seconds: 3), () {
                      Navigator.of(context).pop();
                    });

                    // Return the AlertDialog widget
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      contentPadding: const EdgeInsets.all(40),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/checkmark.png"),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            "Congratulations! Your request has been accepted.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                fontFamily: "Montserrat"
                            ),
                          )
                        ],
                      ),
                    );
                  }
              );
              Future.delayed(const Duration(seconds: 4), () {
                Navigator.of(context).pop();
              });
            },
            child: Text(
              "Submit Request".toUpperCase(),
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
