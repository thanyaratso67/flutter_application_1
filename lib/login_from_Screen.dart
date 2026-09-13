import 'package:flutter/material.dart';


class LoginFromScreen extends StatefulWidget {
  const LoginFromScreen({super.key});

    @override
    State<LoginFromScreen> createState() => _LoginFormScreenState();

  }

  class _LoginFormScreenState extends State<LoginFromScreen> {
    final _formKey = GlobalKey<FormState>();

    late final TextEditingController _emailController;
    late final TextEditingController _passwordController;

    String _savedEmail = '';
    String _savedPassword = '';

    @override
    void initState() {
      super.initState();

      _emailController = TextEditingController();
      _passwordController = TextEditingController();
    }

    @override
    void dispose() {
      _emailController.dispose();
      _passwordController.dispose();
      super.dispose();
    } 
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('ฟอร์มล็อกอิน'),
          ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const Text(
                    'กรุณาป้อนข้อมูลเข้าระบบ:',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: 'อีเมล',
                      hintText: 'you@exaple.com',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 15),

                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'รหัสผ่าน',
                      hintText: 'ป้อนรหัสผ่านของคุณ',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 30),
                 ],
               ),
              ),
                
            ),
    
         );
    
      }
  
    }
