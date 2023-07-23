import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: SvgPicture.asset('assets/back.svg')),
                          SvgPicture.asset('assets/payment.svg'),
                          const SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        color: Color(0xffE3E3E3),
                        thickness: 1.5,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'For payment',
                            style: GoogleFonts.nunito(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '₦250,000',
                            style: GoogleFonts.nunito(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Color(0xffE3E3E3),
                  thickness: 1.5,
                ),
                const SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 20,
                          spreadRadius: 5,
                          offset: const Offset(6, 8), // Shadow position
                        ),
                      ],
                    ),
                    child: TabBar(
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xff0065FF)),
                        controller: _tabController,
                        indicatorSize: TabBarIndicatorSize.tab,
                        unselectedLabelColor: Colors.black,
                        labelPadding:
                            const EdgeInsets.symmetric(horizontal: 10.0),
                        tabs: [
                          Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.credit_card_rounded,
                                  size: 30,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Credit Card',
                                  style: GoogleFonts.nunito(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.apple,
                                  size: 30,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Pay',
                                  style: GoogleFonts.nunito(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
                Expanded(
                  child: TabBarView(controller: _tabController, children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Card Number",
                            labelStyle: TextStyle(color: Color(0xFFA8A8A8)),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffA2C0EC)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff0065FF)),
                            ),
                            suffixIcon: SizedBox(
                              width: 80,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SvgPicture.asset(
                                        'assets/masterCardLogo.svg'),
                                    SvgPicture.asset('assets/ccLogo.svg'),
                                  ]),
                            ),
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            labelText: "Cardholder Name",
                            labelStyle: TextStyle(color: Color(0xFFA8A8A8)),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffA2C0EC)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff0065FF)),
                            ),
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: "CVV code",
                                  labelStyle:
                                      TextStyle(color: Color(0xFFA8A8A8)),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xffA2C0EC)),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff0065FF)),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: "Expiry Date",
                                  labelStyle:
                                      TextStyle(color: Color(0xFFA8A8A8)),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xffA2C0EC)),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff0065FF)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Save card data for future payments',
                              style: GoogleFonts.nunito(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            Switch(
                              // thumb color (round icon)
                              activeColor: Colors.white,
                              activeTrackColor: Color(0xffa4a4a4),
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: Colors.grey.shade400,
                              splashRadius: 50.0,
                              // boolean variable value
                              value: false, onChanged: (bool value) {},
                              // changes the state of the switch),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const PaymentPage()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0xff0065FF),
                                borderRadius: BorderRadius.circular(10.0)),
                            height: MediaQuery.of(context).size.height * 0.07,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                'Pay',
                                style: GoogleFonts.nunito(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xfff5f5f5)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Card Number",
                            labelStyle: TextStyle(color: Color(0xFFA8A8A8)),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffA2C0EC)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff0065FF)),
                            ),
                            suffixIcon: SizedBox(
                              width: 80,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SvgPicture.asset(
                                        'assets/masterCardLogo.svg'),
                                    SvgPicture.asset('assets/ccLogo.svg'),
                                  ]),
                            ),
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            labelText: "Cardholder Name",
                            labelStyle: TextStyle(color: Color(0xFFA8A8A8)),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffA2C0EC)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff0065FF)),
                            ),
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: "CVV code",
                                  labelStyle:
                                      TextStyle(color: Color(0xFFA8A8A8)),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xffA2C0EC)),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff0065FF)),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: "Expiry Date",
                                  labelStyle:
                                      TextStyle(color: Color(0xFFA8A8A8)),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xffA2C0EC)),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff0065FF)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Save card data for future payments',
                              style: GoogleFonts.nunito(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            Switch(
                              // thumb color (round icon)
                              activeColor: Colors.white,
                              activeTrackColor: Color(0xffa4a4a4),
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: Colors.grey.shade400,
                              splashRadius: 50.0,
                              // boolean variable value
                              value: false, onChanged: (bool value) {},
                              // changes the state of the switch),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const PaymentPage()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0xff0065FF),
                                borderRadius: BorderRadius.circular(10.0)),
                            height: MediaQuery.of(context).size.height * 0.07,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                'Pay',
                                style: GoogleFonts.nunito(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xfff5f5f5)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                )
              ]),
        ),
      ),
    );
  }
}
