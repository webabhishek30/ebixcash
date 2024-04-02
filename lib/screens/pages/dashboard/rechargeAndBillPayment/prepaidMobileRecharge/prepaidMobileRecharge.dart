import 'package:ebixcash/screens/pages/dashboard/rechargeAndBillPayment/prepaidMobileRecharge/selectRechargePlan/selectRechargePlan.dart';
import 'package:flutter/material.dart';

class PrepaidMobileRechargeScreen extends StatefulWidget {
  const PrepaidMobileRechargeScreen({super.key});

  @override
  State<PrepaidMobileRechargeScreen> createState() => _PrepaidMobileRechargeScreenState();
}

class _PrepaidMobileRechargeScreenState extends State<PrepaidMobileRechargeScreen> {

  List recentAccounts = [
    {
      "name" : "Darrell Steward",
      "mobile" : "(629) 555-0129",
      "rechargeAmount" : "499",
      "rechargeDate" : "27 March 2023",
      "companyLogo"  : "assets/images/reliance_jio.png"
    },
    {
      "name" : "Annette Black",
      "mobile" : "(405) 555-0128",
      "rechargeAmount" : "499",
      "rechargeDate" : "27 March 2023",
      "companyLogo"  : "assets/images/reliance_jio.png"
    },
    {
      "name" : "Floyd Miles",
      "mobile" : "(201) 555-0124",
      "rechargeAmount" : "499",
      "rechargeDate" : "27 March 2023",
      "companyLogo"  : "assets/images/airtel.png"
    },
    {
      "name" : "Jane Cooper",
      "mobile" : "(302) 555-0107",
      "rechargeAmount" : "499",
      "rechargeDate" : "27 March 2023",
      "companyLogo"  : "assets/images/reliance_jio.png"
    }
  ];

  List allContacts = [
    {
      "firstName" : "Jacob",
      "lastName" : "Jones",
      "mobile" : "(307) 555-0133"
    },
    {
      "firstName" : "Albert",
      "lastName" : "Flores",
      "mobile" : "(225) 555-0118"
    },
    {
      "firstName" : "Savannah",
      "lastName" : "Nguyen",
      "mobile" : "(207) 555-0119"
    },
    {
      "firstName" : "Ralph",
      "lastName" : "Edwards",
      "mobile" : "(405) 555-0128"
    },
    {
      "firstName" : "Darlene",
      "lastName" : "Robertson",
      "mobile" : "(252) 555-0126"
    },
    {
      "firstName" : "Annette",
      "lastName" : "Black",
      "mobile" : "(480) 555-0103"
    },
    {
      "firstName" : "Leslie",
      "lastName" : "Alexander",
      "mobile" : "(702) 555-0122"
    }
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
        title: const Text("Mobile Recharge", style: TextStyle(
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
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.contacts,
                      color: Color.fromRGBO(197, 197, 197, 1),
                    ),
                    hintText: "Search by name or number",
                    hintStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Montserrat"
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)
                    )
                ),

              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text("Recent Accounts", style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),),
                  ),
                  Container(
                    width: 88,
                    height: 1,
                    color: const Color.fromRGBO(112, 112, 112, 1),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index){
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SelectRechargePlanScreen(
                          fullName: recentAccounts[index]["name"],
                          mobile: recentAccounts[index]["mobile"],
                        )));
                      },
                      child: ListTile(
                        leading: Image.asset(recentAccounts[index]["companyLogo"]),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(recentAccounts[index]["name"], style: const TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 16,
                              fontWeight: FontWeight.w600
                            ),),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(recentAccounts[index]["mobile"], style: const TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 16,
                            ),),
                            const SizedBox(
                              height: 5,
                            ),
                            Text("Last Recharge ${recentAccounts[index]["rechargeAmount"]} on ${recentAccounts[index]["rechargeDate"]}", style: const TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 10,
                            ),),
                          ],
                        ),
                        trailing: IconButton(
                            onPressed: (){
                              showModalBottomSheet(
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      )
                                  ),
                                  builder: (BuildContext context){
                                    return Container(
                                      padding: const EdgeInsets.all(30),
                                      child: ListView(
                                        shrinkWrap: true,
                                        children: [
                                          InkWell(
                                            onTap: (){

                                            },
                                            child: const ListTile(
                                              title: Text("View History", style: TextStyle(
                                                  fontFamily: "Montserrat",
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500
                                              ),),
                                            ),
                                          ),
                                          const Divider(
                                            color: Colors.black12,
                                          ),
                                          InkWell(
                                            onTap: (){

                                            },
                                            child: const ListTile(
                                              title: Text("Delete Account", style: TextStyle(
                                                  fontFamily: "Montserrat",
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.red
                                              ),),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                              );
                            },
                            icon: const Icon(Icons.more_vert)
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index){
                    return const Divider(
                      color: Colors.black12,
                    );
                  },
                  itemCount: recentAccounts.length
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text("All Contacts", style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    ),),
                  ),
                  Container(
                    width: 88,
                    height: 1,
                    color: const Color.fromRGBO(112, 112, 112, 1),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index){
                    String firstName = allContacts[index]["firstName"];
                    String lastName = allContacts[index]["lastName"];
                    String fullName = "$firstName $lastName";
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SelectRechargePlanScreen(
                            fullName: fullName,
                            mobile: allContacts[index]["mobile"],

                        )));
                      },
                      child: ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(
                                colors: [
                                  Color.fromRGBO(252, 196, 232, 1),
                                  Color.fromRGBO(255, 255, 255, 1),
                                ]
                            )
                          ),
                          child: Center(
                            child: Text("${firstName.substring(0,1)}${lastName.substring(0,1)}", style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(174, 32, 128, 1),
                              fontFamily: "Montserrat"
                            ),),
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10
                        ),
                        title: Text("$firstName $lastName", style: const TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(allContacts[index]["mobile"], style: const TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 16,
                          ),),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index){
                    return const Divider(
                      color: Colors.black12,
                    );
                  },
                  itemCount: allContacts.length
              ),
            ],
          ),
        ),
      ),
    );
  }
}
