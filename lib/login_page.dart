import 'package:flutter/material.dart';
import 'package:project_flutter/nama.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _emailError;
  String? _passwordError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/kazuha/kazuha1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Container(
              width: 300,
              height: 400,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/kazuha/kazuha1.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'ITZY & LEE SERAFIM',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: 'Your email',
                        labelText: 'Email',
                        border: const OutlineInputBorder(),
                        icon: const Icon(Icons.email),
                        errorText: _emailError,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email tidak boleh kosong';
                        } else if (!value.contains('@gmail.com')) {
                          return 'Email harus @gmail.com';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Your password',
                        labelText: 'Password',
                        border: const OutlineInputBorder(),
                        icon: const Icon(Icons.lock),
                        errorText: _passwordError,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password tidak boleh kosong';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () async {
                        // Memvalidasi form
                        if (_formKey.currentState?.validate() == true) {
                          // Menampilkan PenundaScreen
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const PenundaScreen(),
                              fullscreenDialog: true,
                            ),
                          );

                          // Menunggu selama 3 detik
                          await Future.delayed(const Duration(seconds: 3));

                          // Pindah ke halaman daftar nama
                          // ignore: use_build_context_synchronously
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const NamaPage(),
                            ),
                          );
                        } else {
                          setState(() {
                            // Menangani pesan kesalahan yang ditetapkan oleh validator
                            if (_emailController.text.isEmpty || !_emailController.text.contains('@gmail.com')) {
                              _emailError = 'Email harus @gmail.com';
                            } else {
                              _emailError = null;
                            }

                            if (_passwordController.text.isEmpty) {
                              _passwordError = 'Password tidak boleh kosong';
                            } else {
                              _passwordError = null;
                            }
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PenundaScreen extends StatelessWidget {
  const PenundaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/kazuha/kazuha3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login berhasil',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(), // Menampilkan indikator progres
            SizedBox(height: 10),
            Text(
              'Loading...',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
