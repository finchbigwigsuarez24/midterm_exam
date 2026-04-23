import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      theme: ThemeData
      (
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: 'Roboto',
      ),
      home: const ProductPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class ProductPage extends StatefulWidget 
{
  const ProductPage({super.key, required this.title});

  final String title;

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  // Sample data for Most Popular section
  final List<Map<String, dynamic>> _popularItems = 
  [
    {'favorites': 1780, 'tag': 'New',  'imagePath': 'assets/39a94b6cb66665a43b8e7d98053af3ed69d2469a.png'},
    {'favorites': 1780, 'tag': 'Sale', 'imagePath': 'assets/32b2fed3dd6e97ca36cbcbf5ca57596f7c6547d3.png'},
    {'favorites': 1780, 'tag': 'Hot',  'imagePath': 'assets/494aceb1aceba44ebb5e54c2e7dd0e011730861d.png'},
    {'favorites': 1780, 'tag': 'New',  'imagePath': 'assets/3a39f1d1d23c65e543db966efd9955c99cf0a27a.png'},
  ];

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      body: SafeArea
      (
        child: SingleChildScrollView
        (
          child: Column
          (
            crossAxisAlignment: CrossAxisAlignment.start,

            children: 
            [
              ClipRect
              (
                child: Align
                (
                  alignment: Alignment.topCenter,
                  heightFactor: 0.65, 
                  child: Image.asset
                  (
                    'assets/d54a3038b3fda3b0bab62a2c050261af3482fd6e.png',
                    width: double.infinity,
                    height: 570,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Padding
              (
                padding: const EdgeInsets.all(16.0),
                
                child: Column
                (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: 
                  [
                    Row
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: 
                      [
                        const Text
                        (
                          '\$17,00',
                          style: TextStyle
                          (
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        
                        CircleAvatar
                        (
                          backgroundColor: Color(0xFFFFE4E4),
                          child: IconButton
                          (
                            icon: const Icon(Icons.share, color: Colors.white, size: 18),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),

                    const Text
                    (
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam arcu mauris, scelerisque eu mauris id, pretium pulvinar sapien.',
                      style: TextStyle
                      (
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),

              // variations section
              Padding
              (
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column
                (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: 
                  [
                    Row
                    (
                      children: 
                      [
                        const Text
                        (
                          'Variations',
                          style: TextStyle
                          (
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container
                        (
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration
                          (
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text('Pink', style: TextStyle(fontSize: 13)),
                        ),
                        const SizedBox(width: 6),
                        Container
                        (
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration
                          (
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text('M', style: TextStyle(fontSize: 13)),
                        ),
                        const Spacer(),
                        CircleAvatar
                        (
                          backgroundColor: Colors.blue,
                          child: IconButton
                          (
                            icon: const Icon(Icons.arrow_forward, color: Colors.white, size: 18),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    Row
                    (
                      children: 
                      [
                        Expanded
                        (
                          child: ClipRRect
                          (
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset
                            (
                              'assets/902c2ed6848fbde49066a7244b1f4197b721c175.png',
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded
                        (
                          child: ClipRRect
                          (
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset
                            (
                              'assets/0ade2178ffb98fd2cc84e7e14eae68cf5669a268.png',
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded
                        (
                          child: ClipRRect
                          (
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset
                            (
                              'assets/19a4981b602284a3351b3a0a242878e00dddfb17.png',
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // specifications section
              Padding
              (
                padding: const EdgeInsets.all(16.0),
                child: Column
                (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: 
                  [
                    const Text
                    (
                      'Specifications',
                      style: TextStyle
                      (
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 12),

                    const Text
                    (
                      'Material',
                      style: TextStyle
                      (
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    Row
                    (
                      children: 
                      [
                        Container
                        (
                          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                          decoration: BoxDecoration
                          (
                            color: Color(0xFFFFE4E4),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text('Cotton 95%', style: TextStyle(fontSize: 13)),
                        ),
                        const SizedBox(width: 8),
                        Container
                        (
                          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                          decoration: BoxDecoration
                          (
                            color: Color(0xFFFFE4E4),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text('Nylon 5%', style: TextStyle(fontSize: 13)),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    const Text
                    (
                      'Origin',
                      style: TextStyle
                      (
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    Container
                    (
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                      decoration: BoxDecoration
                      (
                        color: Color(0xFFE8E8F0),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text('EU', style: TextStyle(fontSize: 13)),
                    ),

                    const SizedBox(height: 16),

                    Row
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: 
                      [
                        const Text
                        (
                          'Size guide',
                          style: TextStyle
                          (
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        CircleAvatar
                        (
                          backgroundColor: Colors.blue,
                          child: IconButton
                          (
                            icon: const Icon(Icons.arrow_forward, color: Colors.white, size: 18),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // delivery section
              Padding
              (
                padding: const EdgeInsets.all(16.0),
                child: Column
                (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: 
                  [
                    const Text
                    (
                      'Delivery',
                      style: TextStyle
                      (
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 12),

                    Container
                    (
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      decoration: BoxDecoration
                      (
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row
                      (
                        children: 
                        [
                          const Text
                          (
                            'Standard',
                            style: TextStyle(fontSize: 15),
                          ),
                          const SizedBox(width: 10),
                          Container
                          (
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                            decoration: BoxDecoration
                            (
                              color: Color(0xFFE8F0FF),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text
                            (
                              '5-7 days',
                              style: TextStyle(fontSize: 13, color: Colors.blue),
                            ),
                          ),
                          const Spacer(),
                          const Text
                          (
                            '\$3,00',
                            style: TextStyle
                            (
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 10),

                    Container
                    (
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      decoration: BoxDecoration
                      (
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row
                      (
                        children: 
                        [
                          const Text
                          (
                            'Express',
                            style: TextStyle(fontSize: 15),
                          ),
                          const SizedBox(width: 10),
                          Container
                          (
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                            decoration: BoxDecoration
                            (
                              color: Color(0xFFE8F0FF),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text
                            (
                              '1-2 days',
                              style: TextStyle(fontSize: 13, color: Colors.blue),
                            ),
                          ),
                          const Spacer(),
                          const Text
                          (
                            '\$12,00',
                            style: TextStyle
                            (
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // rating & reviews section
              Padding
              (
                padding: const EdgeInsets.all(16.0),
                child: Column
                (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: 
                  [
                    const Text
                    (
                      'Rating & Reviews',
                      style: TextStyle
                      (
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 12),

                    Row
                    (
                      children: 
                      [
                        ...List.generate(5, (index) => Icon
                        (
                          index < 4 ? Icons.star : Icons.star_border,
                          color: Colors.amber,
                          size: 32,
                        )),

                        const SizedBox(width: 10),

                        Container
                        (
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          decoration: BoxDecoration
                          (
                            color: Color(0xFFE8E8F0),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text
                          (
                            '4/5',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    Row
                    (
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: 
                      [
                        CircleAvatar
                        (
                          radius: 28,
                          backgroundImage: AssetImage('assets/32b2fed3dd6e97ca36cbcbf5ca57596f7c6547d3.png'),
                        ),

                        const SizedBox(width: 12),

                        Column
                        (
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: 
                          [
                            const Text
                            (
                              'Veronika',
                              style: TextStyle
                              (
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 4),

                            Row
                            (
                              children: List.generate(5, (index) => Icon
                              (
                                index < 4 ? Icons.star : Icons.star_border,
                                color: Colors.amber,
                                size: 18,
                              )),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    const Text
                    (
                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed ...',
                      style: TextStyle
                      (
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),

                    const SizedBox(height: 16),

                    SizedBox
                    (
                      width: double.infinity,
                      child: ElevatedButton
                      (
                        onPressed: () {},
                        style: ElevatedButton.styleFrom
                        (
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder
                          (
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text
                        (
                          'View All Reviews',
                          style: TextStyle
                          (
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // ✅ Most Popular Section (bottom)
              Padding
              (
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row
                (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: 
                  [
                    const Text
                    (
                      'Most Popular',
                      style: TextStyle
                      (
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row
                    (
                      children: 
                      [
                        const Text
                        (
                          'See All',
                          style: TextStyle
                          (
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 8),
                        CircleAvatar
                        (
                          backgroundColor: Colors.blue,
                          radius: 18,
                          child: IconButton
                          (
                            iconSize: 16,
                            icon: const Icon(Icons.arrow_forward, color: Colors.white),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              SizedBox
              (
                height: 220,
                child: ListView.separated
                (
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  itemCount: _popularItems.length,
                  separatorBuilder: (_, _) => const SizedBox(width: 12),
                  itemBuilder: (context, index) 
                  {
                    final item = _popularItems[index];
                    return _PopularProductCard
                    (
                      imagePath: item['imagePath'] as String,
                      favorites: item['favorites'] as int,
                      tag: item['tag'] as String,
                    );
                  },
                ),
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

// Most Popular Product Card Widget
class _PopularProductCard extends StatelessWidget 
{
  final String imagePath;
  final int favorites;
  final String tag;

  const _PopularProductCard
  ({
    required this.imagePath,
    required this.favorites,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) 
  {
    return SizedBox
    (
      width: 155,
      child: Column
      (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: 
        [
          ClipRRect
          (
            borderRadius: BorderRadius.circular(12),
            child: Image.asset
            (
              imagePath,
              width: 155,
              height: 170,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 6),

          Row
          (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: 
            [
              Row
              (
                children: 
                [
                  Text
                  (
                    '$favorites',
                    style: const TextStyle
                    (
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Icon
                  (
                    Icons.favorite,
                    color: Colors.blue,
                    size: 18,
                  ),
                ],
              ),
              Container
              (
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                decoration: BoxDecoration
                (
                  color: Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text
                (
                  tag,
                  style: const TextStyle
                  (
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}