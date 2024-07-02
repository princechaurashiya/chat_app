import 'package:chat_app/component/button.dart';
import 'package:chat_app/component/color.dart';
import 'package:chat_app/component/inputText.dart';
import 'package:chat_app/pages/utils/pick_image.dart';
import 'package:chat_app/resources/add_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final nameController = TextEditingController();
  final bioController = TextEditingController();
  Uint8List? _image;
  void SelectImage() async {
    Uint8List? img = await pickImage(ImageSource.gallery);

    setState(() {
      _image = img;
    });
  }

  void saveProfile() async {
    String name = nameController.text;
    String bio = bioController.text;
    String resp =
        await StoreData().saveData(name: name, bio: bio, file: _image!);
  }

  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(color: mycolor1),
        ),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          //  crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                _image != null
                    ? CircleAvatar(
                        radius: 80,
                        backgroundImage: MemoryImage(_image!),
                      )
                    : CircleAvatar(
                        radius: 80,
                        backgroundImage: NetworkImage(
                            'https://fonts.google.com/icons?icon.query=account&icon.size=24&icon.color=%235f6368'),
                      ),
                Positioned(
                  child: IconButton(
                      onPressed: () {
                        SelectImage();
                      },
                      icon: Icon(Icons.add_a_photo)),
                  bottom: -1,
                  left: 110,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: InputText(
                  h_text: 'Name',
                  controller: nameController,
                  key_board_type: TextInputType.text),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: InputText(
                  h_text: 'Bio',
                  controller: bioController,
                  key_board_type: TextInputType.text),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                saveProfile();
              },
              child: Button(
                  // color: Color(0xffF3F6F6),
                  color: mycolor1,
                  text: 'Log in',
                  height: screen_height * 0.05,
                  width: screen_width * 0.4),
            ),
          ],
        ),
      ),
    );
  }
}
