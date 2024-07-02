import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:planear/riverpod/avatar_page_riverpod/avatar_page_riverpod.dart';
import 'package:planear/riverpod/coin_riverpod.dart';
import 'package:planear/riverpod/mainpage_riverpod.dart';
import 'package:planear/theme/assets.dart';

class MainAppBar extends ConsumerStatefulWidget {
  const MainAppBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainAppBarState();
}

class _MainAppBarState extends ConsumerState<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    final mainPageController =
        ref.read(mainPageChangeStateNotifierProvider.notifier);
    final avatarPageController =
        ref.read(avatarPageChangeStateNotifierProvider.notifier);
    final pageState = ref.watch(mainPageChangeStateNotifierProvider);
    final coin = ref.watch(coinChangeStateNotifierProvider);

    return Container(
        height: 30,
        margin: const EdgeInsets.only(left: 12, right: 12, top: 30),
        child: Row(
          children: [
            SizedBox(
              width: 63,
              child: Row(
                children: [
                  Container(
                    width: 21,
                    height: 30,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage(Assets.coin))),
                  ),
                  const Gap(8),
                  Text(
                    '$coin',
                    style: const TextStyle(
                      color: Color(0xFF111111),
                      fontSize: 16,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                mainPageController.setPage(0);
              },
              child: Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: Svg(Assets.appbar_bell))),
              ),
            ),
            const SizedBox(width: 16),
            _avatarPageButton(
                mainPageController, avatarPageController, pageState)
          ],
        ));
  }

  Widget _avatarPageButton(MainPageChange mainPagecontroller,
      AvatarPageChange avatarPageController, int pageState) {
    return GestureDetector(
        onTap: () {
          mainPagecontroller.setPage(1);
          avatarPageController.setPage(AvatarPageState.main);
        },
        child: Container(
          width: 28,
          height: 28,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: Svg(Assets.appbar_hambur))),
        ));
  }
}
