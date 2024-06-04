/// @description Insert description here
// You can write your code in this editor

var currentQuestions = undefined;
var difficultyLevel = 1; 

if (file_exists(working_directory + "jsonData.json")) {
    var json = "";
    var file = file_text_open_read(working_directory + "jsonData.json");
    
    while(file_text_eof(file) == false){
        json += file_text_readln(file);
    }
    file_text_close(file);
    currentQuestions = json_parse(json);
}

var randomIndex = irandom(array_length(currentQuestions) - 1);
selectedQuestion = currentQuestions[randomIndex];
show_debug_message(selectedQuestion);
show_debug_message(selectedQuestion.question);

pregunta = selectedQuestion.question;
respuesta1 = selectedQuestion.answers[0];
respuesta2 = selectedQuestion.answers[1];
respuesta3 = selectedQuestion.answers[2];
respuesta4 = selectedQuestion.answers[3];
correcta = selectedQuestion.correct_answer

vk_1= ord("1");
vk_2= ord("2");
vk_3= ord("3");
vk_4= ord("4");
