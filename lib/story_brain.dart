//TODO: Step 6 - import the story.dart file into this file.
import 'story.dart';

//TODO: Step 5 - Create a new class called StoryBrain.
class StoryBrain {
//TODO: Step 7 - Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.
  List<Story> _storyData = [
    Story(
        storyTitle:
            '휴대폰도 터지지않고 아무도 없는 구불구불한 도로 한복판에서 당신의 차 타이어가 터졌습니다. 그래서 당신은 히치하이킹을 하기로 합니다. 그러자 녹슨 트럭 한 대가 덜컹거리며 당신 옆으로 멈춰섭니다. 수수한 눈을 가진 넓은 챙의 모자를 쓴 남자가 문을 열어주며 당신에게 묻습는다. "어이, 태워줄까?"',
        choice1: '차에 탄다. 도와주셔서 감사합니다!',
        choice2: '먼저 살인자인지 물어보는게 좋겠어.'),
    Story(
        storyTitle: '그는 질문에 미동없이 천천히 고개를 끄덕인다.',
        choice1: '적어도 그는 정직한 것 같아. 차에 타도 되겠어.',
        choice2: '잠깐만요, 저는 타이어 교체 할 줄 알아요.'),
    Story(
        storyTitle:
            '당신이 운전을 시작하자, 그 낯선 남자는 그와 그의 어머니와의 사이에 대해 이야기하기 시작합니다. 그는 시간이 지날수록 점점 더 화를 냅니다. 그는 당신에게 글러브 박스(?)를 좀 열어달라고 부탁합니다. 그 안에는 피묻은 칼과 잘린 손가락 두 개, 그리고 엘튼 존의 카세트 테이프가 있습니다. 그는 글러브 박스에 손을 뻗습니다.',
        choice1: '저도 엘튼 존 좋아해요! 그에게 카세트 테이프를 건네준다.',
        choice2: '그가 나를 찌르기전에 내가 찌르는거야! 먼저 칼로 그를 찌릅니다.'),
    Story(
        storyTitle:
            '뭐 저런 경찰이 다 있어! 교통사고가 성인 사망 원인들 중 가장 큰 두 번째 원인인거 아시나요?',
        choice1: '다시 시작',
        choice2: ''),
    Story(
        storyTitle:
            '당신이 가드레일을 부수고 아래 들쭉날쭉한 바위들을 향해 갈 때, 당신은 당신이 타고 있는 차를 운전하던 누군가를 찌르는 의심스러웠던 생각에 대해 반성한다',
        choice1: '다시 시작',
        choice2: ''),
    Story(
        storyTitle:
            'Can you feel the love tonight* 이라는 노래 가사를 부르며 당신은 살인자와 좀 더 가까운 사이가 된 것 같습니다. 그는 당신을 옆 동네에 데려다 줍니다. 당신이 내리기 전에, 그는 당신에게 시체를 버릴 만한 좋은 장소를 알고 있는지 묻습니다. 당신은 "부두는 어때요?" 라고 대답합니다.',
        choice1: '다시 시작',
        choice2: '')
  ];

  //TODO: Step 23 - Use the storyNumber property inside getStory(), getChoice1() and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.

//TODO: Step 8 - Create a method called getStory() that returns the first storyTitle from _storyData.
  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

//TODO: Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.
  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

//TODO: Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.
  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

//TODO: Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.

  //TODO: Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.
  int _storyNumber = 0;

//TODO: Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.
  void nextStory(int choiceNumber) {
    //TODO: Step 21 - Using the story plan, update nextStory to change the storyNumber depending on the choice made by the user.
    //When user is on story0 and they chose choice1, the story should progress to story2.
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    }
    //TODO: Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.
    else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

//TODO: Step 20 - Download the story plan here: https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3

//TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
  bool buttonShouldBeVisible() {
    //You could also just check if (_storyNumber < 3)
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}
