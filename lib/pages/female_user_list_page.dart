import 'package:flutter/material.dart';
import 'package:flutter_3_dajare/pages/female_details_page.dart';
import 'package:flutter_3_dajare/view_model/female_user_list_view_model.dart';
import 'package:flutter_3_dajare/widgets/icon.dart';
import 'package:provider/provider.dart';

import '../widgets/card.dart';

class FemaleUserListPage extends StatelessWidget {
  const FemaleUserListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FemaleUserListViewModel(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'はじめたばかりの相手',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const BackArrowIcon(),
          ),
        ),
        body: const FemaleUserListPageBody(),
      ),
    );
  }
}

class FemaleUserListPageBody extends StatelessWidget {
  const FemaleUserListPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FemaleUserListViewModel>(
        builder: (context, userModel, child) {
      return GridView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 24,
          crossAxisSpacing: 8,
          mainAxisExtent: 280,
        ),
        itemCount: userModel.femaleList.length,
        itemBuilder: (context, index) {
          return FemaleCard(
            index: index,
            mainPhoto: userModel.femaleList[index].mainPhoto,
            name: userModel.femaleList[index].name,
            age: userModel.femaleList[index].age,
            profileMessage: userModel.femaleList[index].profileMessage,
            photoList: userModel.femaleList[index].photoList,
            preference: userModel.femaleList[index].preference,
          );
        },
        shrinkWrap: true,
      );
    });
  }
}
