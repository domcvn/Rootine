unit IHM;

interface

type
    TStartChoice = (IMPORT, REGISTER, QUIT);
    TMainMenuChoice = (VIEW_PROFILE, VIEW_FOREST, LOGOUT, START, QUIT);
    TBrowseAction = (NONE, NEXT, PREVIOUS, SELECT);
    TSessionAction = (NONE, TOGGLE_PAUSE, QUIT_SESSION, CHANGE_TREE);

procedure displayStartMenu(var choice: TStartChoice);
procedure displayMainMenu(var choice: TMainMenuChoice);
procedure displayLogin(var username: String);
procedure displayRegister(var fullname, username, description: String);
procedure displayProfile(user: TUser);
procedure displayForestOverview(forest: TForest; var idx: LongInt);
procedure displayTreeFull(tree: TTree);
procedure displayCycleModeMenu(var mode: TMode);
procedure displayCustomConfiguration(var focusDuration, shortBreakDuration, longBreakDuration, nbSessionsBeforeLongBreak: LongInt);
procedure displayPomodoroConfiguration();
procedure renderTreePreview(tree: TTree; currentIdx, totalCnt: LongInt);
procedure pollBrowseInput(var action: TBrowseAction);
procedure renderTreeArea(tree: TTree; treePhase: LongInt);
procedure renderClockArea(time: LongInt);
procedure renderInstructionsArea(sessionPhase: TPhaseSession);
procedure pollSessionInput(var action: TSessionAction);
procedure displayCycleEnd(cycle: TCycle; success: Boolean);
procedure displayMessage(msg: String);
procedure displayError(msg: String);
procedure askConfirmation(msg: String; var answer: Boolean);
procedure waitForKey();

implementation

end.

