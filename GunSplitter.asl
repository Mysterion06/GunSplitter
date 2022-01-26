//Credits Mysterion_06_
//Commissioner zackattackly

state("Gun"){
    byte chapterScreen: 0x2C5724; //1 chapterscreen, 0 gameplay
    byte tester: 0x43BA13; //1 start, 0 menu, 14 paused
    byte pause: 0x417F50; //1 menu, 0 gameplay
    byte menu: 0x2DC064; //1 pause, 0 gameplaay
    byte CP: 0x2C5725; //1 checkpoint, 0 gameplay
    byte chapterSomething: 0x3B51EC; //1 chapterscreen, 0 cp and gameplay
}

start{
    if(current.chapterSomething != 155 && old.chapterSomething == 155){
        return true;
    } 
}

split{
    //After Chapter Screen
    if(current.chapterScreen == 0 && old.chapterScreen == 1 && current.CP == 0 && old.CP == 0 && current.tester != 14 && current.menu != 1){
        return true;
    }
}

/*isLoading{
    if(current.pause == 1 && current.tester != 14 || current.pause == 1 && current.tester == 14 && current.chapterScreen == 0 && current.menu == 0){
        return true;
    } else{
        return false;
    }
}*/