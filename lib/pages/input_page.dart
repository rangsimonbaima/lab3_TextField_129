import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  // List arr = ["ping", 56];

// @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void dispose() {
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input 999999999"),
      ),
      body: Center(
        
        child: Form(
          key: _formKey,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Username"),
                usernameText(),
                const SizedBox(
                  height: 16,
                ),
                passwordText(),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      debugPrint("ping");
                      if(_formKey.currentState!.validate()){
                        debugPrint("successful.");
                      }
                      
                    },
                    icon: Icon(Icons.login),
                    label: Text("เข้าสู่ระบบ"))
                // obscureText: true,
                // obscuringCharacter: "*",
                // Text(nameController.text),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField usernameText() {
    return TextFormField(
      validator: (value) {
        if(value!.isEmpty){
          return "กรุณาใส่ชื่อ";
        }
        return null;
      },
      controller: nameController,
      onChanged: (value) {
        setState(() {});
      },
      decoration: const InputDecoration(
        icon: Icon(Icons.person),
        labelText: "Username",
        hintText: "ใส่ชื่อผู้ใช้",
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(230, 162, 162, 0.8),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(230, 162, 162, 0.8),
          ),
        ),
      ),
    );
  }

  TextFormField passwordText() {
    return TextFormField(
      validator: (value) {
        if(value!.isEmpty){
          return "กรุณาใส่รหัสผ่าน";
        }
        return null;
      },
      controller: passController,
      obscureText: true,
      onChanged: (value) {
        setState(() {});
      },
      decoration: const InputDecoration(
        icon: Icon(Icons.lock),
        labelText: "Password",
        hintText: "ใส่รหัสผ่าน",
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(230, 162, 162, 0.8),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(230, 162, 162, 0.8),
          ),
        ),
      ),
    );
  }
}
