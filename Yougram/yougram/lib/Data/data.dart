// ignore_for_file: prefer_const_constructors

class Item {
  final String uid;
  final String email;
  final String displayName;
  final String photoURL;

  const Item({
    required this.uid,
    required this.email,
    required this.displayName,
    required this.photoURL,
  });

  get index => null;
}

final items = <Item>[
  Item(
    uid: '1',
    email: 'example1@gmail.com',
    displayName: 'Chintan_patel.dev',
    photoURL: './img/1.jpg',
  ),
  Item(
    uid: '2',
    email: 'example2@gmail.com',
    displayName: 'Darien Stewart',
    photoURL: './img/2.jpg',
  ),
  Item(
    uid: '3',
    email: 'example3@gmail.com',
    displayName: 'Aliza Hardy',
    photoURL: './img/3.jpg',
  ),
  Item(
    uid: '4',
    email: 'example4@gmail.com',
    displayName: 'Adolfo Hodges',
    photoURL: './img/4.jpg',
  ),
  Item(
    uid: '5',
    email: 'example5@gmail.com',
    displayName: 'Karlee Francis',
    photoURL: './img/5.jpg',
  ),
  Item(
    uid: '6',
    email: 'example6@gmail.com',
    displayName: 'Kasey Trevino',
    photoURL: './img/6.jpg',
  ),
  Item(
    uid: '7',
    email: 'example7@gmail.com',
    displayName: 'Emily Obrien',
    photoURL: './img/7.jpg',
  ),
  Item(
    uid: '8',
    email: 'example8@gmail.com',
    displayName: 'Alexis Austin',
    photoURL: './img/8.jpg',
  ),
  Item(
    uid: '9',
    email: 'example9@gmail.com',
    displayName: 'Aliya Flores',
    photoURL: './img/9.jpg',
  ),
  Item(
    uid: '10',
    email: 'example10@gmail.com',
    displayName: 'Aliya Flores',
    photoURL: './img/7.jpg',
  ),
  Item(
    uid: '11',
    email: 'example11@gmail.com',
    displayName: 'Joey Holland',
    photoURL: './img/6.jpg',
  ),
  Item(
    uid: '12',
    email: 'example12@gmail.com',
    displayName: 'Lena Knapp',
    photoURL: './img/4.jpg',
  ),
  Item(
    uid: '13',
    email: 'exam13le9@gmail.com',
    displayName: 'Jaden Hogan',
    photoURL: './img/3.jpg',
  ),
];
