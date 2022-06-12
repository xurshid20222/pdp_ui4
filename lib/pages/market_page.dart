import 'package:flutter/material.dart';

class MarketPage extends StatefulWidget {
  static const id = '/market_page';

  const MarketPage({Key? key}) : super(key: key);

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // #appbar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 60,
        title: const Text(
          'Cars',
          style: TextStyle(color: Colors.red, fontSize: 30),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.red,
              size: 25,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.red,
              size: 25,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // #category
            Container(
              height: 40,
              margin: const EdgeInsets.only(left: 20, top: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  singleTab(true, 'All'),
                  singleTab(false, 'Green'),
                  singleTab(false, 'Red'),
                  singleTab(false, 'Blue'),
                  singleTab(false, 'Orange'),
                  singleTab(false, 'Grey'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            makeMarketProduct('assets/images/im_car1.jpg'),
            makeMarketProduct('assets/images/im_car3.jpg'),
            makeMarketProduct('assets/images/im_car2.jpg'),
            makeMarketProduct('assets/images/im_car5.jpg'),
            makeMarketProduct('assets/images/im_car4.png'),
          ],
        ),
      ),
    );
  }

  Widget singleTab(bool type, String text) {
    return AspectRatio(
      aspectRatio: 2.2 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: type ? Colors.grey.shade200 : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: type ? 20 : 17),
          ),
        ),
      ),
    );
  }

  Widget makeMarketProduct(String image) {
    return Container(
      height: 250,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        boxShadow: const [
          BoxShadow(color: Colors.grey, offset: Offset(0, 10), blurRadius: 10),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Text('PDP Car', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                SizedBox(width: 20,),
                Text('Electric', style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.w500),),

              ],
            ),
            const Text('100\$', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),),
            const SizedBox(height: 90,),
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: const Icon(Icons.favorite_outline, color: Colors.white,),
            ),
          ],
        ),
      ),
    );
  }
}
