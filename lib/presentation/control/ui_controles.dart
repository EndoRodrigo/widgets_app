import 'package:flutter/material.dart';

class UiControles extends StatefulWidget {
  static const String name = 'control';

  const UiControles({super.key});

  @override
  State<UiControles> createState() => _UiControlesState();
}

class _UiControlesState extends State<UiControles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UI CONTROLS')),
      body: _IuControlView(),
    );
  }
}

class _IuControlView extends StatefulWidget {
  const _IuControlView({super.key});

  @override
  State<_IuControlView> createState() => _IuControlViewState();
}

class _IuControlViewState extends State<_IuControlView> {
  bool isDeveloper = false;
  Transportation selectedTransportation = Transportation.CAR;
  bool wansBrealFast = false;
  bool wansLuch = false;
  bool wansDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer MODE'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),

        Divider(),
        RadioListTile(
          title: const Text('By car'),
          subtitle: const Text('Viajar por carro'),
          value: Transportation.CAR,
          groupValue: selectedTransportation,
          onChanged: (value) {
            selectedTransportation = Transportation.CAR;
            setState(() {});
          },
        ),
        RadioListTile(
          title: const Text('By boat'),
          subtitle: const Text('Viajar en bote'),
          value: Transportation.BOAT,
          groupValue: selectedTransportation,
          onChanged: (value) {
            selectedTransportation = Transportation.BOAT;
            setState(() {});
          },
        ),
        RadioListTile(
          title: const Text('By plane'),
          subtitle: const Text('Viajar por avion'),
          value: Transportation.PLANE,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.PLANE;
          }),
        ),
        RadioListTile(
          title: const Text('By submarine'),
          subtitle: const Text('Viajar en submarino'),
          value: Transportation.SIBMARINE,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.SIBMARINE;
          }),
        ),
        Divider(),
        ExpansionTile(
          title: const Text('Tipos de transportes'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('By car'),
              subtitle: const Text('Viajar por carro'),
              value: Transportation.CAR,
              groupValue: selectedTransportation,
              onChanged: (value) {
                selectedTransportation = Transportation.CAR;
                setState(() {});
              },
            ),
            RadioListTile(
              title: const Text('By boat'),
              subtitle: const Text('Viajar en bote'),
              value: Transportation.BOAT,
              groupValue: selectedTransportation,
              onChanged: (value) {
                selectedTransportation = Transportation.BOAT;
                setState(() {});
              },
            ),
            RadioListTile(
              title: const Text('By plane'),
              subtitle: const Text('Viajar por avion'),
              value: Transportation.PLANE,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.PLANE;
              }),
            ),
            RadioListTile(
              title: const Text('By submarine'),
              subtitle: const Text('Viajar en submarino'),
              value: Transportation.SIBMARINE,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.SIBMARINE;
              }),
            ),
          ],
        ),

        //todo: checkbotlis
        CheckboxListTile(
          title: Text('¿Desayuno?'),
          value: wansBrealFast,
          onChanged: (value) {
            wansBrealFast = !wansBrealFast;
            setState(() {});
          },
        ),
        CheckboxListTile(
          title: Text('¿Almuerzo?'),
          value: wansDinner,
          onChanged: (value) {
            wansDinner = !wansDinner;
            setState(() {});
          },
        ),
        CheckboxListTile(
          title: Text('¿Sena?'),
          value: wansLuch,
          onChanged: (value) {
            wansLuch = !wansLuch;
            setState(() {});
          },
        ),
      ],
    );
  }
}

enum Transportation { CAR, PLANE, BOAT, SIBMARINE }
