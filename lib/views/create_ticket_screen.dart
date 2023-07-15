part of '../imports/app_imports.dart';

class Create_ticket_screen extends StatefulWidget {
  const Create_ticket_screen({super.key});

  static const routename = '/Createtick';

  @override
  State<Create_ticket_screen> createState() => _Create_ticket_screenState();
}

bool checkedValue = false;
bool newValue = true;

class _Create_ticket_screenState extends State<Create_ticket_screen> {
  @override
  Widget build(BuildContext context) {
    return WaveBackground(
        firstColor: AppColors.green_background_taskapp,
        secondColor: AppColors.bgWhite,
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text('Ticket'),
            ),
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: AppDime.md_10),
                child: Column(
                  children: [
                    TextFormField(
                      // obscureText: true,
                      cursorColor: AppColors.bgWhite,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.bgWhite),
                      decoration: InputDecoration(
                        fillColor: AppColors.bgWhite,
                        counterStyle: TextStyle(color: AppColors.bgWhite),
                        labelText: 'Ticket Title',
                      ),
                    ),
                    SizedBox(
                      height: AppDime.xlg,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Ticket for :',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.bgWhite),
                        )
                      ],
                    ),
                    RadioListTile(
                      activeColor: AppColors.green_secondry_color,
                      groupValue: checkedValue,
                      value: checkedValue,
                      onChanged: (newValue) {
                        setState(() {
                          checkedValue = newValue!;
                        });
                      },
                      tileColor: Colors.transparent,
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ///use your image
                          Icon(Icons.person),
                          Text(
                            "Me",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RadioListTile(
                      activeColor: AppColors.green_secondry_color,
                      groupValue: checkedValue,
                      value: checkedValue,
                      onChanged: (newValue) {
                        setState(() {
                          checkedValue = newValue!;
                        });
                      },
                      tileColor: Colors.transparent,
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ///use your image
                          Icon(Icons.person),
                          Text(
                            "Others:",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Row(
                        //   children: [
                        //     Icon(Icons.arrow_back),
                        //     const SizedBox(
                        //       width: 20,
                        //     ),
                        //     Text('Create Post'),
                        //     Spacer(),
                        //     ElevatedButton(
                        //       style: ElevatedButton.styleFrom(
                        //           backgroundColor: Colors.grey),
                        //       onPressed: () {},
                        //       child: Text('Post'),
                        //     )
                        //   ],
                        // ),
                        Divider(
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          // leading: Image.network(
                          // 'https://upload.wikimedia.org/wikipedia/commons/4/44/Facebook_Logo.png'),
                          title: Text("Username Here"),
                          subtitle: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Expanded(
                                  child: OutlinedButton.icon(
                                    style: OutlinedButton.styleFrom(
                                        foregroundColor: Colors.grey),
                                    onPressed: () {},
                                    icon: Icon(Icons.group),
                                    label: Row(
                                      children: [
                                        Text('Friends'),
                                        Expanded(
                                          child: Icon(
                                            Icons.arrow_drop_down,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: OutlinedButton.icon(
                                    style: OutlinedButton.styleFrom(
                                        foregroundColor: Colors.grey),
                                    onPressed: () {},
                                    icon: Icon(Icons.add),
                                    label: Row(
                                      children: [
                                        Text('Album'),
                                        Expanded(
                                          child: Icon(
                                            Icons.arrow_drop_down,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          maxLines: 5,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'What\'s on your Mind?',
                            hintStyle: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton(
                            onPressed: () => _oncancelAlertPressed(context),
                            child: Text('Cancel')),
                        ElevatedButton(
                            onPressed: () => _onBasicAlertPressed(context),
                            child: Text('Send'))
                      ],
                    )
                  ],
                ),
              ),
            )));
  }

  _onBasicAlertPressed(context) {
    Alert(
      context: context,
      type: AlertType.warning,
      style: AlertStyle(descStyle: TextStyle(fontSize: AppDime.lg)),
      // title: "RFLUTTER ALERT",
      desc: "Are You Sure You Want To Post Your Ticket ?",
      buttons: [
        DialogButton(
          child: Text(
            "Cancel",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          color: AppColors.green_background_taskapp,
        ),
        DialogButton(
          child: Text(
            "Send",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          color: AppColors.green_background_taskapp,
        )
      ],
    ).show();
  }

  _oncancelAlertPressed(context) {
    Alert(
      context: context,
      type: AlertType.warning,
      style: AlertStyle(descStyle: TextStyle(fontSize: AppDime.lg)),
      // title: "RFLUTTER ALERT",
      desc:
          "Are You Sure You Want To Cancel Your Ticket ? the info will be lost",
      buttons: [
        DialogButton(
          child: Text(
            "No",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          color: AppColors.green_background_taskapp,
        ),
        DialogButton(
          child: Text(
            "Yes",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () {
            Navigator.pop(context);
            Navigator.pop(context);
          },
          color: AppColors.green_background_taskapp,
        )
      ],
    ).show();
  }
}
