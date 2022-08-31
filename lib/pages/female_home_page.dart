import 'package:flutter/material.dart';
import 'package:flutter_3_dajare/pages/man_details_page.dart';
import 'package:flutter_3_dajare/view_model/female_home_view_model.dart';
import 'package:flutter_3_dajare/widgets/button.dart';
import 'package:flutter_3_dajare/widgets/card.dart';
import 'package:provider/provider.dart';

class FemaleAccountHomePage extends StatelessWidget {
  const FemaleAccountHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FemaleHomeViewModel(),
      child: const Scaffold(
        backgroundColor: Colors.white,
        body: FemaleAccountHomePageBody(),
      ),
    );
  }
}

class FemaleAccountHomePageBody extends StatefulWidget {
  const FemaleAccountHomePageBody({Key? key}) : super(key: key);

  @override
  State<FemaleAccountHomePageBody> createState() =>
      _FemaleAccountHomePageBodyState();
}

class _FemaleAccountHomePageBodyState extends State<FemaleAccountHomePageBody> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FemaleHomeViewModel>(
      builder: (context, homeModel, child) {
        return ListView.builder(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 48,
          ),
          itemCount: homeModel.list.length,
          itemBuilder: (BuildContext listContext, int index) {
            return noInfoJokeCard(
              context: context,
              contents: homeModel.list[index].contents,
              onTap: () async {
                print("tap");
                BuildContext innerContext = context; // 内部の context を保持しておくためのもの
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    innerContext =
                        context; // builder で使われている context を innerContext に保存しておく
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                );
                await Future.delayed(
                  const Duration(
                    milliseconds: 1000,
                  ),
                );
                if (!mounted) return;
                Navigator.of(innerContext).pop();
                Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute(
                    builder: (_) => const ManDetailsPage(),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
