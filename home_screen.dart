
  import 'package:flutter/material.dart';
  const PRIMARY = "primary";
  const WHITE = "white";
  const SECONDARY = "SECONDARY";
  const BLACK = "BLACK";

  const Map<String, Color> myColors = {
    PRIMARY : Color.fromRGBO(226, 115, 138, 1),
    SECONDARY : Color.fromRGBO(247, 225, 227, 1),
    WHITE : Colors.white,
    BLACK : Colors.black,
  };

  class HomeScreen extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: _myAppBar(),
        backgroundColor: myColors[PRIMARY],
        body: _Body(),
      );
    }

  }

  PreferredSizeWidget _myAppBar(){
    return PreferredSize(
      child: AppBar(
        backgroundColor: myColors[WHITE],
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 15,
          left: 15),
          child: IconButton(
            icon: Icon(
              Icons.menu,
              color: myColors[PRIMARY],
              size: 30,
            ),
            onPressed: () => print("Menu Pressed"),
          ),
        ),
        actions: [
          Padding(
            padding:  const EdgeInsets.only(top: 15, right: 15),
            child: IconButton(onPressed: () => print("Search Pressed"), icon: Icon(
              Icons.search,
              color: myColors[PRIMARY],
              size: 30,
            ),
            ),
          ),
        ],
      ),
      preferredSize:  Size.fromHeight(70),
    );
  }
  class _Body extends StatelessWidget {
    const _Body({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: myColors[WHITE],
                  borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 60,
                      bottom: 10,
                    ),
                    child: Text(
                      "Cosmetics that Everyone loves!",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                  Expanded(
                    child: LayoutBuilder(
                      builder: (context,constraints){
                        return Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: IconButton(
                                          onPressed: () => print("Main Image added as Favourite"),
                                          icon: Icon(
                                            Icons.favorite_border,
                                            color: myColors[PRIMARY],
                                            size: 25,
                                          ),
                                      ),
                                    ),
                                    Image(
                                      height: constraints.maxHeight * .8,
                                      image: AssetImage("assets/images/makeup1.png"
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                 children: [
                                   Text(
                                     "\$15.00",
                                     style: TextStyle(
                                       fontSize: 18,
                                       fontWeight: FontWeight.bold,
                                     ),
                                   ),
                                   SizedBox(
                                     width: 20,
                                   ),
                                   InkWell(
                                     onTap: ()=> print("Main Item pressed"),
                                     child: Container(
                                       decoration: BoxDecoration(
                                         color: myColors[SECONDARY],
                                         borderRadius: BorderRadius.only(
                                           topLeft:Radius.circular(7),
                                           topRight: Radius.circular(7),
                                           bottomRight: Radius.circular(15),
                                           bottomLeft: Radius.circular(7),
                                         ),
                                       ),
                                       child: Padding(
                                         padding: const EdgeInsets.all(5),
                                         child: IconButton(
                                           onPressed: () => print("Add Quantity"),
                                           icon: Icon(
                                             Icons.add,
                                             color: myColors[PRIMARY],
                                             size: 15,
                                           ),
                                         ),
                                       ),
                                     ),
                                   ),
                                 ],
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(

            ),
          )
        ],
      );
    }
  }


