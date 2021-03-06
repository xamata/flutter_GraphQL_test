import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart';

import 'main.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text("What's New"),
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 26, fontFamily: "RaleWay"),
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
          final formatCurrency = NumberFormat.simpleCurrency();

          return Column(
            children: [
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
                        var product = productList[index]["node"];
                        var productAmount = product["pricing"]["priceRange"]
                            ["stop"]["gross"]["amount"];
                        return Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2.0),
                              width: 180,
                              height: 180,
                              child:
                                  // Image.asset(product['cover']),
                                  Image.network(product["thumbnail"]["url"]),
                            ),
                            Text(product["thumbnail"]["url"].toString()),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                product["name"],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Raleway"),
                              ),
                            ),
                            // Text("\$" + productAmount.toString()),
                            Text(
                              formatCurrency.format(productAmount),
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
