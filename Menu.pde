class Menu {
    
    //Constants for menu appearance
    int menuX, menuY;
    int optionWidth = 300;
    int optionHeight = 60;
    int optionSpacing = 0;
    final MenuOption[] rootOptions;
    final MenuOption[] settingOptions;
    final MenuOption[] loadOptions;
    
    // states
    static final int STATE_ROOT = 0;
    static final int STATE_SETTING = 1;
    static final int STATE_LOAD = 2;  
    static final int STATE_RESOLUTION = 3;  
    public int menuState = 0;  // initial state
    
    public PVector menuPlayerPosition = new PVector(0, 0);
    
    
    Menu(PApplet game) {
        this.menuX = game.width * 1 / 8;
        this.menuY = game.height * 1 / 10;
        
        this.menuPlayerPosition = new PVector(game.width / 2,  game.height * 4 / 5);
        
        int spaceCounter = 0;
        this.rootOptions = new MenuOption[] {
            new MenuOption("Start New Game", menuX, menuY + spaceCounter++ * (optionHeight + optionSpacing), optionWidth, optionHeight, this),
                new MenuOption("Load Game", menuX, menuY + spaceCounter++ * (optionHeight + optionSpacing), optionWidth, optionHeight, this),
                new MenuOption("Settings", menuX, menuY + spaceCounter++ * (optionHeight + optionSpacing), optionWidth, optionHeight, this),
                new MenuOption("Quit Game", menuX, menuY + spaceCounter++ * (optionHeight + optionSpacing), optionWidth, optionHeight, this)
            };
        
        spaceCounter = 0;
        this.settingOptions = new MenuOption[] {
            new MenuOption("Back", menuX, menuY + spaceCounter++ * (optionHeight + optionSpacing), optionWidth, optionHeight, this),
                new MenuOption("Effect Volumn", menuX, menuY + spaceCounter++ * (optionHeight + optionSpacing), optionWidth, optionHeight, this),
                new MenuOption("Music Volumn", menuX, menuY + spaceCounter++ * (optionHeight + optionSpacing), optionWidth, optionHeight, this),
            };
        
        spaceCounter = 0;
        this.loadOptions = new MenuOption[] {
            new MenuOption("Back", menuX, menuY + spaceCounter++ * (optionHeight + optionSpacing), optionWidth, optionHeight, this),
                new MenuOption("Load Game 1", menuX, menuY + spaceCounter++ * (optionHeight + optionSpacing), optionWidth, optionHeight, this),
                new MenuOption("Load Game 2", menuX, menuY + spaceCounter++ * (optionHeight + optionSpacing), optionWidth, optionHeight, this),
                new MenuOption("Load Game 3", menuX, menuY + spaceCounter++ * (optionHeight + optionSpacing), optionWidth, optionHeight, this),
            };
        
        spaceCounter = 0;
        
    }
    
    
    void drawMenu() {
        
        switch(menuState) {
            case STATE_ROOT:
                for (int i = 0; i < rootOptions.length; i++) {
                    rootOptions[i].drawMenuOption();
                }
                break;
            case STATE_SETTING:
                for (int i = 0; i < settingOptions.length; i++) {
                    settingOptions[i].drawMenuOption();
                }
                break;
            case STATE_LOAD:
                for (int i = 0; i < loadOptions.length; i++) {
                    loadOptions[i].drawMenuOption();
                }
                break;
            
        }
    }
    
    
}
