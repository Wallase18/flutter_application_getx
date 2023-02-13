import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_getx/app/data/repositories/github_repository.dart';
import 'package:flutter_application_getx/app/pages/home/home_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final HomeController _controller;

  @override
  void initState() {
    super.initState();
    _controller = HomeController(
      repository: GithubRepository(
        dio: Dio(),
      ),
    );
    _controller.getGithubUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Github users"),
      ),
      body: Obx(
        (() {
          return _controller.isLoading.value
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : _controller.users.isEmpty
                  ? const Center(
                      child: Text(
                        'Nenhum usuário foi encontrado',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : ListView.separated(
                      separatorBuilder: ((_, index) => const Divider()),
                      itemCount: _controller.users.length,
                      itemBuilder: ((context, index) {
                        final user = _controller.users[index];
                        return ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: CircleAvatar(
                            radius: 45,
                            backgroundImage: NetworkImage(user.avatarUrl),
                          ),
                          title: const Text(
                            'usuário',
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                          subtitle: Text(
                            user.login,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          onTap: () {},
                        );
                      }),
                    );
        }),
      ),
    );
  }
}
