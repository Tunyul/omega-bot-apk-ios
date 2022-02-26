import 'package:omega/utils/tampilanIsiprofit.dart';
import 'package:flutter/material.dart';

class DashboardIsiProfit extends StatelessWidget {
  const DashboardIsiProfit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TampilanIsiProfit(
          iconya: 'assets/icons/bitcoin.png',
          jeniscoin: 'BTC/USDT',
          performance: '7.58%',
          profit: '5.87',
        ),
        TampilanIsiProfit(
          iconya: 'assets/icons/solana.png',
          jeniscoin: 'SOL/USDT',
          performance: '2.42%',
          profit: '1.24',
        ),
        TampilanIsiProfit(
          iconya: 'assets/icons/polkadot.png',
          jeniscoin: 'DOT/USDT',
          performance: '3.54%',
          profit: '122.54',
        ),
        TampilanIsiProfit(
          iconya: 'assets/icons/cardano.png',
          jeniscoin: 'ADA/USDT',
          performance: '2.84%',
          profit: '254.57',
        ),
      ],
    );
  }
}
