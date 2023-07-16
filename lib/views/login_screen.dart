part of '../imports/app_imports.dart';

class Login_screen extends StatelessWidget {
  Login_screen({super.key});
  static const routename = '/l';

  String name = '';
  FocusNode myFocusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return WaveBackground(
      firstColor: AppColors.green_background_taskapp,
      secondColor: AppColors.bgWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: AppDime.lg),
          width: MediaQuery.of(context).size.width.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFieldContainer(
                child: TextFormField(
                  focusNode: myFocusNode,
                  controller: TextEditingController(text: '$name'),
                  autofillHints: [AutofillHints.email],
                  onEditingComplete: () => TextInput.finishAutofillContext(),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                      labelText: 'Username',
                      labelStyle: TextStyle(
                          color: myFocusNode.hasFocus
                              ? Colors.blue
                              : Colors.black)),
                  onChanged: (value) {
                    name = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter username';
                    }
                    return null;
                  },
                ),
              ),
              TextFieldContainer(
                child: TextFormField(
                  focusNode: myFocusNode,
                  controller: TextEditingController(text: '$name'),
                  autofillHints: [AutofillHints.email],
                  onEditingComplete: () => TextInput.finishAutofillContext(),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                      labelText: 'Username',
                      labelStyle: TextStyle(
                          color: myFocusNode.hasFocus
                              ? Colors.blue
                              : Colors.black)),
                  onChanged: (value) {
                    name = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter username';
                    }
                    return null;
                  },
                ),
              ),
              TextFieldContainer(
                child: TextFormField(
                  focusNode: myFocusNode,
                  controller: TextEditingController(text: '$name'),
                  autofillHints: [AutofillHints.email],
                  onEditingComplete: () => TextInput.finishAutofillContext(),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                      labelText: 'Username',
                      labelStyle: TextStyle(
                          color: myFocusNode.hasFocus
                              ? Colors.blue
                              : Colors.black)),
                  onChanged: (value) {
                    name = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter username';
                    }
                    return null;
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
