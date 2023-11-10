import 'package:flutter/material.dart';

class Summarypage extends StatelessWidget {
  const Summarypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
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
                              fontSize: 10,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.help,
                            size: 15,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.notifications)
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
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Colors.black,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8, right: 8, top: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.wallet),
                                SizedBox(width: 5),
                                Text('Tunai'),
                              ],
                            ),
                            Text('Rp 0'),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8, right: 8, top: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.wallet),
                                SizedBox(width: 5),
                                Text('Tunai'),
                              ],
                            ),
                            Text('Rp 0'),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8, right: 8, top: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.wallet),
                                SizedBox(width: 5),
                                Text('Tunai'),
                              ],
                            ),
                            Text('Rp 0'),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8, right: 8, top: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.wallet),
                                SizedBox(width: 5),
                                Text('Tunai'),
                              ],
                            ),
                            Text('Rp 0'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
