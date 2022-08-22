import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _WelcomeView();
  }
}

class _WelcomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Poster(
                  size: size,
                  posterLength: posters.length,
                ),
                const SizedBox(height: 16),
                _IndexPoster(
                  index: 0,
                  posterLength: posters.length,
                ),
                const SizedBox(height: 16),
                _Form(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Poster extends StatelessWidget {
  const Poster({
    super.key,
    required this.size,
    required this.posterLength,
  });

  final Size size;
  final int posterLength;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.75,
      child: Swiper(
        itemCount: posterLength,
        itemBuilder: (context, index) => Container(
          width: size.width,
          height: size.height * 0.75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            '${index + 1}',
            style: TextStyle(fontSize: size.height * 0.7),
          ),
        ),
      ),
    );
  }
}

class _IndexPoster extends StatelessWidget {
  const _IndexPoster({
    required this.index,
    required this.posterLength,
  });

  final int index;
  final int posterLength;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    Widget iCircle({required bool isActive}) => Container(
          width: isActive ? 16 : 8,
          height: isActive ? 16 : 8,
          key: UniqueKey(),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive ? Colors.red : Colors.red[200],
          ),
        );

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        posterLength,
        (index) => index == 0
            ? iCircle(isActive: index == this.index)
            : Row(
                children: [
                  const SizedBox(width: 8),
                  iCircle(isActive: index == this.index),
                ],
              ),
      ),
    );
  }
}

class _Form extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          fillColor: Colors.white,
          hintText: '+ 52 123 456 789',
          prefixIcon: Icon(Icons.search_rounded),
          filled: true,
        ),
        keyboardType: TextInputType.phone,
      ),
    );
  }
}

final posters = [1, 2, 3, 4, 5];
