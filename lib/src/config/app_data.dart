import 'package:flutter_app_cat_happy/src/models/item_model.dart';

ItemModel granplus = ItemModel(
  description:
      'Ração GranPlus Choice para Gatos Adultos Sabor Frango e Carne 10,1kg',
  imgUrl: 'assets/images/rações/granplus.jpeg',
  itemName: 'Ração',
  price: 135.99,
  unit: 'kg',
);

ItemModel golden1 = ItemModel(
  description: 'Ração Golden para Gatos Adultos Castrados Sabor Frango',
  imgUrl: 'assets/images/rações/golden2.jpeg',
  itemName: 'Ração',
  price: 67.90,
  unit: 'kg',
);

ItemModel golden2 = ItemModel(
  description: 'Ração Golden para Gatos Adultos Castrados Sabor Salmão',
  imgUrl: 'assets/images/rações/golgen.jpeg',
  itemName: 'Ração',
  price: 68.90,
  unit: 'kg',
);
ItemModel premier = ItemModel(
  description: 'Ração Premier para Gatos Castrados de 7 a 11 anos Sabor Frango',
  imgUrl: 'assets/images/rações/primer.jpeg',
  itemName: 'Ração',
  price: 23.99,
  unit: 'g',
);

ItemModel racao1 = ItemModel(
  description: 'Ração Golden para Gatos Adultos Castrados Sabor Salmão',
  imgUrl: 'assets/images/rações/ração-royal-canin-vitalidade.png',
  itemName: 'Ração',
  price: 68.90,
  unit: 'kg',
);

ItemModel racao2 = ItemModel(
  description: 'Ração Golden para Gatos Adultos Castrados Sabor Salmão',
  imgUrl: 'assets/images/rações/ração-royal-canin.png',
  itemName: 'Ração',
  price: 68.90,
  unit: 'kg',
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
