import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {

  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearcheck =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider(){
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: _valorSlider,
      min:10,
      max: 400,
      onChanged: (_bloquearcheck)?null:(valor){
        setState(() {
          _valorSlider=valor; 
        });
      },
    );
  }

  Widget _checkBox(){
    // return Checkbox(
    //   value: _bloquearcheck,
    //   onChanged: (valor){
    //     setState(() {
    //        _bloquearcheck = valor;   
    //     });
    //   },
    // );
    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearcheck,
      onChanged: (valor){
        setState(() {
           _bloquearcheck = valor;   
        });
      },
    );
  }

  Widget _crearSwitch(){
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearcheck,
      onChanged: (valor){
        setState(() {
           _bloquearcheck = valor;   
        });
      },
    );
  }

  Widget _crearImagen(){
    return Image(
      image: NetworkImage('https://static01.nyt.com/images/2019/03/25/universal/25batman-ES/25batman-ES-articleLarge-v2.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}