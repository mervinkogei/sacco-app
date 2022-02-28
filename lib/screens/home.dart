import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anchor M-Sacco"),
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Center(
                child: ListTile(
                  leading: Image(
                    image: AssetImage(
                      "images/profile.png",
                    ),
                    color: Colors.white,
                    // width: 120,  
                  ),
                  title: Text("Welcome Member"),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person_add_alt_1_outlined),
              title: const Text('Update profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.verified_user_outlined),
              title: const Text('Membership Status'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications_active),
              title: const Text('Notifications'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            //start of Home Section
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 160,
                              width: 160,
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, top: 8, bottom: 8),
                                      child: ListTile(
                                        leading: Image(
                                          image: AssetImage(
                                            "images/transact.png",
                                          ),
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Transactions",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.teal),
                                    )
                                  ],
                                ),
                                elevation: 5,
                                shadowColor: Colors.green,
                                margin: EdgeInsets.all(20),
                              ),
                            ),
                            Container(
                              height: 160,
                              width: 160,
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, top: 8, bottom: 8),
                                      child: ListTile(
                                        leading: Image(
                                          image: AssetImage(
                                            "images/statement.png",
                                          ),
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Statements",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.teal),
                                    )
                                  ],
                                ),
                                elevation: 8,
                                shadowColor: Colors.green,
                                margin: EdgeInsets.all(20),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 160,
                              width: 160,
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, top: 8, bottom: 8),
                                      child: ListTile(
                                        leading: Image(
                                          image: AssetImage(
                                            "images/bank.png",
                                          ),
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Loan Inquiry",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.teal),
                                    )
                                  ],
                                ),
                                elevation: 8,
                                shadowColor: Colors.green,
                                margin: EdgeInsets.all(20),
                              ),
                            ),
                            Container(
                              height: 160,
                              width: 160,
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, top: 8, bottom: 8),
                                      child: ListTile(
                                        leading: Image(
                                          image: AssetImage(
                                            "images/apply.png",
                                          ),
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Apply Loan",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.teal),
                                    )
                                  ],
                                ),
                                elevation: 8,
                                shadowColor: Colors.green,
                                margin: EdgeInsets.all(20),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                     Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 160,
                              width: 160,
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, top: 8, bottom: 8),
                                      child: ListTile(
                                        leading: Image(
                                          image: AssetImage(
                                            "images/account_setting.png",
                                          ),
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Account Setting",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.teal),
                                    )
                                  ],
                                ),
                                elevation: 8,
                                shadowColor: Colors.green,
                                margin: EdgeInsets.all(20),
                              ),
                            ),
                           
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            //End of Home Section

            //Start of Balance Section
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 160,
                              width: 160,
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, top: 8, bottom: 8),
                                      child: ListTile(
                                        leading: Image(
                                          image: AssetImage(
                                            "images/calendar.png",
                                          ),
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Loan Schedule",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.teal),
                                    )
                                  ],
                                ),
                                elevation: 5,
                                shadowColor: Colors.green,
                                margin: EdgeInsets.all(20),
                              ),
                            ),
                            Container(
                              height: 160,
                              width: 160,
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, top: 8, bottom: 8),
                                      child: ListTile(
                                        leading: Image(
                                          image: AssetImage(
                                            "images/balance.png",
                                          ),
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Loan Balance",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.teal),
                                    )
                                  ],
                                ),
                                elevation: 8,
                                shadowColor: Colors.green,
                                margin: EdgeInsets.all(20),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 160,
                              width: 160,
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, top: 8, bottom: 8),
                                      child: ListTile(
                                        leading: Image(
                                          image: AssetImage(
                                            "images/loanbal.png",
                                          ),
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Loan Arrears",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.teal),
                                    )
                                  ],
                                ),
                                elevation: 8,
                                shadowColor: Colors.green,
                                margin: EdgeInsets.all(20),
                              ),
                            ),
                            Container(
                              height: 160,
                              width: 160,
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, top: 8, bottom: 8),
                                      child: ListTile(
                                        leading: Image(
                                          image: AssetImage(
                                            "images/acc_balance.png",
                                          ),
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Account Balance",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.teal),
                                    )
                                  ],
                                ),
                                elevation: 8,
                                shadowColor: Colors.green,
                                margin: EdgeInsets.all(20),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            //End of Balance Section

            //Start of Inquiries Section
             Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 160,
                              width: 160,
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, top: 8, bottom: 8),
                                      child: ListTile(
                                        leading: Image(
                                          image: AssetImage(
                                            "images/status.png",
                                          ),
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Loan Status",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.teal),
                                    )
                                  ],
                                ),
                                elevation: 5,
                                shadowColor: Colors.green,
                                margin: EdgeInsets.all(20),
                              ),
                            ),
                            Container(
                              height: 160,
                              width: 160,
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, top: 8, bottom: 8),
                                      child: ListTile(
                                        leading: Image(
                                          image: AssetImage(
                                            "images/balance.png",
                                          ),
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Balance Inquiry",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.teal),
                                    )
                                  ],
                                ),
                                elevation: 8,
                                shadowColor: Colors.green,
                                margin: EdgeInsets.all(20),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    // Column(
                    //   children: [
                    //     Row(
                    //       children: [
                    //         Container(
                    //           height: 160,
                    //           width: 160,
                    //           child: Card(
                    //             child: Column(
                    //               children: [
                    //                 Padding(
                    //                   padding: const EdgeInsets.only(
                    //                       left: 8.0, top: 8, bottom: 8),
                    //                   child: ListTile(
                    //                     leading: Image(
                    //                       image: AssetImage(
                    //                         "images/loanbal.png",
                    //                       ),
                    //                       color: Colors.blue,
                    //                     ),
                    //                   ),
                    //                 ),
                    //                 Text(
                    //                   "Loan Arrears",
                    //                   style: TextStyle(
                    //                       fontWeight: FontWeight.bold,
                    //                       color: Colors.teal),
                    //                 )
                    //               ],
                    //             ),
                    //             elevation: 8,
                    //             shadowColor: Colors.green,
                    //             margin: EdgeInsets.all(20),
                    //           ),
                    //         ),
                    //         Container(
                    //           height: 160,
                    //           width: 160,
                    //           child: Card(
                    //             child: Column(
                    //               children: [
                    //                 Padding(
                    //                   padding: const EdgeInsets.only(
                    //                       left: 8.0, top: 8, bottom: 8),
                    //                   child: ListTile(
                    //                     leading: Image(
                    //                       image: AssetImage(
                    //                         "images/acc_balance.png",
                    //                       ),
                    //                       color: Colors.blue,
                    //                     ),
                    //                   ),
                    //                 ),
                    //                 Text(
                    //                   "Account Balance",
                    //                   style: TextStyle(
                    //                       fontWeight: FontWeight.bold,
                    //                       color: Colors.teal),
                    //                 )
                    //               ],
                    //             ),
                    //             elevation: 8,
                    //             shadowColor: Colors.green,
                    //             margin: EdgeInsets.all(20),
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
           //End of Inquiries Section
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.grey[200],
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(title: Text('Home'), icon: Icon(Icons.home)),
          BottomNavyBarItem(
              title: Text('Balance'), icon: Icon(Icons.account_balance_wallet)),
          BottomNavyBarItem(
              title: Text('Inquiries'), icon: Icon(Icons.chat_bubble)),
        ],
      ),
    );
  }
}
