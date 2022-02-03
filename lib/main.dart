import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.indigo,
      ),
      body: Query(
        options: QueryOptions(
          document: gql(productsGraphQL),
        ),
        builder: (QueryResult result, {fetchMore, refetch}) {
          if (result.hasException) {
            return Text(result.exception.toString());
          }

          if (result.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final productList = result.data?["products"]["edges"];
          final formatCurrency = new NumberFormat.simpleCurrency();
          // final productAmount =
          //     productList["node"]["pricing"]["priceRange"]["stop"]["gross"];
          // print(productList);

          return Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Products",
                  style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
              ),
              Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 2,
                              crossAxisSpacing: 2,
                              childAspectRatio: 0.75),
                      itemCount: productList.length,
                      itemBuilder: (context, index) {
                        // return Text(productList[index]["node"]["name"]);
                        var product = productList[index]["node"];
                        var productAmount = product["pricing"]["priceRange"]
                            ["stop"]["gross"]["amount"];
                        return Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2.0),
                              width: 180,
                              height: 180,
                              child: Image.network(product["thumbnail"]["url"]),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                product["name"],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            // Text("\$" + productAmount.toString()),
                            Text(
                              "${formatCurrency.format(productAmount)}",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            // Text("\$4.50"),
                          ],
                        );
                      }))
            ],
          );
        },
      ),
    );
  }
}
