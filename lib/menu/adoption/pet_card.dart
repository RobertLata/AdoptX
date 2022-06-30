import 'package:flutter/material.dart';

class PetCard extends StatefulWidget {
  String? name;
  String? breed;
  String? sex;
  String? thumbnailUrl;

  PetCard({
    this.name,
    this.sex,
    this.breed,
    this.thumbnailUrl,
  });

  @override
  State<PetCard> createState() => _PetCardState();
}
class _PetCardState extends State<PetCard> {

  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        height: 300,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.6),
              offset: Offset(
                0.0,
                10.0,
              ),
              blurRadius: 10.0,
              spreadRadius: -6.0,
            ),
          ],
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.50),
              BlendMode.multiply,
            ),
            image: widget.thumbnailUrl != null
                ? NetworkImage(widget.thumbnailUrl!)
                : NetworkImage(
                    'https://www.inyocounty.us/sites/default/files/styles/department_page_slider/public/2019-05/Dept-SubDept-AdoptableAnimals.jpg?h=d1ee6398&itok=1Bd8eNYo'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Align(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: IconButton(
                  icon: isFavorite == false
                      ? Icon(
                          Icons.favorite_border,
                          color: Theme.of(context).primaryColor,
                        )
                      : Icon(
                          Icons.favorite,
                          color: Theme.of(context).primaryColor,
                        ),
                  iconSize: 40,
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                ),
              ),
              alignment: Alignment.topRight,
            ),
            Align(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Text(
                  widget.name!,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.teal[50],
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
              alignment: Alignment.center,
            ),
            Align(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.pets,
                          color: Theme.of(context).primaryColor,
                          size: 18,
                        ),
                        SizedBox(width: 7),
                        Text(
                          widget.breed != null ? widget.breed! : 'Unknown',
                          style: TextStyle(color: Colors.teal[50]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          widget.sex == 'Male' ? Icons.male : Icons.female,
                          color: Theme.of(context).primaryColor,
                          size: 18,
                        ),
                        SizedBox(width: 7),
                        Text(
                          widget.sex != null ? widget.sex! : 'Female',
                          style: TextStyle(color: Colors.teal[50]),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              alignment: Alignment.bottomLeft,
            ),
          ],
        ),
    );
  }
}
