class Main {
    static var List:Array<String> = [];
    static function main() {
        trace("would you like to add something to your list?");
        MakeList();
    }
    static function MakeList() {
        var PlayerI = Sys.stdin().readLine();
        if (PlayerI == "yes"){
            trace("Ok, what do you want to add?");
            var AddList = Sys.stdin().readLine();
            List.push(AddList);
            main();
        } else if (PlayerI == "no"){
            trace("Ok thank you for playing!");
        } else if (PlayerI == "list"){
            trace(List);
            trace("would you like to continue writing down your list?");
            var playerI2 = Sys.stdin().readLine();
            if (playerI2 == "yes"){
                main();
            } else if (playerI2 == "no"){
                trace("Ok! here is your list one last time!");
                trace(List);
            }
        }
    }
}
