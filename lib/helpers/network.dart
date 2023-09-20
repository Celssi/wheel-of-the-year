import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

StreamSubscription<ConnectivityResult> onNetwork(Function callback) {
  Connectivity().checkConnectivity().then((connectivityResult) => {
        if (connectivityResult == ConnectivityResult.mobile ||
            connectivityResult == ConnectivityResult.wifi ||
            connectivityResult == ConnectivityResult.ethernet)
          {callback()}
      });

  return Connectivity()
      .onConnectivityChanged
      .listen((ConnectivityResult connectivityResult) {
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi ||
        connectivityResult == ConnectivityResult.ethernet) {
      callback();
    }
  });
}
