import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:interview_codium/test_5_7/models/person_model.dart';
import 'package:interview_codium/test_5_7/views/person_page.dart';

class EditProfilePage extends StatefulWidget {
  final PersonModel personmodels;
  late int id;
  EditProfilePage({
    Key? key,
    required this.personmodels,
    required this.id,
  }) : super(key: key);

  @override
  _EditProfilePageState createState() =>
      _EditProfilePageState(personmodels, id);
}

class _EditProfilePageState extends State<EditProfilePage> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var hbdController = TextEditingController();
  var addressController = TextEditingController();

  late int id;
  _EditProfilePageState(PersonModel personmodels, idx) {
    personmodels = personmodels;
    id = idx;
    nameController.text = personmodels.id.toString();
    emailController.text = personmodels.id.toString();
    hbdController.text = personmodels.id.toString();
    addressController.text = personmodels.id.toString();
  }

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController(text: widget.personmodels.name);
    var emailController =
        TextEditingController(text: widget.personmodels.email);
    var hbdController = TextEditingController(text: widget.personmodels.hbd);
    var addressController =
        TextEditingController(text: widget.personmodels.address);
    final _myStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Color(0xFF375170),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF375170),
          ),
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Color(0xFF375170),
            )),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 22),
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                if (nameController.text.isNotEmpty &&
                    emailController.text.isNotEmpty &&
                    hbdController.text.isNotEmpty &&
                    addressController.text.isNotEmpty) {
                  var edit =
                      personmodels.firstWhere((element) => element.id == id);
                  edit.name = nameController.text;
                  edit.email = emailController.text;
                  edit.hbd = hbdController.text;
                  edit.address = addressController.text;
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return PersonPage();
                  }), (route) => false);
                } else {
                  Fluttertoast.showToast(
                    msg: "Please Fill Out This.",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 2,
                    backgroundColor: Color(0xFF88464A),
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
                }
              },
              child: Text(
                'Save',
                style: TextStyle(
                  fontSize: 15.5,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF375170),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(widget.personmodels.images),
                        maxRadius: 65,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Name'),
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        fillColor: Colors.white70,
                        hintText: 'Name',
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('E-mail'),
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        fillColor: Colors.white70,
                        hintText: 'E-mail',
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Birth Date'),
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    child: TextField(
                      keyboardType: TextInputType.datetime,
                      controller: hbdController,
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        fillColor: Colors.white70,
                        hintText: 'Birth Date',
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Address'),
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                    width: double.infinity,
                    child: TextField(
                      controller: addressController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        fillColor: Colors.white70,
                        hintText: 'Address',
                      ),
                      maxLines: 3,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
