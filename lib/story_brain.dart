import 'package:destini_challenge_starting/storyMap.dart';

import 'story.dart';

class StoryBrain {
  int _storyIndex = 0;

  List<StoryMap> _storyData = [
    StoryMap(
      story: Story(
          text:
              'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
          choice1: 'I\'ll hop in. Thanks for the help!',
          choice2: 'Better ask him if he\'s a murderer first.'),
      choice1Destination: 2,
      choice2Destination: 1,
    ),
    StoryMap(
      story: Story(
          text: 'He nods slowly, unphased by the question.',
          choice1: 'At least he\'s honest. I\'ll climb in.',
          choice2: 'Wait, I know how to change a tire.'),
      choice1Destination: 2,
      choice2Destination: 3,
    ),
    StoryMap(
      story: Story(
          text:
              'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
          choice1: 'I love Elton John! Hand him the cassette tape.',
          choice2: 'It\'s him or me! You take the knife and stab him.'),
      choice1Destination: 5,
      choice2Destination: 4,
    ),
    StoryMap(
      story: Story(
          text:
              'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
          choice1: 'Restart',
          choice2: ''),
      choice1Destination: 0,
    ),
    StoryMap(
      story: Story(
          text:
              'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
          choice1: 'Restart',
          choice2: ''),
      choice1Destination: 0,
    ),
    StoryMap(
      story: Story(
          text:
              'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
          choice1: 'Restart',
          choice2: ''),
      choice1Destination: 0,
    ),
  ];

  String getStory() => _storyData[_storyIndex].story.text;
  String getChoice1() => _storyData[_storyIndex].story.choice1;
  String getChoice2() => _storyData[_storyIndex].story.choice2;

  bool hasOneOption() => _storyData[_storyIndex].choice2Destination == null;

  void nextStory(int choiceNumber) {
    StoryMap currentStoryMap = _storyData[_storyIndex];
    _storyIndex = choiceNumber == 1
        ? currentStoryMap.choice1Destination
        : currentStoryMap.choice2Destination;
  }
}
