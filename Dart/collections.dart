// void main() {

// List<int> numbers = [1,2,3,4,5];

// for (int number in numbers){
//   print (number);
// }

// Map <String, int> fruits = {
//   'apple' : 3,
//   'banana' : 5,
//   'orange' : 2

//   //['apple','banana','orange'] => fruit.keys
// };

// for (int value in fruits.values){
//   print(value);
// }

// //or
// for (MapEntry<String,int> item in fruits.entries ){
//   print(item.key);
// print(item.value);
// }
  
// }



//exercise
// void main() {

//   const double taxTotal = 0.1;

//   List<Map <String, String>> cart = [
//     {'name':'coffee', 'price': '6.00', 'quantity': '4'},
//     {'name':'apples', 'price': '1.99', 'quantity': '1'},
//     {'name':'oranges', 'price': '2.50', 'quantity': '3'},
//   ];


//   double totalBeforeTax = 0.0;

//   double subtotal = 0.0;

//   for (var item in cart){
//     double price = double.parse(item['price']!);
//     int quantity = int.parse(item['quantity']!);
//     subtotal += price * quantity;
//   }

//   double tax = subtotal * taxTotal;

//   double totalAfterTax = subtotal + tax;




//   print( 'Item \t\t\t Price \t\t\t Quantity');

//   for (var item in cart){
//     print(
//      '${item['name']!}\t\t\t\$${item['price']!}\t\t\t ${item['quantity']!}\t\t\t\$${totalAfterTax}'
//     );
//   }

  
// }

void main() {
  

const double taxTotal = 0.1;

List<Map<String, String>> cart = [
  {'name': 'coffee', 'price': '6.00', 'quantity': '4'},
  {'name': 'apples', 'price': '1.99', 'quantity': '1'},
  {'name': 'oranges', 'price': '2.50', 'quantity': '3'},
];

double subtotal = 0.0;

for (var item in cart) {
  double price = double.parse(item['price']!);
  int quantity = int.parse(item['quantity']!);
  subtotal += price * quantity;
}

double tax = subtotal * taxTotal;

double totalAfterTax = subtotal + tax;

print('Item \t\t\t Price \t\t\t Quantity');
for (var item in cart) {
  print('${item['name']!}\t\t\t\$${item['price']!}\t\t\t ${item['quantity']!}');
}

print('Subtotal:\t\t\t \$${subtotal.toStringAsFixed(2)}');
print('Tax (${taxTotal * 100}%):\t\t\t \$${tax.toStringAsFixed(2)}');
print('Total:\t\t\t\t \$${totalAfterTax.toStringAsFixed(2)}');

}
