import 'dart:convert';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:cmms_v3/models/sync_action.dart';
import 'package:hive/hive.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ServiceRequestService {
  final SupabaseClient client;
  final Box<SyncAction> syncQueue;

  ServiceRequestService(this.client, this.syncQueue);

  Future<void> submitRequest(Map<String, dynamic> data) async {
    final connectivity = await Connectivity().checkConnectivity();
    final online = connectivity != ConnectivityResult.none;

    if (online) {
      await client.from('service_requests').insert(data);
    } else {
      await syncQueue.add(SyncAction(
        type: 'service_request',
        payload: jsonEncode(data),
        createdAt: DateTime.now(),
      ));
    }
  }
}
