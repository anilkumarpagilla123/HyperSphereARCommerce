import 'package:ar_shopping_app/items.dart';
import 'package:flutter/material.dart';
import 'package:ar_shopping_app/virtual_ar_view_screen.dart';

class ItemDetailsScreen extends StatefulWidget
{
  Items? clickedItemInfo;

  ItemDetailsScreen({this.clickedItemInfo,});

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}


class _ItemDetailsScreenState extends State<ItemDetailsScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          widget.clickedItemInfo!.itemName.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.pinkAccent,
        onPressed: ()
        {
          //try item virtually (arview)
          Navigator.push(context, MaterialPageRoute(builder: (c)=> VirtualARViewScreen(
            clickedItemImageLink: widget.clickedItemInfo!.itemImage.toString(),
          )));
        },
        label: const Text(
          "Try Virtually (AR View)",
        ),
        icon: const Icon(
          Icons.mobile_screen_share_rounded,
          color: Colors.white,
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Image.network(
                widget.clickedItemInfo!.itemImage.toString(),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                child: Text(
                  widget.clickedItemInfo!.itemName.toString(),
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),

              const SizedBox(
                height: 5.0,
              ),

              const Padding(
                padding: EdgeInsets.only(left: 8.0, top: 8.0),
                child: Text(
                  "Product Details: ",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 6.0),
                child: Text(
                  widget.clickedItemInfo!.itemDescription.toString(),
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ),

              const SizedBox(
                height: 5.0,
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "\₹${widget.clickedItemInfo!.itemPrice.toString()}",
                  // widget.clickedItemInfo!.itemPrice.toString() + " \$",
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.redAccent,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
