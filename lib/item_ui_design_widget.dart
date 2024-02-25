import 'package:flutter/material.dart';
import 'package:ar_shopping_app/item_details_screen.dart';
import 'package:ar_shopping_app/items.dart';


class ItemUIDesignWidget extends StatefulWidget {

  Items? itemsInfo;
  BuildContext? context;

  ItemUIDesignWidget({super.key,
    this.itemsInfo,
    this.context,
  });

  @override
  State<ItemUIDesignWidget> createState() => _ItemUIDesignWidgetState();
}

class _ItemUIDesignWidgetState extends State<ItemUIDesignWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()
      {
        //send user to the item detail screen
        Navigator.push(context, MaterialPageRoute(builder: (c)=> ItemDetailsScreen(
          clickedItemInfo: widget.itemsInfo,
        )));
      },
      // splashColor: Colors.cyan,
      child: Padding(
        padding: const EdgeInsets.all(6.0),

        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: Colors.grey, // Set the color of the border
                width: 1.0, // Set the width of the border
              ),
            ),

          child: SizedBox(
            height: 140,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [

                //image
                Image.network(
                  widget.itemsInfo!.itemImage.toString(),
                  width: 140,
                  height: 140,
                  fit: BoxFit.cover,
                ),

                const SizedBox(width: 12.0,),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),

                      //item name
                      Expanded(
                        child: Text(
                          widget.itemsInfo!.itemName.toString(),
                          maxLines: 2,
                          style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      //seller name
                      Expanded(
                        child: Text(
                          widget.itemsInfo!.sellerName.toString(),
                          maxLines: 2,
                          style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                          ),
                        ),
                      ),

                      // price
                      Row(
                        children: [
                          const Text(
                            "Price: ",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "\₹${widget.itemsInfo!.itemPrice.toString()}",
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 10.0,
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      )
    );
  }
}


