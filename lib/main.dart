import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TestScreen());
  }
}

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('YouTube Player'),
      ),
      body: Scaffold(
        body: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => YoutubePlayerScreen(),
                ),
              );
            },
            child: Text("Go Ahead")),
      ),
    );
  }
}

class YoutubePlayerScreen extends StatefulWidget {
  @override
  _YoutubePlayerScreenState createState() => _YoutubePlayerScreenState();
}

class _YoutubePlayerScreenState extends State<YoutubePlayerScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    // Replace the video ID with your YouTube video ID
    _controller = YoutubePlayerController(
      initialVideoId: 'uBlJhBlSGJA',
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
          onReady: () {
            print('Player is ready.');
          },
        ),
        builder: (context, player) {
          return Column(
            children: [
              // Video player
              player,

              // Title
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Video Title',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    // Description
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Video Description. This can be a long description if needed. Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.Video Description. This can be a long description if needed.',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),

                    // Fullscreen button
                    ElevatedButton(
                      onPressed: () {
                        _controller.toggleFullScreenMode();
                      },
                      child: Text('Fullscreen'),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
