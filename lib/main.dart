import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shrine/Provider/NotificationProvider.dart';

import 'Provider/FriendProvider.dart';
import 'Provider/GroupProvider.dart';

import 'Provider/UserProvider.dart';
import 'Provider/scheduleProvider.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<GroupProvider>(create: (_) => GroupProvider()),
        ChangeNotifierProvider<ScheduleProvider>(
            create: (_) => ScheduleProvider()),
        ChangeNotifierProvider<FriendProvider>(create: (_) => FriendProvider()),
        ChangeNotifierProvider<NotificationProvider>(
            create: (_) => NotificationProvider()),
        ChangeNotifierProvider<UserProvider>(create: (_) => UserProvider()),
      ],
      child: const ShrineApp(),
    );
  }
}
