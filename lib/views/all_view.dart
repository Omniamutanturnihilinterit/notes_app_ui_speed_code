import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app_ui_speed_code/app_colors.dart';
import 'package:notes_app_ui_speed_code/views/curved_box.dart';

class AllView extends StatelessWidget {
  const AllView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          FontAwesomeIcons.notesMedical,
          color: AppColors.white,
        ),
      ),
      body: AnimationLimiter(
        child: MasonryGridView.count(
            padding: const EdgeInsets.all(16),
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            itemCount: 6,
            itemBuilder: (context, i) {
              return AnimationConfiguration.staggeredGrid(
                  position: i,
                  columnCount: 2,
                  child: ScaleAnimation(
                    child: FadeInAnimation(
                      child: i == 0
                          ? CurvedBox(
                              children: [
                                Text(
                                  'Pengingat',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const _ListTileRow(
                                    isChecked: true,
                                    text: 'Desain Eksplorasi'),
                                const _ListTileRow(
                                    isChecked: true, text: 'Kuliah'),
                                const _ListTileRow(
                                    isChecked: false, text: 'Pelajari model 3D'),
                                const _ListTileRow(
                                    isChecked: false, text: 'Tembakan Desain'),
                                const SizedBox(
                                  height: 16,
                                ),
                                const DateFooter(
                                    date: 'Jan 17', footerText: 'Melakukan')
                              ],
                            )
                          : i == 1
                              ? CurvedBox(
                                  children: [
                                    Text(
                                      'Kutipan hari ini',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const Text(
                                        '''"Teknologi adalah segala sesuatu yang tidak ada saat Anda lahir"\n- Alan Kay (Ilmuwan Komputer).'''),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const DateFooter(
                                        date: 'Jan 21', footerText: 'Kutipan')
                                  ],
                                )
                              : i == 2
                                  ? CurvedBox(
                                      children: [
                                        Text(
                                          'Harapan 2023',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text(
                                            'Aku punya mimpi yang harus menjadi kenyataan!!'),
                                        const _ListTileRow(
                                            isChecked: true,
                                            text: 'IPK di atas 3,60'),
                                        const _ListTileRow(
                                            isChecked: true,
                                            text: 'Punya Laptop Mac, Hp IPhone, Ipad, Punya laptop banyak'),
                                        const _ListTileRow(
                                            isChecked: false,
                                            text: 'Bisa kerja di Startup + Punya rumah sendiri'),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        const DateFooter(
                                            date: 'Jan 21',
                                            footerText: 'Target saya')
                                      ],
                                    )
                                  : i == 3
                                      ? CurvedBox(
                                          padding: EdgeInsets.zero,
                                          children: [
                                            Container(
                                                height: 150,
                                                width: w,
                                                clipBehavior: Clip.hardEdge,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
                                                child: Image.asset(
                                                  'assets/travel.jpg',
                                                  fit: BoxFit.cover,
                                                )),
                                            const SizedBox(
                                              height: 16,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 16.0),
                                              child: Row(
                                                children: const [
                                                  Icon(
                                                    CupertinoIcons.location,
                                                    color: AppColors.lightGrey,
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(
                                                    'Pantai Kuta, Bali',
                                                    style: TextStyle(
                                                        color: AppColors
                                                            .lightGrey),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 16,
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16.0),
                                              child: Text(
                                                'Pantai Kuta adalah sebuah tempat pariwisata yang terletak di kecamatan Kuta, sebelah selatan Kota Denpasar, Bali, Indonesia...',
                                                style: TextStyle(
                                                    color: AppColors.lightGrey),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 16,
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16.0),
                                              child: DateFooter(
                                                  date: 'Dec 24',
                                                  footerText: 'Kehidupan'),
                                            ),
                                            const SizedBox(
                                              height: 16,
                                            ),
                                          ],
                                        )
                                      : i == 4
                                          ? CurvedBox(
                                              children: [
                                                Text(
                                                  'Programmer',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleLarge!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                ),
                                                const SizedBox(
                                                  height: 8,
                                                ),
                                                const Text(
                                                    'Programmer adalah orang yang bertanggung jawab membuat sebuah sistem dengan bahasa pemrograman. Prosesnya meliputi merancang, menulis kode, sampai menguji program hingga siap digunakan.'),
                                                const SizedBox(
                                                  height: 16,
                                                ),
                                                const DateFooter(
                                                    date: 'Jan 21',
                                                    footerText: 'Target saya')
                                              ],
                                            )
                                          : i == 5
                                              ? CurvedBox(
                                                  children: [
                                                    Text(
                                                      'Buku harianku 😊',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .titleLarge!
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                    ),
                                                    const SizedBox(
                                                      height: 30,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: const [
                                                        Icon(
                                                          CupertinoIcons
                                                              .lock_fill,
                                                          size: 55,
                                                          color: AppColors
                                                              .lightGrey,
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 30,
                                                    ),
                                                    const DateFooter(
                                                        date: 'Jan 21',
                                                        footerText:
                                                            'Target saya')
                                                  ],
                                                )
                                              : const SizedBox.shrink(),
                    ),
                  ));
            }),
      ),
    );
  }
}

class _ListTileRow extends StatelessWidget {
  const _ListTileRow({Key? key, required this.isChecked, required this.text})
      : super(key: key);
  final String text;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 32,
          width: 16,
          child: Checkbox(
            shape: const CircleBorder(
              side: BorderSide(
                width: 2,
                color: AppColors.white,
              ),
            ),
            value: isChecked,
            activeColor: AppColors.white,
            checkColor: AppColors.grey,
            onChanged: (bool? val) {},
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text(text,
              style: TextStyle(
                  decoration: isChecked ? TextDecoration.lineThrough : null)),
        )
      ],
    );
  }
}

class DateFooter extends StatelessWidget {
  const DateFooter({Key? key, required this.date, required this.footerText})
      : super(
          key: key,
        );
  final String date, footerText;
  final TextStyle style = const TextStyle(color: AppColors.lightGrey);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          date,
          style: style,
        ),
        Text(
          footerText,
          style: style,
        )
      ],
    );
  }
}