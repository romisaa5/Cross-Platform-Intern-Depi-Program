import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:session1/theme/colors.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? _buildAndroidProfile(context)
        : _buildIOSProfile(context);
  }

  Widget _buildAndroidProfile(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Profile (Android)'),
        backgroundColor: ColorsManger.kPrimaryColor,
      ),
      body: _commonProfileContent(
        button: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorsManger.kPrimaryColor,
          ),
          onPressed: () {},
          child: const Text('Edit Profile'),
        ),
      ),
    );
  }

  Widget _buildIOSProfile(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Profile (iOS)'),
        backgroundColor: CupertinoColors.systemGrey6,
      ),
      child: _commonProfileContent(
        button: CupertinoButton.filled(
          onPressed: () {},
          child: const Text('Edit Profile'),
        ),
      ),
    );
  }

  Widget _commonProfileContent({required Widget button}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),
          const SizedBox(height: 20),
          const Text(
            'Romisaa Fadel',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          button,
        ],
      ),
    );
  }
}
