
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veggies/models/product.dart';
import 'package:veggies/models/user.dart';
import 'package:veggies/providers/user_provider.dart';
import 'package:http/http.dart' as http;
import 'package:veggies/variables/error_handling.dart';
import 'package:veggies/variables/grobal_variable.dart';
import 'package:veggies/variables/utils.dart';

class CartServices {
  void removeFromCart({
    required BuildContext context,
    required Product product,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);

    try {
      http.Response res = await http.delete(
        Uri.parse('$uri/api/remove-from-cart/${product.id}'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': userProvider.user.token,
        },
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          User user =
              userProvider.user.copyWith(cart: jsonDecode(res.body)['cart']);
          userProvider.setUserFromModel(user);
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}