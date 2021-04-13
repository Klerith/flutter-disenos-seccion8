import 'package:flutter/material.dart';

import 'package:disenos/widgets/background.dart';
import 'package:disenos/widgets/card_table.dart';
import 'package:disenos/widgets/custom_bottom_navigation.dart';
import 'package:disenos/widgets/page_title.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Background(),
          // Home Body
          _HomeBody()
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
   );
  }
}

class _HomeBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

          // Titulos
          PageTitle(),

          // Card Table
          CardTable(),
        ],
      ),
    );
  }
}