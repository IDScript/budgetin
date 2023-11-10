import 'package:flutter/material.dart';

class WalletList extends StatelessWidget {
  const WalletList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text(
                        'Rp 0',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.remove_red_eye,
                        size: 20,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Jumlah Saldo',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 10,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const InkWell(
                        child: Tooltip(
                          message: 'I am a Tooltip',
                          child: Icon(
                            Icons.help,
                            size: 15,
                          ),
                          // child: Text('Hover over the text to show a tooltip.'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(Icons.notifications)
            ],
          ),
          const SizedBox(height: 15),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Dompet Saya',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Lihat semua',
                          style: TextStyle(
                            color: Colors.green[400],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 1,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Icon(Icons.wallet),
                            ),
                            const SizedBox(width: 5),
                            const Text('Tunai'),
                          ],
                        ),
                        const Text('Rp 0'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
