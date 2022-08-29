import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;

    const avatarSize = 48.0;

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: true,
            stretch: true,
            backgroundColor: scheme.primary,
            expandedHeight: size.width,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Demo'),
              background: Image.network(
                'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png',
                fit: BoxFit.fitHeight,
                width: size.width,
                colorBlendMode: BlendMode.screen,
                color: scheme.primary,
                errorBuilder: (context, exception, stackTrace) {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Connect to wifi please',
                        ),
                      ),
                    );
                  return const Text('Connect to wifi please');
                },
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                          child: CircleAvatar(
                            radius: (avatarSize * 8 / 9) - 3,
                            backgroundImage: const NetworkImage(
                              'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png',
                            ),
                            onBackgroundImageError: (exception, stackTrace) =>
                                ScaffoldMessenger.of(context)
                                  ..hideCurrentSnackBar()
                                  ..showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        'Connect to wifi please',
                                      ),
                                    ),
                                  ),
                            backgroundColor: scheme.onBackground,
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
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ColoredBox(
                    color: index.isOdd ? Colors.white : Colors.black12,
                    child: Center(
                      child: Text('$index', textScaleFactor: 5),
                    ),
                  );
                },
              ),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
