
function onBtnTestClick(event){
    $.Msg("onBtnTestClick") // вывод в консоль

    var plyID = Game.GetLocalPlayerID(); // Game - глобальная штука, смотри API JS

    var data = {		// Обьект для передачи в Луа
        playerID: plyID, 
        msg: event         // аргумен, который указывали в хмл onactivate="onBtnTestClick('myArgument')
    }

    // кладем 					      "придуманное_имя_события" и наш обьект
    GameEvents.SendCustomGameEventToServer(  "event_test",             data ); 

}