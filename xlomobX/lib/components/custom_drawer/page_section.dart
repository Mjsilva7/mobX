import 'package:flutter/material.dart';
import 'package:xlomobX/components/custom_drawer/page_tile.dart';

class PageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageTile(
          label: 'Anúcios',
          iconData: Icons.list,
          onTap: () {},
          highlighted: true,
        ),
        PageTile(
          label: 'Inserir Anúcios',
          iconData: Icons.edit,
          onTap: () {},
          highlighted: false,
        ),
        PageTile(
          label: 'Chat',
          iconData: Icons.chat,
          onTap: () {},
          highlighted: false,
        ),
        PageTile(
          label: 'Favoritos',
          iconData: Icons.favorite,
          onTap: () {},
          highlighted: false,
        ),
        PageTile(
          label: 'Minha Conta',
          iconData: Icons.person,
          onTap: () {},
          highlighted: false,
        ),
      ],
    );
  }
}
