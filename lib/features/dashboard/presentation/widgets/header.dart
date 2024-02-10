import 'package:flutter/material.dart';
import 'package:template/features/dashboard/presentation/widgets/search_bar.dart';

class Header extends StatelessWidget {
  final String? imageUrl;
  final List<DropdownMenuItem>? dropdownMenuItems;

  const Header({super.key, this.imageUrl, this.dropdownMenuItems});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const RoundedTextField(),
        const Spacer(),
        Row(
          children: [
            const Icon(
              Icons.notifications,
              size: 26,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 10,
            ),
            CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.1),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                          imageUrl ??
                              'https://media.licdn.com/dms/image/D4D03AQFyydSBjkvU-A/profile-displayphoto-shrink_200_200/0/1680703893216?e=1712793600&v=beta&t=ePzUj0xGTgMUyIFLh5nCHEPx325iqCngqKbPwuyVN-A',
                        ),
                        fit: BoxFit.cover)),
              ),
            ),
            if (dropdownMenuItems != null)
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: DropdownButton(
                    icon: const Icon(Icons.keyboard_arrow_down_outlined),
                    underline: const SizedBox(),
                    value: 1,
                    items: dropdownMenuItems,
                    onChanged: (value) {}),
              )
          ],
        )
      ],
    );
  }
}
