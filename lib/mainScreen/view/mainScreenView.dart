import 'package:flutter/material.dart';
import 'package:taskday1/mainScreen/api/displayDataApi.dart';
import 'package:taskday1/mainScreen/component/productDescription.dart';
import 'package:taskday1/mainScreen/model/displayDataListModel.dart';

class MainScreenView extends StatefulWidget {
  const MainScreenView({super.key});

  @override
  State<MainScreenView> createState() => _MainScreenViewState();
}

class _MainScreenViewState extends State<MainScreenView> {
  var remoteService = DisplayDataApi();
  List<Product> products = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    var data = await remoteService.getData();
    setState(() {
      products = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Container(
              decoration:
                  BoxDecoration(color: Color.fromRGBO(228, 113, 113, 0.812)),
              child: Text(
                "List",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(77, 196, 198, 0)),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDescription(
                                    name: products[index].name,
                                    color: products[index].data?.color,
                                    capacity: products[index].data?.capacity,

                                  )),
                        );
                      },
                      child: ListTile(style: ListTileStyle.list,
                        title: Text(products[index].name),
                        subtitle: Text(products[index].id),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
