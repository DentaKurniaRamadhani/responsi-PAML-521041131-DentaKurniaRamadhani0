import 'package:flutter/material.dart';
import 'daftar.dart';
import 'lupa_password.dart';
import 'navbar.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png', width: 150),
              const SizedBox(height: 20),
              const Text(
                'Masuk',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Masukan Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Masukan Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Menggunakan Row untuk menampilkan dua Column
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Column untuk "Belum punya akun?" dan "Daftar"
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Belum punya akun?'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Daftar()),
                          );
                        },
                        child: const Text(
                          'Daftar',
                          style: TextStyle(
                              color: Color(0xFF4285F4)), // Mengubah warna
                        ),
                      ),
                    ],
                  ),
                  // Column untuk "Lupa password?"
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LupaPassword()),
                          );
                        },
                        child: const Text(
                          'Lupa password?',
                          style: TextStyle(
                              color: Color(0xFF4285F4)), // Mengubah warna
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor:
                      const Color(0xFF4285F4), // Mengubah warna tombol
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Navbar()),
                  );
                },
                child: const Text(
                  'Masuk',
                  style: TextStyle(
                      fontSize: 18, color: Colors.white), // Mengubah warna teks
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
