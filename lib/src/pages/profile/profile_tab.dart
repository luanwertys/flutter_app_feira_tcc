import 'package:flutter/material.dart';
import 'package:flutter_app_cat_happy/src/config/custom_colors.dart';
import 'package:flutter_app_cat_happy/src/pages/commom_widgets/custom_text_field.dart';
import 'package:flutter_app_cat_happy/src/config/app_data.dart' as appdata;

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.customContrastColor3,
        title: Text(
          'Perfil do usuário',
          style: TextStyle(
            color: CustomColors.customContrastColor4,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.logout,
              color: CustomColors.customContrastColor4,
            ),
          )
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: [
          CustomTextField(
            readOnly: true,
            initialValue: appdata.user.email,
            icon: Icons.email,
            label: 'E-mail',
            textInputType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
          ),
          CustomTextField(
            readOnly: true,
            initialValue: appdata.user.name,
            icon: Icons.person,
            label: 'Nome',
          ),
          CustomTextField(
            readOnly: true,
            initialValue: appdata.user.phone,
            icon: Icons.phone,
            label: 'Celular',
          ),
          CustomTextField(
            readOnly: true,
            initialValue: appdata.user.cpf,
            icon: Icons.file_copy,
            label: 'CPF',
            isSecret: true,
          ),

          //Botão para atualizar a senha
          SizedBox(
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  width: 1.5,
                  color: CustomColors.customContrastColor3,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Atualizar senha',
              ),
            ),
          )
        ],
      ),
    );
  }
}
