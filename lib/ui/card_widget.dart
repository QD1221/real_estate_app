import 'package:flutter/material.dart';
import 'package:real_estate_app/model/real_estate.dart';

class CardWidget extends StatelessWidget {
  final RealEstate realEstate;
  const CardWidget({Key? key, required this.realEstate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 210,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: NetworkImage(realEstate.img ?? ''),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 16,
                top: 16,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: realEstate.tag == 'PREMIUM'
                        ? Colors.orangeAccent
                        : Colors.green,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Center(
                    child: Text(
                      '${realEstate.tag}',
                      style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$ ${realEstate.price ?? ''}',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                realEstate.vendor ?? '',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Text(
          realEstate.title ?? '',
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Icon(
              Icons.bed_outlined,
              size: 20,
              color: Colors.grey,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              '${realEstate.rooms ?? 2}',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              width: 8,
            ),
            Icon(
              Icons.bathtub_outlined,
              size: 20,
              color: Colors.grey,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              '${realEstate.bathroom ?? 2}',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              width: 8,
            ),
            Icon(
              Icons.apps,
              size: 20,
              color: Colors.grey,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              '${realEstate.sqft ?? 2}',
              style: TextStyle(color: Colors.grey),
            ),
            Spacer(),
            Text(
              '${realEstate.type ?? ''}',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
