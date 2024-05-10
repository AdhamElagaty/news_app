import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/catagory_widget.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  final List<Category> categories = const [
    Category(
      category: CategoryModel(
        image: "assets/business.avif",
        name: "Business",
      ),
    ),
    Category(
      category: CategoryModel(
        image: "assets/entertaiment.avif",
        name: "Entertainment",
      ),
    ),
    Category(
      category: CategoryModel(
        image: "assets/general.avif",
        name: "General",
      ),
    ),
    Category(
      category: CategoryModel(
        image: "assets/health.avif",
        name: "Health",
      ),
    ),
    Category(
      category: CategoryModel(
        image: "assets/science.avif",
        name: "Science",
      ),
    ),
    Category(
      category: CategoryModel(
        image: "assets/sports.avif",
        name: "Sports",
      ),
    ),
    Category(
      category: CategoryModel(
        image: "assets/technology.jpeg",
        name: "Technology",
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => categories[index],
      ),
    );
  }
}
