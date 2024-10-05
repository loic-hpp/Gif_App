import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping_gift_app/ui/category/category_list.dart';
import 'package:flutter_shopping_gift_app/ui/common/custom_text_field.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          placeholder: 'Search ...',
          key: UniqueKey(),
          onTap: () {},
          label: '',
          onSubmitted: (String) {},
          onChanged: (String) {},
          controller: TextEditingController(),
          keyboardType: TextInputType.text,
          suffixIcon: const Icon(Icons.clear),
          obscureText: false,
          readOnly: false,
          filled: true,
          enabled: true,
          errorText: '',
          padding: const EdgeInsets.all(10),
          inputFormatters: [],
        ),
        CategoryList(
          key: UniqueKey(),
          title: "Categories",
        ),
      ],
    );
  }
}
