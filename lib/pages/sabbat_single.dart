import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/models/sabbat.dart';
import 'package:witch_army_knife/widgets/others/spinner.dart';

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
        title: const Text('Witch Army Knife',
            style: TextStyle(color: Colors.red, fontSize: 30)),
      ),
      body: Hero(
        tag: widget.sabbat.name,
        child: Observer(
            builder: (_) => Card(
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/${widget.sabbat.name}.png'),
                          fit: BoxFit.cover),
                    ),
                    child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                        ),
                        child: sabbatStore.isLoading
                            ? ListView(children: const [Spinner()])
                            : getTextList())))),
      ),
    );
  }

  ListView getTextList() {
    return ListView(
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
        ...sabbatStore.sabbatText.paragraphs.map((p) {
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
    );
  }
}
