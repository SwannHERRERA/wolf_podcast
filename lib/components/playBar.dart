import 'package:flutter/material.dart';

class PlayBar extends StatefulWidget {
  @override
  _PlayBarState createState() => _PlayBarState();
  var isPlaying = false;
  var playPauseButton = Icon(Icons.play_arrow_rounded);
}

class _PlayBarState extends State<PlayBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Expanded(
          child: IconButton(
            icon: Icon(Icons.skip_previous),
            onPressed: () {},
          ),
        ),
        Expanded(
          child: IconButton(
            icon: widget.playPauseButton,
            onPressed: () {
              if (widget.isPlaying) {
                setState(() {
                  widget.playPauseButton = Icon(Icons.pause_rounded);
                });
              } else {
                setState(() {
                  widget.playPauseButton = Icon(Icons.play_arrow_rounded);
                });
              }
              widget.isPlaying = !widget.isPlaying;
            },
          ),
        ),
        Expanded(
          child: IconButton(
            icon: Icon(Icons.skip_next),
            onPressed: () {},
          ),
        ),
      ]),
    );
  }
}
