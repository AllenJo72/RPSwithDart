import 'dart:io';
import 'dart:math';
final _random = new Random();
main(){
  // Variables
  String _newline = '';
  String title = 'Rock, Paper, Scissors made with dart\nFollow the instructions to play:\n[*] "R" for Rock\n[*] "P" for Paper\n[*] "S" for Scissors';
  // Output
  print(_newline);
  print(title);
  print(_newline);
  input();
}
void input(){
  String _newline = '';
  while(true){
    stdout.writeln('Rock, Paper or Scissor?: ');
    var _input = stdin.readLineSync();
    if(_input == 'R'){
      print(_newline);
      print('You: '+'Rock');
    }
    else if(_input == 'P'){
      print(_newline);
      print('You: '+'Paper');
    }
    else if(_input == 'S'){
      print(_newline);
      print('You: '+'Scissors');
    }
    else{
      print('Check your input again (Make sure your input is UpperCase), follow the instructions');
    }  
    var list = ['Rock', 'Paper', 'Scissors'];
    var element = list[_random.nextInt(list.length)];
    print('Computer: '+element);

    if(element == 'Rock' && _input == 'R'){
      print('Draw');
      print(_newline);  
    }
    else if(element == 'Scissors' && _input == 'S'){
      print('Draw');
      print(_newline);
    }
    else if(element == 'Paper' && _input == 'P'){
      print('Draw');
      print(_newline);
    }
    else if(element == 'Rock' && _input == 'S'){
      print('You Lost');
      print(_newline);
    }
    else if(element == 'Scissor' && _input == 'P'){
      print('You Lost');
      print(_newline);
    }
    else if(element == 'Paper' && _input == 'R'){
      print('You Lost');
      print(_newline);
    }
    else if(element == 'Rock' && _input == 'P'){
      print('You Won');
      print(_newline);
    }
    else if(element == 'Paper' && _input == 'S'){
      print('You Won');
      print(_newline);
    }
    else if(element == 'Scissors' && _input == 'R'){
      print('You Won');
      print(_newline);
    }

  //random();
}  


//void random(){
  //var list = ['Rock', 'Paper', 'Scissors'];
  //var element = list[_random.nextInt(list.length)];
  //print(element);

//}


}
