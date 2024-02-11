import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../service/auth/auth_service.dart'; // 引入前面创建的认证服务

class SignInOrRegisterPage extends StatefulWidget {
  const SignInOrRegisterPage({super.key});

  @override
  _SignInOrRegisterPageState createState() => _SignInOrRegisterPageState();
}

class _SignInOrRegisterPageState extends State<SignInOrRegisterPage> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  // 控制显示注册或登录
  bool showSignIn = true;

  // 用户输入
  String email = '';
  String password = '';
  String error = '';

  // 切换显示
  void toggleView() {
    setState(() {
      showSignIn = !showSignIn;
      error = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(showSignIn ? '登录' : '注册'),
        actions: <Widget>[
          TextButton.icon(
            icon: Icon(Icons.person),
            label: Text(showSignIn ? '注册' : '登录'),
            onPressed: () => toggleView(),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                validator: (val) => val!.isEmpty ? '请输入邮箱' : null,
                onChanged: (val) {
                  setState(() => email = val.trim());
                },
                decoration: InputDecoration(
                  hintText: '邮箱',
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                obscureText: true,
                validator: (val) => val!.length < 6 ? '密码至少6位' : null,
                onChanged: (val) {
                  setState(() => password = val);
                },
                decoration: InputDecoration(
                  hintText: '密码',
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                child: Text(showSignIn ? '登录' : '注册'),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    User? user = showSignIn
                        ? await _auth.signInWithEmailAndPassword(
                            email, password)
                        : await _auth.registerWithEmailAndPassword(
                            email, password);
                    if (user == null) {
                      setState(() => error = '请输入有效的邮箱或密码');
                    }
                  }
                },
              ),
              SizedBox(height: 12.0),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
