import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  // Location coordinates for Faculty of Technology and Management
  static const LatLng _kmutnbLocation = LatLng(14.159051, 101.345455);

  // Initial camera position
  static const CameraPosition _initialCameraPosition = CameraPosition(
    target: _kmutnbLocation,
    zoom: 15,
  );

  // Set of markers
  final Set<Marker> _markers = {};
  GoogleMapController? _mapController;

  @override
  void initState() {
    super.initState();
    // Add marker for the Faculty of Technology and Management
    _markers.add(
      const Marker(
        markerId: MarkerId('kmutnb_faculty'),
        position: _kmutnbLocation,
        infoWindow: InfoWindow(
          title: 'Faculty of Technology and Management',
          snippet: 'KMUTNB',
        ),
      ),
    );
  }

  @override
  void dispose() {
    _mapController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _initialCameraPosition,
        markers: _markers,
        mapType: MapType.normal,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
        zoomControlsEnabled: true,
        onMapCreated: (GoogleMapController controller) {
          _mapController = controller;
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _mapController?.animateCamera(
            CameraUpdate.newCameraPosition(_initialCameraPosition),
          );
        },
        child: const Icon(Icons.center_focus_strong),
      ),
    );
  }
}
