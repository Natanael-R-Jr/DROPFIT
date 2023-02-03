import 'package:flutter/material.dart';

class relogio extends StatefulWidget {
  @override
  State<relogio> createState() => _relogioState();
}

class _relogioState extends State<relogio> {
  TimeOfDay _time = TimeOfDay(hour: 7, minute: 15);
  //timeOfday é um tipo de variavel para a "_time" que contém a hora
  void _selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }

  double hora = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            _selectTime();
          },
          child: Text(
            'Selecione o Horário',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Horario Selecionado: ${_time.format(context)}',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
