import 'package:flutter_app_cat_happy/src/models/item_model.dart';
import 'package:flutter_app_cat_happy/src/models/user_model.dart';

import '../models/cart_item_model.dart';

ItemModel granplus = ItemModel(
  description:
      'Ração GranPlus Choice para Gatos Adultos Sabor Frango e Carne 10,1kg',
  imgUrl: 'assets/images/rações/granplus.jpeg',
  itemName: 'Ração GranPlus',
  price: 135.99,
  unit: 'Un',
);

ItemModel golden1 = ItemModel(
  description: 'Ração Golden para Gatos Adultos Castrados Sabor Frango',
  imgUrl: 'assets/images/rações/golden2.jpeg',
  itemName: 'Ração Golden Sabor Frango',
  price: 67.90,
  unit: 'Un',
);

ItemModel golden2 = ItemModel(
  description: 'Ração Golden para Gatos Adultos Castrados Sabor Salmão',
  imgUrl: 'assets/images/rações/golgen.jpeg',
  itemName: 'Ração Golden Sabor Salmão',
  price: 68.90,
  unit: 'Un',
);
ItemModel premier = ItemModel(
  description: 'Ração Premier para Gatos Castrados de 7 a 11 anos Sabor Frango',
  imgUrl: 'assets/images/rações/primer.jpeg',
  itemName: 'Ração Premier',
  price: 23.99,
  unit: 'g',
);

ItemModel racao1 = ItemModel(
  description: 'Ração Golden para Gatos Adultos Castrados Sabor Salmão',
  imgUrl: 'assets/images/rações/ração-royal-canin-vitalidade.png',
  itemName: 'Ração',
  price: 68.90,
  unit: 'Un',
);

ItemModel racao2 = ItemModel(
  description: 'Ração Golden para Gatos Adultos Castrados Sabor Salmão',
  imgUrl: 'assets/images/rações/ração-royal-canin.png',
  itemName: 'Ração',
  price: 68.90,
  unit: 'Un',
);

List<ItemModel> items = [
  granplus,
  golden1,
  golden2,
  premier,
  racao1,
  racao2,
];

List<String> categorias = [
  'Ração',
  'Petiscos',
  'Roupas',
  'Brinquedos',
  'Areias'
];

List<CartItemModel> cartItens = [
  CartItemModel(
    item: granplus,
    quantity: 2,
  ),
  CartItemModel(
    item: golden1,
    quantity: 1,
  ),
  CartItemModel(
    item: golden2,
    quantity: 4,
  ),
  CartItemModel(
    item: premier,
    quantity: 3,
  ),
];

UserModel user = UserModel(
  name: 'Luan',
  email: 'a@2.com.br',
  phone: '99 9 9999-9999',
  cpf: '999.999.999-99',
  password: 'senha@123',
);
