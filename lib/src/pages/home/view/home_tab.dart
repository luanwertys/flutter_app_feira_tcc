import 'package:add_to_cart_animation/add_to_cart_animation.dart';
import 'package:add_to_cart_animation/add_to_cart_icon.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:tcc/src/config/custom_colors.dart';
import 'package:tcc/src/pages/base/controller/navigation_controller.dart';
import 'package:tcc/src/pages/cart/controller/cart_controller.dart';
import 'package:tcc/src/pages/common_widgets/app_name_widget.dart';
import 'package:tcc/src/pages/common_widgets/custom_shimmer.dart';
import 'package:tcc/src/pages/home/controller/home_controller.dart';
import 'package:tcc/src/pages/home/view/components/category_tile.dart';
import 'package:tcc/src/pages/home/view/components/item_tile.dart';
=======

import '../../../config/custom_colors.dart';
import '../../base/controller/navigation_controller.dart';
import '../../cart/controller/cart_controller.dart';
import '../../commom_widgets/custom_shimmer.dart';
import '../../common_widgets/app_name_widget.dart';
import '../controller/home_controller.dart';
import 'components/category_tile.dart';
import 'components/item_tile.dart';
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  GlobalKey<CartIconKey> globalKeyCartItems = GlobalKey<CartIconKey>();

  final searchController = TextEditingController();
  final navigationController = Get.find<NavigationController>();

  late Function(GlobalKey) runAddToCardAnimation;

  void itemSelectedCartAnimations(GlobalKey gkImage) {
    runAddToCardAnimation(gkImage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
<<<<<<< HEAD
        title: const AppNameWidget(),
=======
        title: const AppNameWidget(
          fontsize: 20,
        ),
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              right: 15,
            ),
            child: GetBuilder<CartController>(
              builder: (controller) {
                return GestureDetector(
                  onTap: () {
                    navigationController.navigatePageView(NavigationTabs.cart);
                  },
                  child: Badge(
<<<<<<< HEAD
                    badgeColor: CustomColors.customContrastColor,
=======
                    badgeColor: CustomColors.customContrastColor3,
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
                    badgeContent: Text(
                      controller.cartItems.length.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    child: AddToCartIcon(
                      key: globalKeyCartItems,
                      icon: Icon(
                        Icons.shopping_cart,
<<<<<<< HEAD
                        color: CustomColors.customSwatchColor,
=======
                        color: CustomColors.customContrastColor3,
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),

      body: AddToCartAnimation(
        gkCart: globalKeyCartItems,
        previewDuration: const Duration(milliseconds: 100),
        previewCurve: Curves.ease,
        receiveCreateAddToCardAnimationMethod: (addToCardAnimationMethod) {
          runAddToCardAnimation = addToCardAnimationMethod;
        },
        child: Column(
          children: [
            // Campo de pesquisa
            GetBuilder<HomeController>(
              builder: (controller) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: TextFormField(
                    controller: searchController,
                    onChanged: (value) {
                      controller.searchTitle.value = value;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      isDense: true,
                      hintText: 'Pesquise aqui...',
                      hintStyle: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 14,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: CustomColors.customContrastColor,
                        size: 21,
                      ),
                      suffixIcon: controller.searchTitle.value.isNotEmpty
                          ? IconButton(
                              onPressed: () {
                                searchController.clear();
                                controller.searchTitle.value = '';
                                FocusScope.of(context).unfocus();
                              },
                              icon: Icon(
                                Icons.close,
<<<<<<< HEAD
                                color: CustomColors.customContrastColor,
=======
                                color: CustomColors.customContrastColor3,
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
                                size: 21,
                              ),
                            )
                          : null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),

            // Categorias
            GetBuilder<HomeController>(
              builder: (controller) {
                return Container(
                  padding: const EdgeInsets.only(left: 25),
                  height: 40,
                  child: !controller.isCategoryLoading
                      ? ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) {
                            return CategoryTile(
                              onPressed: () {
                                controller.selectCategory(
                                    controller.allCategories[index]);
                              },
                              category: controller.allCategories[index].title,
                              isSelected: controller.allCategories[index] ==
                                  controller.currentCategory,
                            );
                          },
                          separatorBuilder: (_, index) =>
                              const SizedBox(width: 10),
                          itemCount: controller.allCategories.length,
                        )
                      : ListView(
                          scrollDirection: Axis.horizontal,
                          children: List.generate(
                            10,
                            (index) => Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.only(right: 12),
                              child: CustomShimmer(
                                height: 20,
                                width: 80,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                );
              },
            ),

            // Grid
            GetBuilder<HomeController>(
              builder: (controller) {
                return Expanded(
                  child: !controller.isProductLoading
                      ? Visibility(
                          visible: (controller.currentCategory?.items ?? [])
                              .isNotEmpty,
<<<<<<< HEAD
=======
                          replacement: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.search_off,
                                size: 40,
                                color: CustomColors.customContrastColor3,
                              ),
                              const Text('Não há itens para apresentar'),
                            ],
                          ),
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
                          child: GridView.builder(
                            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                            physics: const BouncingScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
<<<<<<< HEAD
                              childAspectRatio: 9 / 11.5,
=======
                              childAspectRatio: 7.2 / 11.5,
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
                            ),
                            itemCount: controller.allProducts.length,
                            itemBuilder: (_, index) {
                              if (((index + 1) ==
                                      controller.allProducts.length) &&
                                  !controller.isLastPage) {
                                controller.loadMoreProducts();
                              }

                              return ItemTile(
                                  item: controller.allProducts[index],
                                  cartAnimationMethod:
                                      itemSelectedCartAnimations);
                            },
                          ),
<<<<<<< HEAD
                          replacement: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.search_off,
                                size: 40,
                                color: CustomColors.customSwatchColor,
                              ),
                              const Text('Não há itens para apresentar'),
                            ],
                          ),
=======
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
                        )
                      : GridView.count(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                          physics: const BouncingScrollPhysics(),
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
<<<<<<< HEAD
                          childAspectRatio: 9 / 11.5,
=======
                          childAspectRatio: 7.2 / 11.5,
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
                          children: List.generate(
                            10,
                            (index) => CustomShimmer(
                              height: double.infinity,
                              width: double.infinity,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
