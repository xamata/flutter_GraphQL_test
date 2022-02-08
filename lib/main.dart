import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobile_sim_test_1/account_page.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'products_page.dart';

const productsGraphQL = """
query products{
  products(channel: "default-channel",first:10)
  {
    edges{
      node{
        id
        name
        description
        pricing{
          priceRange{
            stop{
              gross{
                currency
                amount
              }
            }
          }
        }
        thumbnail{
          url
        }
      }
    }
  }
}
""";

void main() {
  final HttpLink httpLink = HttpLink("https://demo.saleor.io/graphql/");

  ValueNotifier<GraphQLClient> client = ValueNotifier(GraphQLClient(
      //cached theboy using store:HiveStore
      cache: GraphQLCache(store: InMemoryStore()),
      link: httpLink));

  var zapp = GraphQLProvider(client: client, child: const MyApp());
  runApp(zapp);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Demo",
        theme: ThemeData(
          primarySwatch: Colors.red,
          fontFamily: "Raleway",
        ),
        home: const MyHomePage(title: "Flutter_GraphQL Home Page"));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //determines which page will show up
  int _selectedIndexBottomNavigationItem = 0;
  void onItemTapped(int index) {
    setState(() {
      _selectedIndexBottomNavigationItem = index;
    });
  }

  //Navigation Bar, Chooses what is shown on app
  static const List<Widget> _widgetOptions = <Widget>[
    ProductsPage(),
    AccountPage(),
    ProductsPage(),
    ProductsPage(),
    ProductsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndexBottomNavigationItem),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.house), label: "House"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "AC"),
          BottomNavigationBarItem(icon: Icon(Icons.headset), label: "Air"),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Hair"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Hair"),
        ],
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndexBottomNavigationItem,
        onTap: onItemTapped,
      ),
    );
    // return const ProductsPage();
  }
}
