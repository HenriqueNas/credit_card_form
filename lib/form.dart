import 'package:flutter/services.dart';

import 'utils/mask_formatter.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget get labelSpacer => const SizedBox(height: 4);

  Widget get inputSpacer => const SizedBox(height: 24);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: colorScheme.background,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Adicionar cartão'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Número do cartão', style: textTheme.labelSmall),
            labelSpacer,
            TextField(
              keyboardType: TextInputType.number,
              style: textTheme.bodyMedium,
              maxLength: 19,
              maxLines: 1,
              autofillHints: const [
                AutofillHints.creditCardNumber,
              ],
              inputFormatters: [
                // alow digits and space
                FilteringTextInputFormatter.allow(RegExp(r'[0-9 ]')),
                MaskFormatter(mask: '#### #### #### ####', separator: ' '),
              ],
              decoration: const InputDecoration(
                counter: SizedBox.shrink(),
                hintText: '**** **** **** ****',
              ),
            ),
            inputSpacer,
            Text('Nome do titular', style: textTheme.labelSmall),
            labelSpacer,
            TextField(
              keyboardType: TextInputType.name,
              style: textTheme.bodyMedium,
              maxLength: 19,
              maxLines: 1,
              autofillHints: const [
                AutofillHints.name,
              ],
              decoration: const InputDecoration(
                counter: SizedBox.shrink(),
                hintText: 'Nome como está no cartão',
              ),
            ),
            inputSpacer,
            Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Validade', style: textTheme.labelSmall),
                      labelSpacer,
                      TextField(
                        keyboardType: TextInputType.number,
                        style: textTheme.bodyMedium,
                        maxLength: 7,
                        maxLines: 1,
                        autofillHints: const [
                          AutofillHints.creditCardExpirationDate,
                        ],
                        inputFormatters: [
                          // alow digits and space
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9/]')),
                          MaskFormatter(mask: '##/####', separator: '/'),
                        ],
                        decoration: const InputDecoration(
                          counter: SizedBox.shrink(),
                          hintText: 'mm/aaaa',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Flexible(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('CVV', style: textTheme.labelSmall),
                      labelSpacer,
                      TextField(
                        keyboardType: TextInputType.number,
                        style: textTheme.bodyMedium,
                        maxLength: 3,
                        maxLines: 1,
                        autofillHints: const [
                          AutofillHints.creditCardSecurityCode,
                        ],
                        inputFormatters: [
                          // alow digits and space
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          MaskFormatter(mask: '###', separator: ''),
                        ],
                        decoration: const InputDecoration(
                          counter: SizedBox.shrink(),
                          hintText: '***',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
