import 'package:flutter/material.dart';

import 'package:skeleton_text/skeleton_text.dart';

class CustomBody extends StatefulWidget {
  const CustomBody({Key? key}) : super(key: key);

  @override
  State<CustomBody> createState() => _CustomBodyState();
}

class _CustomBodyState extends State<CustomBody> {
  bool isLoading = false;
  final List<Widget> w = const [CustomChat(), CustomChat(), CustomChat()];
  void handlePress() async {
    setState(
      () => isLoading = !isLoading,
    );
    await Future.delayed(const Duration(seconds: 3));
    setState(
      () => isLoading = !isLoading,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Skeleton Text")),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
                onPressed: isLoading ? null : handlePress,
                child: const Text("Fetch data")),
            if (!isLoading) ...w.map((item) => item) else const CustomSkeleton()
          ],
        ),
      ),
    );
  }
}

class CustomSkeleton extends StatelessWidget {
  const CustomSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      child: Column(
        children: [
          const SizedBox(height: 10),
          Expanded(
            child: SkeletonAnimation(
              shimmerColor: Colors.grey,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: SkeletonAnimation(
              shimmerColor: Colors.grey,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: SkeletonAnimation(
              shimmerColor: Colors.grey,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomChat extends StatelessWidget {
  const CustomChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration:
                const BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Divider(height: 0, thickness: 0, color: Colors.white),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Reading Week',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        )),
                    Text('18:00', style: TextStyle(color: Colors.grey[600])),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hudison',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Check this, check this out',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                    const CustomBadges(
                      child: Text("8",
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                      color: Colors.blue,
                      size: 20,
                    )
                  ],
                ),
                const Divider(height: 0, thickness: 1.5),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomBadges extends StatelessWidget {
  final Color color;
  final double size;
  final Widget child;
  final Widget? parent;
  const CustomBadges(
      {Key? key,
      this.color = Colors.black,
      this.size = 20,
      required this.child,
      this.parent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (parent != null) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          parent!,
          Positioned(
            top: -(size / 4),
            right: -(size / 4),
            child: Container(
              width: size,
              height: size,
              decoration: BoxDecoration(shape: BoxShape.circle, color: color),
              child: Center(child: child),
            ),
          )
        ],
      );
    }
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      child: Center(child: child),
    );
  }
}
