import 'package:flutter/material.dart';

class SearchAdvertisement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 18, 32, 18),
      child: Row(
        children: [
          SizedBox(
            width: 74,
            height: 74,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: Image.network(
                'https://revistaatletismo.com/wp-content/uploads/2017/12/tomate.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: 'Tomate ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(text: 'Italia')
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Container(
                      width: 33.0,
                      height: 33.0,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://i.imgur.com/BoN9kdC.png")))),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Vendedor'),
                      Text(
                        'João Roberto',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
