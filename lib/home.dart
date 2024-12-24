import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'fakePharmacy.dart';
import 'listinfo.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController _scrollController = ScrollController();
  bool _isSearchBarVisible = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection == ScrollDirection.reverse) {
        if (_isSearchBarVisible) {
          setState(() => _isSearchBarVisible = false);
        }
      } else if (_scrollController.position.userScrollDirection == ScrollDirection.forward) {
        if (!_isSearchBarVisible) {
          setState(() => _isSearchBarVisible = true);
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // Animated Search Bar
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: _isSearchBarVisible ? mediaQueryHeight * 0.1 : 0,
              child: _isSearchBarVisible
                  ? Padding(
                padding: EdgeInsets.symmetric(
                  vertical: mediaQueryHeight * 0.02,
                  horizontal: mediaQueryWidth * 0.05,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    labelStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(16, 133, 127, 1),
                        fontSize: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color.fromRGBO(16, 133, 127, 1),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              )
                  : const SizedBox.shrink(),
            ),
            Expanded(
              child: ListView.builder(
                controller: _scrollController, // Attach the ScrollController
                itemCount: phr.length,
                itemBuilder: (listViewContext, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(16, 133, 127, 1),
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    margin: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  phr[index].image,
                                  fit: BoxFit.fill,
                                ),
                                SizedBox(width: mediaQueryWidth * 0.35),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  phr[index].name,
                                  style: const TextStyle(
                                    color: Color.fromRGBO(16, 133, 127, 1),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  phr[index].location,
                                  style: const TextStyle(
                                    color: Color.fromRGBO(16, 133, 127, 1),
                                    fontSize: 15,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.local_phone_outlined),
                                      color: const Color.fromRGBO(16, 133, 127, 1),
                                      iconSize: 40,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.directions_outlined),
                                      color: const Color.fromRGBO(16, 133, 127, 1),
                                      iconSize: 40,
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                            builder: (context) => Info(ph: phr[index]),
                                          ),
                                        );
                                      },
                                      icon: const Icon(Icons.info_outline),
                                      color: const Color.fromRGBO(16, 133, 127, 1),
                                      iconSize: 40,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
