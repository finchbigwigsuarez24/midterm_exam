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

              // 👇 specifications section
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

                    // Material
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

                    // Origin
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

                    // Size guide
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
            ],
          ),
        ),
      ),
    );
  }
}