import 'package:flutter/material.dart';
import 'package:flutter_mobile_sim_test_1/account_page.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart';

import 'main.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Your Cart",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          children: <Widget>[
            getShoppingCartUI(),
            getLoginUI(),
            getDiscountUI(),
            getMoreProudctsUI(),
          ],
        ),
      ),
    );
  }

  Widget getCategoryUI() {
    return SizedBox(
      height: 300,
      child: PageView(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 40.0, horizontal: 30.0),
            child: Material(
              color: Colors.blue,
              elevation: 3.0,
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 40.0, horizontal: 30.0),
            child: Material(
              color: Colors.green,
              elevation: 3.0,
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget getShoppingCartUI() {
    return Container(
      alignment: Alignment.center,
      height: 100,
      width: double.infinity,
      child: const Text(
        "Your Shopping Bag is Empty",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget getLoginUI() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RawMaterialButton(
          child: const Text("Sign In",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const AccountPage()),
            );
          },
          constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width, minHeight: 20),
          padding: const EdgeInsets.all(12.0),
          fillColor: Colors.black,
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Divider(
                  color: Colors.grey,
                  thickness: 2,
                ),
              ),
            ),
            Container(
              color: Colors.transparent,
              width: (MediaQuery.of(context).size.width),
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                width: 40,
                child: const Text(
                  "or",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        RawMaterialButton(
            onPressed: () {},
            child: const Text("Create Account",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            fillColor: Colors.white,
            shape: const ContinuousRectangleBorder(
              side: BorderSide(color: Colors.black, width: 2),
            ),
            constraints: BoxConstraints(
                minWidth: MediaQuery.of(context).size.width, minHeight: 20.0),
            padding: const EdgeInsets.all(12.0)),
      ],
    );
  }

  Widget getDiscountUI() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 5.0),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: <Widget>[
              const Text(
                "Discounts",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const Spacer(),
              InkWell(
                  highlightColor: Colors.transparent,
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const AccountPage()),
                    );
                  },
                  child: const Text("Apply discounts",
                      style: TextStyle(decoration: TextDecoration.underline)))
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text("Credit we trust:"),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Container(
                width: 40,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage("images/credit_icons_1.jpg"),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Container(
                width: 40,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage("images/credit_icons_2.jpg"),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Container(
                width: 40,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage("images/credit_icons_3.jpg"),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                width: 40,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage("images/credit_icons_4.jpg"),
                      fit: BoxFit.fill),
                ),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Divider(
            thickness: 2,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget getMoreProudctsUI() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text(
          "More Stuff",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.0),
        ProductsGridView(),
      ],
    );
  }

  // WIDGET APP BAR OBJECT CLASS
  // Widget getAppBarUI() {
  //   return const Text(
  //     'Games for Fun!',
  //     style: TextStyle(
  //       fontFamily: "Netflix",
  //       fontWeight: FontWeight.w800,
  //       fontSize: 32.0,
  //       letterSpacing: 0.27,
  //       color: Colors.red, //HexColor('FF8C3B'),
  //     ),
  //   );
  // }

  Widget getPopularCourseUI() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Featured Games',
          style: TextStyle(
            fontFamily: "Netflix",
            fontWeight: FontWeight.w800,
            fontSize: 24.0,
            letterSpacing: 0.27,
            color: Colors.red, //HexColor('FF8C3B'),
          ),
        ),
        const SizedBox(height: 8.0),
        GamesGridView(
          callBack: () {},
        )
      ],
    );
  }
}

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Query(
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

        return GridView.builder(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                childAspectRatio: 0.75),
            itemCount: productList.length,
            itemBuilder: (context, index) {
              var product = productList[index]["node"];
              var productAmount =
                  product["pricing"]["priceRange"]["stop"]["gross"]["amount"];
              return Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(2.0),
                    child: Image.network(product["thumbnail"]["url"]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      product["name"],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    formatCurrency.format(productAmount),
                    style: Theme.of(context).textTheme.subtitle1,
                  )
                ],
              );
            });
      },
    );
  }
}

class GamesGridView extends StatelessWidget {
  final VoidCallback callBack;

  const GamesGridView({Key? key, required this.callBack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 50.0,
      crossAxisSpacing: 50.0,
      children: <Widget>[
        ElevatedButton(child: const Text("Button"), onPressed: () {}),
        ElevatedButton(child: const Text("Button"), onPressed: () {}),
        ElevatedButton(child: const Text("Button"), onPressed: () {}),
        ElevatedButton(child: const Text("Button"), onPressed: () {}),
        ElevatedButton(child: const Text("Button"), onPressed: () {}),
        ElevatedButton(child: const Text("Button"), onPressed: () {}),
        ElevatedButton(child: const Text("Button"), onPressed: () {}),
      ],
    );
  }
}

// class Products extends StatefulWidget {
//   const Products({Key? key}) : super(key: key);

//   @override
//   _ProductsState createState() => _ProductsState();
// }

// class _ProductsState extends State<Products> {
//   @override
//   Widget build(BuildContext context) {
//     return Query(
//       options: QueryOptions(
//         document: gql(productsGraphQL),
//       ),
//       builder: (QueryResult result, {fetchMore, refetch}) {
//         if (result.hasException) {
//           return Text(result.exception.toString());
//         }

//         if (result.isLoading) {
//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         }

//         final productList = result.data?["products"]["edges"];
//         final formatCurrency = NumberFormat.simpleCurrency();
//         // final productAmount =
//         //     productList["node"]["pricing"]["priceRange"]["stop"]["gross"];
//         // print(productList);

//         return Column(
//           children: [
//             const Padding(
//               padding: EdgeInsets.all(16.0),
//               // child: Text(
//               //   "Products",
//               //   style: TextStyle(
//               //     color: Colors.black45,
//               //     fontWeight: FontWeight.bold,
//               //     fontSize: 28,
//               //   ),
//               // ),
//             ),
//             Expanded(
//                 child: GridView.builder(
//                     gridDelegate:
//                         const SliverGridDelegateWithFixedCrossAxisCount(
//                             crossAxisCount: 2,
//                             mainAxisSpacing: 2,
//                             crossAxisSpacing: 2,
//                             childAspectRatio: 0.75),
//                     itemCount: productList.length,
//                     itemBuilder: (context, index) {
//                       // return Text(productList[index]["node"]["name"]);
//                       var product = productList[index]["node"];
//                       var productAmount = product["pricing"]["priceRange"]
//                           ["stop"]["gross"]["amount"];
//                       return Column(
//                         children: [
//                           Container(
//                             padding: const EdgeInsets.all(2.0),
//                             width: 180,
//                             height: 180,
//                             child: Image.network(product["thumbnail"]["url"]),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(vertical: 8.0),
//                             child: Text(
//                               product["name"],
//                               style: const TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontFamily: "Raleway"),
//                             ),
//                           ),
//                           // Text("\$" + productAmount.toString()),
//                           Text(
//                             formatCurrency.format(productAmount),
//                             style: Theme.of(context).textTheme.subtitle1,
//                           ),
//                           // Text("\$4.50"),
//                         ],
//                       );
//                     }))
//           ],
//         );
//       },
//     );
//   }
// }
