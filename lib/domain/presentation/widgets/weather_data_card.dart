import 'package:flutter/material.dart';
import 'package:weatherapp/constant/stayle.dart';

class WeaatherDataCard extends StatelessWidget {
  const WeaatherDataCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      height: 180,
      width: 320,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Tanta',
            style: AppTextStyle.cityname,
          ),
          Text(
            'Update at: 20:11',
            style: AppTextStyle.upDatetitle,
          ),
          const Spacer(
            flex: 1,
          ),
          Row(
            children: [
              const SizedBox(
                height: 50,
                width: 50,
                child: Image(image: AssetImage('assets/sun.png')),
              ),
              const Spacer(
                flex: 2,
              ),
              Text(
                '20',
                style: AppTextStyle.temp,
              ),
              const Spacer(
                flex: 1,
              ),
              Column(
                children: [
                  Text(
                    'maxTemp: 30',
                    style: AppTextStyle.maxandmainTemp,
                  ),
                  Text(
                    'minTemp: 14',
                    style: AppTextStyle.maxandmainTemp,
                  ),
                ],
              )
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          Text(
            'Clear',
            style: AppTextStyle.cityname,
          ),
        ],
      ),
    );
  }
}
