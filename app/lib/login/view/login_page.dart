import 'package:flutter/material.dart';
import 'package:budgetin/login/login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:budgetin/app/services/device_info_plus.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String _deviceData;
  late String _deviceInfo = '';
  TextEditingController? _passController;
  TextEditingController? _emailController;

  @override
  void initState() {
    getDeviceData();
    _passController = TextEditingController();
    _emailController = TextEditingController();
    super.initState();
  }

  void getDeviceData() async {
    _deviceData = await initPlatformInfo();
    if (!mounted) return;
    setState(() {
      _deviceInfo = _deviceData;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _emailController!.dispose();
    _passController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'E-Mail'),
              controller: _emailController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Password'),
              controller: _passController,
            ),
            const SizedBox(height: 16),
            BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                switch (state) {
                  case LoginInitial _:
                    return ElevatedButton(
                      onPressed: () {
                        final req = LoginModel(
                          device: _deviceInfo,
                          email: _emailController!.text,
                          password: _passController!.text,
                        );
                        context
                            .read<LoginBloc>()
                            .add(LoginButtonPressed(loginModel: req));
                      },
                      child: const Text('Login'),
                    );
                  case LoginLoaded _:
                    return ElevatedButton(
                      onPressed: () {
                        // context.read<AuthBloc>().add(LoggedOut());
                      },
                      child: const Text('LogOut'),
                    );
                  default:
                    return const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
                      strokeWidth: 4.0,
                    );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
