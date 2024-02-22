import 'package:ebixcash/screens/pages/drawer/myTransaction/recentTransaction/recent_transaction.dart';
import 'package:flutter/material.dart';

class SavedCards extends StatefulWidget {
  const SavedCards({super.key});

  @override
  State<SavedCards> createState() => _SavedCardsState();
}

class _SavedCardsState extends State<SavedCards> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  bool favouriteAmwayCard = false;
  bool favouritePrepaidCard = false;
  bool favouriteNSLDCard = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

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
        title: const Text("Saved Cards", style: TextStyle(
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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                color: Colors.white,
                child: TabBar(
                    controller: _tabController,
                    isScrollable: true,
                    indicatorColor: Colors.transparent,
                    tabs: [
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/ebixcash-amway-card.png", width: 330, height: 208,),
                            Container(
                              width: 330,
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: (){
                                     setState(() {
                                       showDialog(context: context, builder: (BuildContext context) {
                                         return Center(
                                           child: Container(
                                             width: MediaQuery.of(context).size.width,
                                             height: 250,
                                             margin: const EdgeInsets.symmetric(
                                               horizontal: 20
                                             ),
                                             padding: const EdgeInsets.all(40),
                                             decoration: BoxDecoration(
                                               borderRadius: BorderRadius.circular(15),
                                               color: Colors.white
                                             ),
                                             child: Column(
                                               children: [
                                                 const DefaultTextStyle(
                                                   style: TextStyle(
                                                       fontSize: 16,
                                                       fontFamily: "Montserrat",
                                                       fontWeight: FontWeight.w700,
                                                       color: Color.fromRGBO(24, 24, 24, 1)
                                                   ),
                                                   child: Text(
                                                     "Please confirm if you want to remove card?",
                                                     textAlign: TextAlign.center,
                                                     softWrap: true,
                                                     ),
                                                 ),
                                                 const SizedBox(
                                                   height: 80,
                                                 ),
                                                 Row(
                                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                   children: [
                                                     SizedBox(
                                                       height: 46,
                                                       child: TextButton(
                                                           style: ButtonStyle(
                                                               padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
                                                                   EdgeInsets.symmetric(
                                                                       horizontal: 40
                                                                   )
                                                               ),
                                                               shape: MaterialStatePropertyAll(
                                                                   RoundedRectangleBorder(
                                                                       borderRadius: BorderRadius.circular(25)
                                                                   )
                                                               )
                                                           ),
                                                           onPressed: (){
                                                             Navigator.pop(context);
                                                           },
                                                           child: const Text(
                                                             "Cancel",
                                                             style: TextStyle(
                                                                 fontSize: 14,
                                                                 fontFamily: "Montserrat",
                                                                 fontWeight: FontWeight.w600
                                                             ),
                                                           )
                                                       ),
                                                     ),
                                                     SizedBox(
                                                       height: 46,
                                                       child: ElevatedButton(
                                                           style: ButtonStyle(
                                                               padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
                                                                 EdgeInsets.symmetric(
                                                                   horizontal: 40
                                                                 )
                                                               ),
                                                               backgroundColor: const MaterialStatePropertyAll<Color>(
                                                                   Color.fromRGBO(185, 26, 129, 1)
                                                               ),
                                                               shape: MaterialStatePropertyAll(
                                                                   RoundedRectangleBorder(
                                                                       borderRadius: BorderRadius.circular(25)
                                                                   )
                                                               )
                                                           ),
                                                           onPressed: (){

                                                           },
                                                           child: const Text(
                                                             "Confirm",
                                                             style: TextStyle(
                                                                 fontSize: 14,
                                                                 color: Colors.white,
                                                                 fontFamily: "Montserrat"
                                                             ),
                                                           )
                                                       ),
                                                     )
                                                   ],
                                                 )
                                                 
                                               ],
                                             ),
                                           ),
                                         );
                                       });
                                     });
                                    },
                                    child: Row(
                                      children: [
                                        Image.asset("assets/images/remove_icon.png"),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          "Remove card",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: "Montserrat",
                                              color: Colors.black
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        favouriteAmwayCard = !favouriteAmwayCard;
                                        final snackBar = SnackBar(
                                            elevation: 0,
                                            behavior: SnackBarBehavior.floating,
                                            margin: const EdgeInsets.all(20),
                                            padding: const EdgeInsets.all(20),
                                            backgroundColor: favouriteAmwayCard ? Colors.green.shade50 : Colors.red.shade50,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                            content: favouriteAmwayCard ?
                                            const Text(
                                              "Card has been added in your favourite list.",
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontFamily: "Montserrat",
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700
                                              ),
                                            ) :
                                            const Text(
                                              "Card has been removed from your favourite list.",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontFamily: "Montserrat",
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700
                                              ),
                                            )
                                        );
                                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Switch(
                                            value: favouriteAmwayCard,
                                            onChanged: (value){
                                              setState(() {
                                                favouriteAmwayCard = value;
                                              });
                                            }
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          "Add to Favorites",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: "Montserrat",
                                              color: Colors.black
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/ebixcash-prepaid-card.png", width: 330, height: 208,),
                            Container(
                              width: 330,
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: (){},
                                    child: Row(
                                      children: [
                                        Image.asset("assets/images/remove_icon.png"),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          "Remove card",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "Montserrat",
                                            color: Colors.black
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        favouritePrepaidCard = !favouritePrepaidCard;
                                        final snackBar = SnackBar(
                                            elevation: 0,
                                            behavior: SnackBarBehavior.floating,
                                            margin: const EdgeInsets.all(20),
                                            padding: const EdgeInsets.all(20),
                                            backgroundColor: favouritePrepaidCard ? Colors.green.shade50 : Colors.red.shade50,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                            content: favouritePrepaidCard ?
                                            const Text(
                                              "Card has been added in your favourite list.",
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontFamily: "Montserrat",
                                                  fontSize: 12
                                              ),
                                            ) :
                                            const Text(
                                              "Card has been removed from your favourite list.",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontFamily: "Montserrat",
                                                  fontSize: 12
                                              ),
                                            )
                                        );
                                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Switch(
                                            value: favouritePrepaidCard,
                                            onChanged: (value){
                                              setState(() {
                                                favouritePrepaidCard = value;
                                              });
                                            }
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          "Add to Favorites",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: "Montserrat",
                                              color: Colors.black
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/ebixcash-nsdl-prepaid-card.png", width: 330, height: 208,),
                            Container(
                              width: 330,
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: (){},
                                    child: Row(
                                      children: [
                                        Image.asset("assets/images/remove_icon.png"),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          "Remove card",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: "Montserrat",
                                              color: Colors.black
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        favouriteNSLDCard = !favouriteNSLDCard;
                                        final snackBar = SnackBar(
                                            elevation: 0,
                                            behavior: SnackBarBehavior.floating,
                                            margin: const EdgeInsets.all(20),
                                            padding: const EdgeInsets.all(20),
                                            backgroundColor: favouriteNSLDCard ? Colors.green.shade50 : Colors.red.shade50,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)
                                            ),
                                            content: favouriteNSLDCard ?
                                            const Text(
                                                "Card has been added in your favourite list.",
                                              style: TextStyle(
                                                color: Colors.green,
                                                fontFamily: "Montserrat",
                                                fontSize: 12
                                              ),
                                            ) :
                                            const Text(
                                              "Card has been removed from your favourite list.",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontFamily: "Montserrat",
                                                  fontSize: 12
                                              ),
                                            )
                                        );
                                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Switch(
                                            value: favouriteNSLDCard,
                                            onChanged: (value){
                                              setState(() {
                                                favouriteNSLDCard = value;
                                              });
                                            }
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          "Add to Favorites",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: "Montserrat",
                                              color: Colors.black
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]
                ),
              ),
            ),


            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text("Recent Transaction",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TabBarView(
                    controller: _tabController,
                    children: const [
                      RecentTransaction(),
                      RecentTransaction(),
                      RecentTransaction()
                    ]
                ),
              ),
            )
          ],
        )
    );
  }
}
