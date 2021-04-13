import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Imagen
          Image(image: AssetImage('assets/landscape.jpg')),

          // Title
          Title(),

          // Button Section
          ButtonSection(),

          // Description
          Container(
            margin: EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
            child: Text('Laboris enim occaecat do et id velit dolore qui Lorem. Dolore ut incididunt consequat sunt do nisi aliqua pariatur ex quis cupidatat. Enim aliqua deserunt voluptate Lorem Lorem in cillum aute veniam. Ipsum irure eiusmod occaecat qui dolor consectetur aliquip deserunt sint labore qui aute mollit. Veniam duis adipisicing do mollit aliquip minim.')
          )

        ],
      )
   );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( horizontal: 30, vertical: 10 ),
      child: Row(
        children: [

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground', style: TextStyle( fontWeight: FontWeight.bold ),),
              Text('Kandersteg, Switzerland', style: TextStyle( color: Colors.black45 )),
            ],
          ),

          Expanded(child: Container()),

          Icon( Icons.star, color: Colors.red ),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton( icon: Icons.call, text: 'Call' ),
          CustomButton( icon: Icons.map_sharp, text: 'Route' ),
          CustomButton( icon: Icons.share, text: 'Share' ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomButton({
    Key? key, 
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon( this.icon, color: Colors.blue, size: 30, ),
        Text( this.text, style: TextStyle( color: Colors.blue ) )
      ],
    );
  }
}