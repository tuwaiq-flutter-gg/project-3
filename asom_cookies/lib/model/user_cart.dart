
import 'package:asom_cookies/model/products.dart';

class UserCart {

  static List<UserCart>? cartItems ;

  Product product ;
  int quantity ;

  UserCart({ required this.product , required this.quantity });

  static addToCart(){
    
  }
  
}
