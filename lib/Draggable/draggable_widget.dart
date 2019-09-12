import 'package:flutter/material.dart';

class DraggableWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          DraggableWidgetsExample(
            offset: Offset(100.0, 100.0),
          ),
        ],
      ),
    );
  }
}

class DraggableWidgetsExample extends StatefulWidget {
  Offset offset;

  DraggableWidgetsExample({Key key, this.offset}) : super(key: key);

  @override
  _DraggableWidgetsExampleState createState() =>
      _DraggableWidgetsExampleState();
}

class _DraggableWidgetsExampleState extends State<DraggableWidgetsExample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.offset == null) widget.offset = Offset(0.0, 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: widget.offset.dy,
        right: widget.offset.dx,
        child: Draggable(
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.teal,
            child: Center(
              child: Text("Hi Hamza malik"),
            ),
          ),
          feedback: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.teal.withOpacity(0.3),
            child: Center(
              child: Text("Hi Hamza malik"),
            ),
          ),
          data: "Hacked Your Mobile Device",
          onDraggableCanceled: (v, o) {
            setState(() {
              widget.offset = o;
            });
          },
        ));
  }
}
