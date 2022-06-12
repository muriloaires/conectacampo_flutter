import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';

class ChatAppBar extends AppBar {
  ChatAppBar()
      : super(
          backgroundColor: Colors.white,
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.arrow_back,
              color: ColorSet.green1,
            ),
          ),
          centerTitle: false,
          title: Row(
            children: [
              const CircleAvatar(
                radius: 20,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Murilo Aires',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    'Online',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  )
                ],
              ),
            ],
          ),
        );
}
