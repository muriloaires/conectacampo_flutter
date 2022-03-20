import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories();

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      padding: const EdgeInsets.all(8.0),
      child: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: [
            Category(
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              isSelected: selectedIndex == 0,
              label: 'Feira',
              child: Image.asset(
                'assets/bananas.png',
                color: selectedIndex == 0 ? Colors.white : Colors.black,
                height: 40,
              ),
            ),
            Category(
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              isSelected: selectedIndex == 1,
              label: 'Produtos agro',
              child: Image.asset(
                'assets/wheat-flour.png',
                color: selectedIndex == 1 ? Colors.white : Colors.black,
                height: 40,
              ),
            ),
            Category(
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
              isSelected: selectedIndex == 2,
              label: 'Embalagens',
              child: Image.asset(
                'assets/crate.png',
                color: selectedIndex == 2 ? Colors.white : Colors.black,
                height: 40,
              ),
            ),
            Category(
              onTap: () {
                setState(() {
                  selectedIndex = 3;
                });
              },
              isSelected: selectedIndex == 3,
              label: 'Serviços',
              child: Image.asset(
                'assets/tool-box.png',
                color: selectedIndex == 3 ? Colors.white : Colors.black,
                height: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category({
    required this.isSelected,
    required this.child,
    required this.onTap,
    required this.label,
  });

  final bool isSelected;
  final Widget child;
  final String label;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: 90,
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: isSelected ? ColorSet.green1 : Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                    border: Border.all(
                      color: isSelected ? Colors.transparent : Colors.black,
                    ),
                  ),
                  child: Center(child: child),
                ),
              ),
              const SizedBox(height: 2),
              FittedBox(
                child: Text(
                  label,
                  style: TextStyle(
                    // color: ColorSet.green1,
                    fontSize: 12,
                    fontWeight:
                        isSelected ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
