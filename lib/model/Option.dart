import 'dart:math';

class Option {
    String name = '';
    String imageUrl = '';

    Option ({
        this.name = '',
        this.imageUrl = ''
    });

    String getMessageWinner(userOption) {
        String ret = "User selected: " + userOption;
        String computerOption = this.mapComputerOptionToString(
            Random().nextInt(3)
        );
        ret += "\nComputer selected: " + computerOption;

        if ((userOption == "Paper" && computerOption == "Rock") || (userOption == "Rock" && computerOption == "Scissors") || (userOption == "Scissors" && computerOption == "Paper")) {
            ret += "\n\nUser wins";
        } else if ((userOption == "Paper" && computerOption == "Scissors") || (userOption == "Rock" && computerOption == "Paper") || (userOption == "Scissors" && computerOption == "Rock")) {
            ret += "\n\nComputer wins";
        } else {
            ret += "\n\nDraw";
        }

        return ret;
    }

    String mapComputerOptionToString(integerComputerOption) {
        if (integerComputerOption == 0) {
            return "Paper";
        } else if (integerComputerOption == 1) {
            return "Rock";
        }
        return "Scissors";
    } 
}