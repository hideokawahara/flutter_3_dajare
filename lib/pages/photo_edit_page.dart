import 'package:flutter/material.dart';
import 'package:flutter_3_dajare/pages/profile_preview_page.dart';

class PhotoEditPage extends StatelessWidget {
  const PhotoEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          '写真編集',
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
          child: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ProfilePreviewPage(),
                ),
              );
            },
            child: const Text(
              'プレビュー',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: const PhotoEditPageBody(),
    );
  }
}

class PhotoEditPageBody extends StatelessWidget {
  const PhotoEditPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Text("5枚以上登録すると印象アップ！"),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 216,
                height: 216,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    "https://pakutaso.cdn.rabify.me/shared/img/thumb/yumikoPAR52492.jpg.webp?d=1420",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(
                        "https://pakutaso.cdn.rabify.me/shared/img/thumb/yumikoPAR52492.jpg.webp?d=1420",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(
                        "https://pakutaso.cdn.rabify.me/shared/img/thumb/yumikoPAR52492.jpg.webp?d=1420",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    "https://pakutaso.cdn.rabify.me/shared/img/thumb/yumikoPAR52492.jpg.webp?d=1420",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    "https://pakutaso.cdn.rabify.me/shared/img/thumb/yumikoPAR52492.jpg.webp?d=1420",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    "https://pakutaso.cdn.rabify.me/shared/img/thumb/yumikoPAR52492.jpg.webp?d=1420",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        color: Colors.grey[350],
                      ),
                      Container(
                        height: 25,
                        width: 25,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.grey[350],
                          size: 25,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        color: Colors.grey[350],
                      ),
                      Container(
                        height: 25,
                        width: 25,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.grey[350],
                          size: 25,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        color: Colors.grey[350],
                      ),
                      Container(
                        height: 25,
                        width: 25,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.grey[350],
                          size: 25,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
