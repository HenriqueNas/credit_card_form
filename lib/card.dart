import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({super.key});

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  final cardController = FlipCardController();

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (_) => cardController.state?.controller?.forward(),
      onExit: (_) => cardController.state?.controller?.reverse(),
      child: FlipCard(
        direction: FlipDirection.HORIZONTAL,
        controller: cardController,
        front: const _FrontCard(),
        back: const _BackCard(),
        flipOnTouch: !kIsWeb,
      ),
    );
  }
}

class _BaseCard extends StatelessWidget {
  const _BaseCard({required this.child, required this.image});

  final Widget child;
  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: AspectRatio(
        aspectRatio: 1.75,
        child: Container(
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints(maxHeight: 200),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: image,
              fit: BoxFit.cover,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}

class _FrontCard extends StatelessWidget {
  const _FrontCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _BaseCard(
      image: const AssetImage('assets/credit-card-back.png'),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              Text('Banco'),
              Text('Nome do titular'),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              Text('Número do cartão'),
              Text('Validade'),
            ],
          ),
        ],
      ),
    );
  }
}

class _BackCard extends StatelessWidget {
  const _BackCard();

  @override
  Widget build(BuildContext context) {
    return _BaseCard(
      image: const AssetImage('assets/credit-card-back.png'),
      child: Container(),
    );
  }
}
