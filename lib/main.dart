import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter_mobile_sim_test_1/products_page.dart';

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
          primarySwatch: Colors.blue,
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
  @override
  Widget build(BuildContext context) {
    return const ProductsPage();
  }
}
