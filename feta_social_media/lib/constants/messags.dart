import 'package:feta_social_media/constants/export_constants.dart';
import 'package:fluttertoast/fluttertoast.dart';

void successMessage(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: colorSuccess,
    textColor: colorWhite,
    fontSize: Sizes.height15,
  );
}

void errorMessage(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: colorDanger,
    textColor: colorWhite,
    fontSize: Sizes.height15,
  );
}
