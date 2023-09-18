import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:wheel_of_the_year/main.dart';
import 'package:wheel_of_the_year/models/sabbat.dart';
import 'package:wheel_of_the_year/widgets/spinner.dart';

class SabbatSingle extends StatefulWidget {
  const SabbatSingle({
    required this.sabbat,
    super.key,
  });

  final Sabbat sabbat;

  @override
  State<SabbatSingle> createState() => _SabbatSingleState();
}

class _SabbatSingleState extends State<SabbatSingle> {
  @override
  void initState() {
    super.initState();
    sabbatStore.getSabbatText(widget.sabbat.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black87,
        iconTheme: const IconThemeData(
          color: Colors.red,
        ),
        title: const Text('Wheel of the Year',
            style: TextStyle(color: Colors.red, fontSize: 30)),
      ),
      body: Hero(
        tag: widget.sabbat.name,
        child: Observer(
            builder: (_) => sabbatStore.isLoading
                ? const Spinner()
                : getCard(sabbatStore.sabbatText.paragraphs)),
      ),
    );
  }

  Widget getCard(List<String> paragraphs) {
    return Card(
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/${widget.sabbat.name}.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: ListView(
                  children: <Widget>[
                    Text(
                      widget.sabbat.name,
                      style: const TextStyle(fontSize: 48),
                    ),
                    Text(
                      '${widget.sabbat.date.day}.${widget.sabbat.date.month}.${widget.sabbat.date.year}',
                      style: const TextStyle(fontSize: 24),
                    ),
                    const SizedBox(height: 28),
                    ...paragraphs.map((p) {
                      return Column(
                        children: [
                          Text(
                            p,
                            style: const TextStyle(fontSize: 24),
                          ),
                          const SizedBox(height: 20)
                        ],
                      );
                    }).toList()
                  ],
                ))));
  }
}
