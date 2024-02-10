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
                              'https://media.istockphoto.com/id/1397556857/vector/avatar-13.jpg?s=612x612&w=0&k=20&c=n4kOY_OEVVIMkiCNOnFbCxM0yQBiKVea-ylQG62JErI=',
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
