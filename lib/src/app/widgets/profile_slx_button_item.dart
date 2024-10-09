import 'package:flutter/material.dart';

import 'package:provider_shopping/src/data/utils/constants/color_constants.dart';

class ProfileSlxButtonItem extends StatelessWidget {

  final IconData iconData;
  final String header;

  const ProfileSlxButtonItem({
    super.key, 
    required this.iconData, 
    required this.header,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.225,
      height: MediaQuery.sizeOf(context).height * 0.085,
      child: Column(
        children: [
          Icon(
            iconData,
            color: Colors.blue,
          ),
          const Spacer(),
          Text(
            header,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: ColorConstants.black,
            ),
            textAlign: TextAlign.center,
          )
    
        ],
      ),
    );
  }
}