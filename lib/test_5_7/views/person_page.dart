import 'package:flutter/material.dart';
import 'package:interview_codium/test_5_7/models/person_model.dart';
import 'package:interview_codium/test_5_7/views/edit_profile_page.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({Key? key}) : super(key: key);

  @override
  _PersonPageState createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    final _myStyle = TextStyle(
      fontSize: 15.5,
      fontWeight: FontWeight.bold,
      color: Color(0xFF375170),
    );
    final _myStyleAddress = TextStyle(
      fontSize: 14.5,
      color: Color(0xFFBCC6D3),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 65,
        backgroundColor: Colors.white,
        title: Text(
          'Person',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF375170),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 6),
          Expanded(
            child: ListView.builder(
              itemCount: personmodels.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      EdgeInsets.only(left: 18, top: 11, right: 18, bottom: 11),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditProfilePage(
                            personmodels: personmodels[index],
                            id: index,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 7,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.grey,
                          width: 0.7,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      margin: EdgeInsets.all(4),
                                      padding: EdgeInsets.only(top: 15),
                                      alignment: Alignment.topCenter,
                                      child: CircleAvatar(
                                        maxRadius: 24,
                                        backgroundImage: AssetImage(
                                            personmodels[index].images),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      margin: EdgeInsets.all(4),
                                      padding: EdgeInsets.only(top: 10),
                                      child: Column(
                                        children: [
                                          Expanded(
                                              flex: 1,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      personmodels[index].name,
                                                      style: _myStyle,
                                                    ),
                                                  ),
                                                  SizedBox(width: 6),
                                                ],
                                              )),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                personmodels[index].email,
                                                style: _myStyle,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 3,
                                            child: Container(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                  personmodels[index].address,
                                                  maxLines: 4,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: _myStyleAddress),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
