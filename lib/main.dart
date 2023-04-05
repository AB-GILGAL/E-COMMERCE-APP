import 'package:e_commerce/getting_started/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: SplashScreen()));
}

button(String name, Color bgc, Color txtc, Color bdrc, Function()? nav) {
  return ElevatedButton(
    onPressed: nav,
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(bgc),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: bdrc)))),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Text(
        name,
        style: TextStyle(
          color: txtc,
          fontSize: 18,
        ),
      ),
    ),
  );
}

class FormItem extends StatefulWidget {
  FormItem(this.name, this.controller, this.hintText,
      [this.suffixIcon, this.obscureText = false]);
  final String? name;

  final TextEditingController? controller;

  final String? hintText;

  final Widget? suffixIcon;
  bool obscureText = false;

  @override
  State<FormItem> createState() => _FormItemState();
}

class _FormItemState extends State<FormItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26, width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 8, 0, 0),
            child: Text(
              widget.name!,
              style: const TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: TextFormField(
              controller: widget.controller,
              decoration: InputDecoration(
                  hintText: widget.hintText,
                  helperStyle: const TextStyle(color: Colors.black),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: widget.suffixIcon),
              obscureText: widget.obscureText,
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatefulWidget {
  const CategoryCard(
      {required Key key,
      required this.bgclr,
      required this.title,
      required this.img})
      : super(key: key);

  final Color? bgclr;
  final String? title;
  final String? img;

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: widget.bgclr, borderRadius: BorderRadius.circular(10)),
      height: MediaQuery.of(context).size.height * 0.18,
      width: MediaQuery.of(context).size.width * 0.35,
      child: Column(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: Image.asset(widget.img!)),
          Text(
            widget.title!,
            style: const TextStyle(
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}

class JustForYouCard extends StatefulWidget {
  const JustForYouCard(
      {required Key key,
      required this.bgclr2,
      required this.name,
      required this.like,
      required this.brand,
      required this.price,
      required this.img})
      : super(key: key);

  final Color? bgclr2;
  final String? name;
  final IconButton? like;
  final String? brand;
  final double? price;
  final String? img;

  @override
  State<JustForYouCard> createState() => _JustForYouCardState();
}

class _JustForYouCardState extends State<JustForYouCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.20,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                    color: widget.bgclr2,
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(widget.img!),
              ),
              widget.like!
            ],
          ),
          SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
          Text(
            widget.name!,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
          Text(
            widget.brand!,
            style: TextStyle(color: Colors.grey.shade600),
          ),
          SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
          Text(
            "\$ ${widget.price.toString()}",
            style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
          )
        ],
      ),
    );
  }
}

class DealsCard extends StatefulWidget {
  DealsCard(
      {required Key key,
      required this.bgclr3,
      required this.name,
      required this.star,
      required this.rate,
      required this.like1,
      required this.oldPrice,
      // required this.newPrice,
      required this.discount,
      required this.img})
      : super(key: key);

  final Color? bgclr3;
  final String? name;
  final Icon? star;
  final double rate;
  final IconButton? like1;
  double oldPrice;
  int discount;
  // final double newPrice;
  final String? img;

  double newPrice(double _oldPrice, int _discount) {
    oldPrice = _oldPrice;
    discount = _discount;
    double price = oldPrice - ((discount / 100) * oldPrice);
    return price;
  }

  @override
  State<DealsCard> createState() => _DealsCardState();
}

class _DealsCardState extends State<DealsCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                    color: widget.bgclr3,
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(widget.img!),
              ),
              widget.like1!
            ],
          ),
          SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
          Text(
            widget.name!,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
          Row(
            children: [
              widget.star!,
              Text(
                widget.rate.toString(),
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
          Row(
            children: [
              Text("\$ ${widget.oldPrice.toString()}",
              style: TextStyle(fontSize: 15, color: Colors.grey.shade700, decoration: TextDecoration.lineThrough), ),
               SizedBox(
                width: MediaQuery.of(context).size.width * 0.04,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.02,
                width: MediaQuery.of(context).size.width * 0.1,
                decoration: BoxDecoration(
                    color: Colors.yellow.shade200,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "-${widget.discount.toString()}%",
                  style:  TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
          Text("\$ ${widget.newPrice(widget.oldPrice, widget.discount).toString()}",
              style: TextStyle(fontSize: 15, color: Colors.grey.shade700),),
        ],
      ),
    );
  }
}
