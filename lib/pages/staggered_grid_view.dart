import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class StaggeredGridViewPage extends StatelessWidget {
  const StaggeredGridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Staggered Grid View',
          style: GoogleFonts.montserrat(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          children: List.generate(
            60,
            (index) => ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                'https://source.unsplash.com/random?sig=$index',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
