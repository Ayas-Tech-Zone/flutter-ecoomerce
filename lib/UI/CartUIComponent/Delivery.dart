import 'package:flutter/material.dart';
import 'package:treva_shop_flutter/UI/BottomNavigationBar.dart';
import 'package:treva_shop_flutter/UI/CartUIComponent/Payment.dart';

class delivery extends StatefulWidget {
  @override
  _deliveryState createState() => _deliveryState();
}

bool _value = false;
int val = 2;

TabController tabController;

class _deliveryState extends State<delivery>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /* appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop(false);
            },
            child: Icon(Icons.arrow_back)),
        elevation: 0.0,
        title: Text(
          "Delivery",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
              color: Colors.black54,
              fontFamily: "Gotik"),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xFF6991C7)),
      ),
      */
        appBar: AppBar(
            title: Text("Checkout"),
            bottom: TabBar(
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.indigoAccent,
              tabs: [
                Tab(icon: Icon(Icons.info_sharp)),
                Tab(icon: Icon(Icons.pin_drop)),
                Tab(icon: Icon(Icons.local_shipping)),
                Tab(icon: Icon(Icons.payment))
              ],
              controller: tabController,
              indicatorColor: Colors.indigoAccent,
              indicatorSize: TabBarIndicatorSize.tab,
            )),
        body: TabBarView(
          children: <Widget>[
            InfoClient(),
            InfoClient2(),
            InfoClient3().build(context),
            InfoClient4()
          ],
          controller: tabController,
        ));
  }
}

class InfoClient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
          child: Column(
            children: <Widget>[
              Text(
                "You are going to complete your order here, please finish up order process",
                style: TextStyle(
                    letterSpacing: 0.1,
                    fontWeight: FontWeight.w600,
                    fontSize: 25.0,
                    color: Colors.black54,
                    fontFamily: "Gotik"),
              ),
              Padding(padding: EdgeInsets.only(top: 50.0)),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Lisa Heart",
                    hintText: "Full Name",
                    hintStyle: TextStyle(color: Colors.black54)),
              ),
              Padding(padding: EdgeInsets.only(top: 20.0)),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "077xxxxxxxx",
                    hintText: "Mobile Number",
                    hintStyle: TextStyle(color: Colors.black54)),
              ),
              Padding(padding: EdgeInsets.only(top: 20.0)),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Lisa.heart1@gmail.com",
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.black54)),
              ),
              Padding(padding: EdgeInsets.only(top: 20.0)),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "00964",
                    hintText: "Zip Code",
                    hintStyle: TextStyle(color: Colors.black54)),
              ),
              Padding(padding: EdgeInsets.only(top: 80.0)),
              InkWell(
                onTap: () {
                  //Navigator.of(context).pushReplacement(
                  //   PageRouteBuilder(pageBuilder: (_, __, ___) => payment()));
                  tabController.index = 1;
                },
                child: Container(
                  height: 55.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: BorderRadius.all(Radius.circular(40.0))),
                  child: Center(
                    child: Text(
                      "Contine",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.5,
                          letterSpacing: 1.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InfoClient2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
          child: Column(
            children: <Widget>[
              Text(
                "You Current Location",
                style: TextStyle(
                    letterSpacing: 0.1,
                    fontWeight: FontWeight.w600,
                    fontSize: 25.0,
                    color: Colors.black54,
                    fontFamily: "Gotik"),
              ),
              Padding(padding: EdgeInsets.only(top: 20.0)),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Image.asset("assets/icon/m.png")),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Country: Iraq",
                    hintText: "Country",
                    hintStyle: TextStyle(color: Colors.black54)),
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "City: Al Sulaymaniyah",
                    hintText: "City",
                    hintStyle: TextStyle(color: Colors.black54)),
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Address: Too Malik",
                    hintText: "Address",
                    hintStyle: TextStyle(color: Colors.black54)),
              ),
              Padding(padding: EdgeInsets.only(top: 30.0)),
              InkWell(
                onTap: () {
                  // Navigator.of(context).pushReplacement(
                  //   PageRouteBuilder(pageBuilder: (_, __, ___) => payment()));
                  tabController.index = 2;
                },
                child: Container(
                  height: 55.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: BorderRadius.all(Radius.circular(40.0))),
                  child: Center(
                    child: Text(
                      "Contiue",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.5,
                          letterSpacing: 1.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InfoClient3 extends State<delivery> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
          child: Column(
            children: <Widget>[
              Text(
                "Shipping Method",
                style: TextStyle(
                    letterSpacing: 0.1,
                    fontWeight: FontWeight.w600,
                    fontSize: 25.0,
                    color: Colors.black54,
                    fontFamily: "Gotik"),
              ),
              Padding(padding: EdgeInsets.only(top: 20.0)),
              ListTile(
                title: Text("DHL"),
                subtitle: Text('\$5.00'),
                leading: Radio(
                  value: 1,
                  groupValue: val,
                  onChanged: (value) {
                    setState(() {
                      val = value;
                    });
                  },
                  activeColor: Colors.indigoAccent,
                ),
              ),
              ListTile(
                title: Text("Lazzaro"),
                subtitle: Text('\$3.00'),
                leading: Radio(
                  value: 2,
                  groupValue: val,
                  onChanged: (value) {
                    setState(() {
                      val = value;
                    });
                  },
                  activeColor: Colors.indigoAccent,
                ),
              ),
              ListTile(
                title: Text("Tawseel"),
                subtitle: Text('\$10.00'),
                leading: Radio(
                  value: 3,
                  groupValue: val,
                  onChanged: (value) {
                    setState(() {
                      val = value;
                    });
                  },
                  activeColor: Colors.indigoAccent,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 80.0)),
              InkWell(
                onTap: () {
                  tabController.index = 3;
                },
                child: Container(
                  height: 55.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: BorderRadius.all(Radius.circular(40.0))),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.5,
                          letterSpacing: 1.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class InfoClient4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 10.0)),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Your Notes...",
                    hintText: "Your Notes",
                    hintStyle: TextStyle(color: Colors.black54)),
              ),
              Padding(padding: EdgeInsets.only(top: 50.0)),
              Text(
                " Subtotal: \$71.00 \n Delivery Fee: \$3.00 \n Total: \$71.00",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                    fontSize: 17.5,
                    letterSpacing: 1.0),
              ),
              Padding(padding: EdgeInsets.only(top: 30.0)),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      PageRouteBuilder(pageBuilder: (_, __, ___) => payment()));
                },
                child: Container(
                  height: 55.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: BorderRadius.all(Radius.circular(40.0))),
                  child: Center(
                    child: Text(
                      "Go to payment",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 15.5,
                          letterSpacing: 1.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
