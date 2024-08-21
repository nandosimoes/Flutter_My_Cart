import 'package:flutter/material.dart';

class TelaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      body: ListView(
        children: [
          buildProductCard(
            imageUrl: 'https://png.pngtree.com/png-clipart/20240212/original/pngtree-red-bell-pepper-sliced-with-a-photo-png-image_14294659.png',
            productName: 'Bell Pepper Red',
            productDetails: '1kg, Price',
            price: 4.99,
            quantity: 1,
          ),
          buildProductCard(
            imageUrl: 'https://static.vecteezy.com/system/resources/previews/020/027/757/original/egg-in-basket-on-transparent-background-free-png.png',
            productName: 'Egg Chicken Red',
            productDetails: '4pcs, Price',
            price: 1.99,
            quantity: 1,
          ),
          buildProductCard(
            imageUrl: 'https://static.vecteezy.com/system/resources/previews/009/588/732/original/banana-with-clipping-path-and-full-depth-of-field-free-png.png',
            productName: 'Organic Bananas',
            productDetails: '12kg, Price',
            price: 3.00,
            quantity: 1,
          ),
          buildProductCard(
            imageUrl: 'https://obahortifruti.vtexassets.com/arquivos/ids/5094930/Gengibre.png?v=638298813925730000',
            productName: 'Ginger',
            productDetails: '250gm, Price',
            price: 2.99,
            quantity: 1,
          ),
          buildProductCard(
            imageUrl: 'https://static.vecteezy.com/system/resources/previews/015/100/136/non_2x/pineapple-fruit-transparent-background-free-png.png',
            productName: 'Pineapple',
            productDetails: '1kg, Price',
            price: 4.99,
            quantity: 1,
          ),
          buildProductCard(
            imageUrl: 'https://static.vecteezy.com/system/resources/previews/029/200/044/non_2x/strawberry-transparent-background-free-png.png',
            productName: 'Strawberry',
            productDetails: '250gm, Price',
            price: 8.99,
            quantity: 1,
          ),
          buildProductCard(
            imageUrl: 'https://vallefrutas.com.br/wp-content/uploads/papaya-01.png',
            productName: 'Papaya',
            productDetails: '2kg, Price',
            price: 2.99,
            quantity: 1,
          ),
          buildProductCard(
            imageUrl: 'https://i0.wp.com/hortifrutivarejo.net/wp-content/uploads/2015/10/melancia-png.png?ssl=1',
            productName: 'Waterberry',
            productDetails: '1kg, Price',
            price: 11.99,
            quantity: 1,
          ),
          buildProductCard(
            imageUrl: 'https://png.pngtree.com/png-clipart/20230416/original/pngtree-grape-fruit-dark-purple-summer-png-image_9058711.png',
            productName: 'Grapes',
            productDetails: '250gm, Price',
            price: 7.99,
            quantity: 1,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.green,
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Go to Checkout',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(
              '\$49.91',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProductCard({
    required String imageUrl,
    required String productName,
    required String productDetails,
    required double price,
    required int quantity,
  }) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    productDetails,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.remove),
                        ),
                      ),
                      SizedBox(width: 8), 
                      Text('$quantity'),
                      SizedBox(width: 8), 
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.close),
                ),
                SizedBox(height: 8),
                Text(
                  '\$${price.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
