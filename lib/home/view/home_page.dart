import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _HomeView();
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scheme = Theme.of(context).colorScheme;

    const avatarSize = 48.0;

    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.3,
              color: scheme.primary,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text('Apprecio'),
                    Container(
                      height: size.height * 0.4,
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: size.height,
              width: size.width,
              color: scheme.onPrimary,
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  children: [
                    SizedBox(
                      width: size.width,
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: avatarSize,
                                backgroundColor: scheme.primary,
                                child: CircleAvatar(
                                  backgroundColor: scheme.onPrimary,
                                  radius: avatarSize * 8 / 9,
                                  child: const CircleAvatar(
                                    radius: (avatarSize * 8 / 9) - 3,
                                    backgroundImage: NetworkImage(
                                      'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png',
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: avatarSize,
                                height: avatarSize * 0.4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: scheme.primary,
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  '100%',
                                  style: TextStyle(
                                    color: scheme.onPrimary,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  'Hi! Luis',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    SizedBox(
                                      width: 170,
                                      child: Text(
                                        'Complete your profile',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_right_rounded,
                                      size: 50,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
