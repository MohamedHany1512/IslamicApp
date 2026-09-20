import 'package:flutter/material.dart';
import 'package:islamicapp/api/apiezaa.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:islamicapp/theme.dart';

class Ezaa extends StatefulWidget {
  const Ezaa({super.key});

  @override
  State<Ezaa> createState() => _EzaaState();
}

class _EzaaState extends State<Ezaa> {
  AudioPlayer? audioPlayer;
  bool isPlaying = false;
  int index = 0;
  List<dynamic> radiourl = []; // Ensure radiourl is initialized
  bool _isMounted = false;

  @override
  void initState() {
    super.initState();
    _isMounted = true;
    audioPlayer = AudioPlayer();
    audioPlayer!.onPlayerStateChanged.listen((PlayerState state) {
      if (_isMounted) {
        setState(() {
          isPlaying = state == PlayerState.playing;
        });
      }
    });

    // Load radio URLs when the widget is initialized
    _loadRadioUrls();
  }

  Future<void> _loadRadioUrls() async {
    try {
      await fetchRadios(); // Make sure fetchRadios populates radiourl correctly
      if (_isMounted) {
        setState(() {
          radiourl =
              Radiourl; // Assume Radiourl is a global variable from fetchRadios
        });
      }
    } catch (e) {}
  }

  Future<void> _playAudio(String url) async {
    try {
      if (isPlaying) {
        await audioPlayer!.stop();
      }
      await audioPlayer!.play(UrlSource(url));
    } catch (e) {}
  }

  void _togglePlayback() async {
    try {
      if (isPlaying) {
        await audioPlayer!.stop();
      } else {
        if (radiourl.isNotEmpty && index < radiourl.length) {
          await _playAudio(radiourl[index]);
        } else {}
      }
      if (_isMounted) {
        setState(() {
          isPlaying = !isPlaying;
        });
      }
    } catch (e) {}
  }

  void _nextAudio() {
    if (index < radiourl.length - 1) {
      setState(() {
        index++;
        _playAudio(radiourl[index]);
      });
    } else {}
  }

  void _previousAudio() {
    if (index > 0) {
      setState(() {
        index--;
        _playAudio(radiourl[index]);
      });
    } else {}
  }

  @override
  void dispose() {
    _isMounted = false; // Set the flag to false
    audioPlayer?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'إسلامي',
          style: TextStyle(fontSize: 28.sp, color: AppColors.textPrimary),
        ),
        Image.asset('dark mode/radio_image.png'),
        Text(
          'إذاعة القرآن الكريم',
          style: TextStyle(fontSize: 24.sp, color: AppColors.textPrimary),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: _previousAudio,
              icon: Icon(
                Icons.arrow_back_outlined,
                color: AppColors.textPrimary,
                size: 24.sp,
              ),
            ),
            IconButton(
              onPressed: _togglePlayback,
              icon: Icon(
                isPlaying ? Icons.stop : Icons.play_arrow_rounded,
                color: AppColors.gold,
                size: 24.sp,
              ),
            ),
            IconButton(
              onPressed: _nextAudio,
              icon: Icon(
                Icons.arrow_forward_outlined,
                color: AppColors.textPrimary,
                size: 24.sp,
              ),
            ),
          ],
        )
      ],
    );
  }
}
