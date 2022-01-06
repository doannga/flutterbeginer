import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {

  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final int _numPage = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _curPage = 0;
  Widget _indicator(bool isActive){
    return AnimatedContainer(
      duration: const Duration(microseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 5.0,
      width: isActive ? 28 : 14,
      decoration: BoxDecoration(
        color: isActive? const Color(0xFFFFC445) : const Color(0xFFDEDFE2),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
  List<Widget> _buildPageIndicator(){
    List<Widget> list = [];
    for(int i = 0; i < _numPage; i++){
      if(i == _curPage){
        list.add(_indicator(true));
      }else{
        list.add(_indicator(false));
      }
    }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 75),
            Container(
              child: Stack(
                children: [
                  Align(
                    //alignment: Alignment(.66 * 2 - 1, .12 * 2 - 1),
                    child: Image.asset('images/Vector.png',),
                  ),
                  Align(
                    child: Image.asset('images/Vector.png',),
                  ),
                ],
              ),
            ),
            Container(
              child: Center(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Positioned(

                        child: Center(
                          child: Image.asset('images/Rectangle42.png',),
                          ),
                    ),
                    Positioned(

                        child: Center(
                          child: Image.asset('images/Rectangle37.png', ),
                        ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 19.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
            //SizedBox(height: 25.0),
            Container(
              height: 200.0,
              child: PageView(
                physics: const ClampingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int page){
                  setState(() {
                    _curPage = page;
                  });
                },
                children: <Widget>[
                  Padding(
                    padding:   const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Center(
                          child: Text(
                            'Enjoy Your Fave \n Meals in Minutes',
                            style: TextStyle(
                              color: Color(0xFF46474B),
                              fontFamily: 'Poppins',
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              height: 1.552,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Center(
                          child: Text(
                            'With just few steps your food will be deliver faster ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFBFC1C7),
                              fontFamily: 'Poppins',
                              fontStyle: FontStyle.normal,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              height: 1.512,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Center(
                          child: Text(
                            'Find you perfect \n Place for eat',
                            style: TextStyle(
                              color: Color(0xFF46474B),
                              fontFamily: 'Poppins',
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              height: 1.552,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Center(
                          child: Text(
                            'With just few steps your food will be deliver faster',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFBFC1C7),
                              fontFamily: 'Poppins',
                              fontStyle: FontStyle.normal,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              height: 1.512,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Center(
                          child: Text(
                            'Organic & healthy \n food for you',
                            style: TextStyle(
                              color: Color(0xFF46474B),
                              fontFamily: 'Poppins',
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              height: 1.552,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Center(
                          child: Text(
                            'With just few steps your food will be deliver faster',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFBFC1C7),
                              fontFamily: 'Poppins',
                              fontStyle: FontStyle.normal,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              height: 1.512,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 75.0,
              width: 206.0,
              //alignment: Alignment.bottomCenter,
              decoration: const BoxDecoration(
                color: Color(0xFF323335),
                borderRadius: BorderRadius.all(
                  Radius.circular(42.42),
                ),
                boxShadow: [BoxShadow(
                  color: Color.fromRGBO(47, 52, 64, 0.76),
                  spreadRadius: -10,
                  blurRadius: 42,
                  offset: Offset(0, 9),
                ),]
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Get Started',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontFamily: 'Poppins',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      height: 1.367,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}

