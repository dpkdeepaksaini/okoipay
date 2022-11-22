class Products{
  Products({required this.name,required this.price,required this.qty});
   String name;
   int price;
   int qty;

}



var productlist=[
  Products(name: 'cycle', price: 100, qty: 1),
  Products(name: 'bike', price: 200, qty: 1),
  Products(name: 'car', price: 300, qty: 1),
  Products(name: 'bus', price: 400, qty: 1),
  Products(name: 'truck', price: 500, qty: 1),

];
List<Products> empty=[];
var total=[];


