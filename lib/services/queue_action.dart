import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:cmms_v3/models/sync_action.dart';
import 'package:hive/hive.dart';

Future<void> queueOrSendAction(SyncAction action, Box<SyncAction> box, Future<void> Function() sendAction) async {
  final connectivity = await Connectivity().checkConnectivity();

  if (connectivity == ConnectivityResult.none) {
    await box.add(action);
  } else {
    try {
      await sendAction();
    } catch (e) {
      await box.add(action);
    }
  }
}
