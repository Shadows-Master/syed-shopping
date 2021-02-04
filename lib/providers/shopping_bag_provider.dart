import 'package:syed/core/Product.dart';
import 'package:syed/providers/base_provider.dart';

class ShoppingBagProvider extends BaseProvider {
  Product _mProduct = Product();
  List<Product> mBagListProduct = [];

  get mProduct => _mProduct;

  addProductToBag(Product product) {
    this._mProduct = product;
    if (mBagListProduct.length > 0) {
      mBagListProduct.clear();
    }
    this.mBagListProduct.add(_mProduct);
    print('size: ${mBagListProduct.length}');
    notifyListeners();
  }
}
