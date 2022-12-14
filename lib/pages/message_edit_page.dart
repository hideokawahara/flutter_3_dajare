import 'package:flutter/material.dart';
import 'package:flutter_3_dajare/utility/dialog.dart';
import 'package:flutter_3_dajare/view_model/authentication_view_model.dart';
import 'package:flutter_3_dajare/view_model/message_edit_view_model.dart';
import 'package:flutter_3_dajare/widgets/icon.dart';
import 'package:provider/provider.dart';

import '../widgets/text_form.dart';

class MessageEditPage extends StatelessWidget {
  const MessageEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: ChangeNotifierProvider(
        create: (_) => MessageEditViewModel(),
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              '自己紹介',
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
            actions: [
              Builder(builder: (BuildContext newContext) {
                var navigator = Navigator.of(context, rootNavigator: true);
                return TextButton(
                  onPressed: () async {
                    String textValue = Provider.of<MessageEditViewModel>(
                            newContext,
                            listen: false)
                        .messageText;
                    Provider.of<AuthenticationViewModel>(context, listen: false)
                        .addMessageText(
                      textValue,
                    );
                    await showResultDialog(
                      context: context,
                      dialogText: '保存しました',
                    );
                    navigator.pop();
                  },
                  child: const Text(
                    '保存',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }),
            ],
          ),
          body: const MessageEditPageBody(),
        ),
      ),
    );
  }
}

class MessageEditPageBody extends StatefulWidget {
  const MessageEditPageBody({Key? key}) : super(key: key);

  @override
  State<MessageEditPageBody> createState() => _MessageEditPageBodyState();
}

class _MessageEditPageBodyState extends State<MessageEditPageBody> {
  String? message;
  @override
  void initState() {
    super.initState();
    message = Provider.of<AuthenticationViewModel>(context, listen: false)
        .myData
        ?.profileMessage;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: MessageTextForm(
              initialMessage: message ?? '',
              setTextCallback: (String value) {
                Provider.of<MessageEditViewModel>(context, listen: false)
                    .messageText = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
