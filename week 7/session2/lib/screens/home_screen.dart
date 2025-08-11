import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:session2/widgets/custom_grid_card.dart';
import 'package:session2/widgets/custom_new_recipes_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20.h,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.h),
              Container(
                height: 250,
                width: 320,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 237, 241),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.menu,
                            color: Color.fromARGB(255, 124, 119, 119),
                          ),
                          onPressed: () {},
                        ),

                        const Text(
                          "Welcome back",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),

                        IconButton(
                          icon: const Icon(
                            Icons.notifications,
                            color: Color.fromARGB(255, 124, 119, 119),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 124, 119, 119),
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                    const SizedBox(height: 40),
                    ShaderMask(
                      shaderCallback:
                          (bounds) => const LinearGradient(
                            colors: [
                              Colors.cyan,
                              Color.fromARGB(255, 182, 166, 233),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(bounds),
                      child: const Text(
                        'Welcome',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Text(
                      'Discover new recipes and enjoy cooking',
                      style: TextStyle(
                        color: Color.fromARGB(255, 124, 119, 119),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'New Recipes',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 100.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: CustomNewRecipesCard(),
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Popular Recipes',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8.w),
                    child: CustomGridCard(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
