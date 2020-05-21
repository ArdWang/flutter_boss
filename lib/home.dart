import 'package:flutter/material.dart';
import 'app/component/icon_tab.dart';


class BossApp extends StatefulWidget{
  @override
  HomeState createState() => new HomeState();
}


const double _kTabTextSize = 11.0;
const int INDEX_JOB = 0;
const int INDEX_COMPANY = 1;
const int INDEX_MESSAGE = 2;
const int INDEX_MINE = 3;

Color _kPrimaryColor = new Color.fromARGB(255, 0, 215, 198);

class HomeState extends State<BossApp> with SingleTickerProviderStateMixin{

  int _currentIndex = 0;
  TabController _controller;
  VoidCallback onChanged;
  
  
  @override
  void initState() {
    super.initState();
    _controller = new TabController(initialIndex:_currentIndex,length: 4, vsync: this);
    onChanged = (){
      setState(() {
        _currentIndex = this._controller.index;
      });
    };
    _controller.addListener(onChanged);
  }
  
  
  @override
  void dispose() {
    super.dispose();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(
          children: <Widget>[

          ],
          controller: _controller,
      ),
      bottomNavigationBar: new Material(
        color: Colors.white,
        child: new TabBar(
            tabs: <IconTab>[
              new IconTab(
                icon:_currentIndex == INDEX_JOB
                    ? "assets/images/ic_main_tab_company_pre.png"
                    : "assets/images/ic_main_tab_company_nor.png",
                text:"职位",
                color:_currentIndex == INDEX_JOB
                  ? _kPrimaryColor:Colors.grey[900]
              ),
              new IconTab(
                  icon:_currentIndex == INDEX_COMPANY
                      ? "assets/images/ic_main_tab_company_pre.png"
                      : "assets/images/ic_main_tab_company_nor.png",
                  text:"公司",
                  color:_currentIndex == INDEX_COMPANY
                      ? _kPrimaryColor:Colors.grey[900]
              ),
              new IconTab(
                  icon:_currentIndex == INDEX_MESSAGE
                      ? "assets/images/ic_main_tab_company_pre.png"
                      : "assets/images/ic_main_tab_company_nor.png",
                  text:"消息",
                  color:_currentIndex == INDEX_MESSAGE
                      ? _kPrimaryColor:Colors.grey[900]
              ),
              new IconTab(
                  icon:_currentIndex == INDEX_MINE
                      ? "assets/images/ic_main_tab_company_pre.png"
                      : "assets/images/ic_main_tab_company_nor.png",
                  text:"我的",
                  color:_currentIndex == INDEX_MINE
                      ? _kPrimaryColor:Colors.grey[900]
              ),
        ]),
      ),
    );
  }
  
  
  
}