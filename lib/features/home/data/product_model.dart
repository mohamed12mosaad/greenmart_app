class ProductModel {
  ProductModel({
    required this.id,
    required this.image,
    required this.name,
    required this.quantity,
    required this.price,
  });
  final String id;
  final String image;
  final String name;
  final String quantity;
  final String price;
}

List<ProductModel> offers = [
  ProductModel(
    id: '1',
    image:
        'https://th.bing.com/th?id=OIF.q7MiDQRlSOkXyUH99H%2fwYA&rs=1&pid=ImgDetMain&o=7&rm=3',
    name: 'Bananas',    
    quantity: '7pcs',
    price: '\$4.99',
  ),
   ProductModel(
    id: '2',
    image:
        'https://tse3.mm.bing.net/th/id/OIP.XprgHSCfPgHBpfQBBfAWqwHaFb?rs=1&pid=ImgDetMain&o=7&rm=3',
    name: 'Red Apple',    
    quantity: '1kg',
    price: '\$4.99',
  ),
   ProductModel(
    id: '3',
    image:
        'https://tse3.mm.bing.net/th/id/OIP.GNGc7VISrAUPWxWTfREldwHaHa?w=980&h=980&rs=1&pid=ImgDetMain&o=7&rm=3',
    name: 'Mango',    
    quantity: '5kg',
    price: '\$5.99',
  ),
  ProductModel(
    id: '4',
    image:
        'https://tse4.mm.bing.net/th/id/OIP.AbwB9KZh7Xn95MVSCYyDXwAAAA?rs=1&pid=ImgDetMain&o=7&rm=3',
    name: 'Oarge',    
    quantity: '3kg',
    price: '\$3.99',
  ),
  ProductModel(
    id: '5',
    image:
        'https://tse4.mm.bing.net/th/id/OIP.jCmyQkSf-M38fQwwjWdtHgHaG-?rs=1&pid=ImgDetMain&o=7&rm=3',
    name: 'peach',    
    quantity: '10kg',
    price: '\$6.99',
  ),
];


List<ProductModel> bestSelling = [
  ProductModel(
    id: '1',
    image:
        'https://tse1.mm.bing.net/th/id/OIP.Ub-xjPi5_33DCw3oVpDZeQHaFL?w=860&h=602&rs=1&pid=ImgDetMain&o=7&rm=3',
    name: 'Bell Pepper Red',    
    quantity: '1kg',
    price: '\$4.99',
  ),
  ProductModel(
    id: '2',
    image:
        'https://th.bing.com/th/id/OIP.i2WcG4BjrEThfSP8zUSS7AAAAA?o=7rm=3&rs=1&pid=ImgDetMain&o=7&rm=3',
    name: 'Egg Chicken Red ',    
    quantity: '4pcs, Price',
    price: '\$5.99',
  ),
   ProductModel(
    id: '3',
    image:
        'https://tse2.mm.bing.net/th/id/OIP.fmkX13d9ug-1S3prsv0sqQAAAA?rs=1&pid=ImgDetMain&o=7&rm=3',
    name: 'Ginger ',    
    quantity: '250gm',
    price: '\$5.99',
  ),
   ProductModel(
    id: '4',
    image:
        'https://tse1.mm.bing.net/th/id/OIP.O37FugcTLnxKx7rWm-Iz9wHaHa?rs=1&pid=ImgDetMain&o=7&rm=3',
    name: 'tomatoes',    
    quantity: '5kg',
    price: '\$7.99',
  ),
  ProductModel(
    id: '5',
    image:
        'https://th.bing.com/th/id/OIP.MAIgGI6xRjMVX4mHIl_GtgHaFY?o=7rm=3&rs=1&pid=ImgDetMain&o=7&rm=3',
    name: 'carrot',    
    quantity: '3kg',
    price: '\$3.99',
  ),
  ProductModel(
    id: '6',
    image:
        'https://tse4.mm.bing.net/th/id/OIP.ia1SpOmjkINDjIljQzfA3AHaHa?rs=1&pid=ImgDetMain&o=7&rm=3',
    name: 'onion',    
    quantity: '8kg',
    price: '\$6.99',
  ),
];


List<ProductModel> allProduct = [
  ProductModel(
    id: '1',
    image:
        'assets/images/dietcoke.png',
    name: 'Diet Coke',    
    quantity: '355ml',
    price: '\$1.99',
  ),
   ProductModel(
    id: '2',
    image:
        'assets/images/spritecan.png',
    name: 'Sprite Can',    
    quantity: '325ml',
    price: '\$1.50',
  ),
   ProductModel(
    id: '3',
    image:
        'assets/images/Apple&GrapeJuice.png',
    name: 'Apple & Grape\n Juice',    
    quantity: '2L',
    price: '\$15.99',
  ),
  ProductModel(
    id: '4',
    image:
        'assets/images/orangejuice.png',
    name: 'Orange Juice',    
    quantity: '2L',
    price: '\$15.99',
  ),
  ProductModel(
    id: '5',
    image:
        'assets/images/cocacolacan.png',
    name: 'Coca Cola Can',    
    quantity: '325ml,\n Price',
    price: '\$4.99',
  ),
  ProductModel(
    id: '6',
    image:
        'assets/images/pepsican.png',
    name: 'Pepsi Can ',    
    quantity: '330ml,\n Price',
    price: '\$4.99',
  ),
];