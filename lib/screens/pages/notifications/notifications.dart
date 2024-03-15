import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';


class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

  List _elements = [
    {'title': 'Flash Sale starting tomorrow!', 'group': 'Today', 'time': "03:15 PM", 'logo': "assets/images/notification-logo.png"},
    {'title': 'Flat 50% on all Domestic flights, book now!', 'group': 'Today', 'time': "03:15 PM", 'logo': "assets/images/notification-logo.png"},
    {'title': 'Flash Sale starting tomorrow!', 'group': 'Today', 'time': "03:15 PM", 'logo': "assets/images/notification-logo.png"},
    {'title': 'Flat 50% on all Domestic flights, book now!', 'group': 'Today', 'time': "03:15 PM", 'logo': "assets/images/notification-logo.png"},
    {'title': 'Flash Sale starting tomorrow!', 'group': 'Today', 'time': "03:15 PM", 'logo': "assets/images/notification-logo.png"},
    {'title': 'Flat 50% on all Domestic flights, book now!', 'group': 'Today', 'time': "03:15 PM", 'logo': "assets/images/notification-logo.png"},
    {'title': 'Flash Sale starting tomorrow!', 'group': 'Yesterday', 'time': "03:15 PM", 'logo': "assets/images/notification-logo.png"},
    {'title': 'Flat 50% on all Domestic flights, book now!', 'group': 'Yesterday', 'time': "03:15 PM", 'logo': "assets/images/notification-logo.png"},
    {'title': 'Flash Sale starting tomorrow!', 'group': 'Yesterday', 'time': "03:15 PM", 'logo': "assets/images/notification-logo.png"},
    {'title': 'Flat 50% on all Domestic flights, book now!', 'group': 'Yesterday', 'time': "03:15 PM", 'logo': "assets/images/notification-logo.png"},
    {'title': 'Flash Sale starting tomorrow!', 'group': 'Yesterday', 'time': "03:15 PM", 'logo': "assets/images/notification-logo.png"},
    {'title': 'Flat 50% on all Domestic flights, book now!', 'group': 'Yesterday', 'time': "03:15 PM", 'logo': "assets/images/notification-logo.png"},
    {'title': 'Flash Sale starting tomorrow!', 'group': 'Yesterday', 'time': "03:15 PM", 'logo': "assets/images/notification-logo.png"},
    {'title': 'Flat 50% on all Domestic flights, book now!', 'group': 'Yesterday', 'time': "03:15 PM", 'logo': "assets/images/notification-logo.png"},

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
        title: const Text("Notifications", style: TextStyle(
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
        physics: const ScrollPhysics(),
        child: GroupedListView<dynamic, String>(
          shrinkWrap: true,
          elements: _elements,
          groupBy: (element) => element['group'],
          groupComparator: (value1, value2) => value2.compareTo(value1),
          itemComparator: (item1, item2) =>
              item1['title'].compareTo(item2['title']),
          order: GroupedListOrder.DESC,
          useStickyGroupSeparators: true,
          groupSeparatorBuilder: (String value) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  children: [
                    Text(
                      value,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 88,
                      height: 1,
                      color: const Color.fromRGBO(112, 112, 112, 1),
                    )
                  ],
                ),
            )
          ),
          itemBuilder: (c, element) {
            return Padding(
                padding: const EdgeInsets.only(left: 20, right: 20,),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      leading: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Image.asset(element['logo']),
                      ),
                      title: Text(element['title'], style: const TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 16,
                          fontWeight: FontWeight.w700
                      ),),
                      trailing: Text(element['time'], style: const TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 10,
                          color: Color.fromRGBO(129, 129, 129, 1)
                      ),),
                    ),
                    const Divider(
                      color: Colors.black12,
                    )
                  ],
                )
            );
          },
        ),
      ),
    );
  }
}
