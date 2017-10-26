package controller;

import java.util.Arrays;
import java.util.List;

class MainController implements IControllMVC {

    private static final MainController controllerInstance = new MainController();
    private static commands cmd;
    private static final int FPS = 60;

    private enum controllerState {
        EXTRACT, GUI, START_TIMER, CALCULATE, RUNNING_F_N, RUNNING_E, STORE, PRINTRESULT, RESTART_GUI, FINISH
    };

    public static void main(String[] args) throws InterruptedException {

        //Local Variables
        long startTime = 0;
        int previousMsgCnt = 0;
        controllerState state = controllerState.EXTRACT;

        //Start point for state machine
        while (controllerState.FINISH != state) {

            //Model State - Machine
            switch (state) {
                case EXTRACT:
                    ExtractCommands(args);
                    if (true != cmd.hasGUI) {
                        state = controllerState.START_TIMER;
                    } else {
                        state = controllerState.GUI;
                    }
                    break;

                case GUI:
                    IControllMVC.GetView().startGUI();
                    IControllMVC.GetView().setOutputFile(cmd.outputfile);
                    if (true == IControllMVC.GetView().isGUIready()) {
                        cmd.elements = IControllMVC.GetView().getCountOfElements();
                        cmd.threads = IControllMVC.GetView().getCountOfThreads();
                        cmd.outputfile = IControllMVC.GetView().getOutpurFile();
                        state = controllerState.START_TIMER;
                    }
                    break;

                case START_TIMER:
                    startTime = System.currentTimeMillis();
                    state = controllerState.CALCULATE;
                    break;

                case CALCULATE:
                    IControllMVC.GetModel().CalculateEuler(cmd.elements, cmd.threads);
                    if (IControllMVC.GetModel().isCurrenStateCalcReady()) {
                        state = controllerState.STORE;
                    }
                    break;

                case STORE:
                    //Save "e" to file
                    IControllMVC.GetView().createFile(cmd.outputfile);
                    IControllMVC.GetView().writeLnFile("e = " + IControllMVC.GetModel().getEuler(true).toString());
                    IControllMVC.GetView().writeLnFile("Elements used in current run: " + cmd.elements);
                    IControllMVC.GetView().writeLnFile("Threads used in current run: " + cmd.threads);
                    IControllMVC.GetView().writeLnFile("Total execution time for current run (millis):" + ((System.currentTimeMillis() - startTime)));
                    if (true == cmd.isDebug) {
                        IControllMVC.GetModel().getConsoleMsgList().forEach((text) -> {
                            IControllMVC.GetView().writeLnFile(text);
                        });
                    }
                    IControllMVC.GetView().closeFile();

                    if (IControllMVC.GetModel().isCurrentStateReady()) {
                        state = controllerState.PRINTRESULT;
                    }
                    break;

                case PRINTRESULT:
                    IControllMVC.GetView().consolePrintLn("Threads used in current run: " + cmd.threads);
                    IControllMVC.GetView().consolePrintLn("Total execution time for current run (millis):" + ((System.currentTimeMillis() - startTime)));
                    if (true == cmd.hasGUI) {
                        state = controllerState.RESTART_GUI;
                    } else {
                        state = controllerState.FINISH;
                    }
                    IControllMVC.GetModel().freeUpMemory();
                    break;

                case RESTART_GUI:
                    IControllMVC.GetView().setGUIready(false);
                    System.gc();
                    state = controllerState.GUI;
                    break;

                default:
                    throw new AssertionError();
            }

            //View updater
            //Print new messages
            if (isThereNewMessage(IControllMVC.GetModel().getConsoleMsgList(), previousMsgCnt)) {
                printNewMsg(IControllMVC.GetModel().getConsoleMsgList(), previousMsgCnt);
            }

            //Save the current list size
            previousMsgCnt = IControllMVC.GetModel().getConsoleMsgList().size();

            //Reduce CPU load
            Thread.sleep(1000 / FPS);
        }
    }

    private MainController() {
        MainController.cmd = new commands();
    }

    private static boolean isThereNewMessage(List<String> list, int previousSize) {
        boolean isNewMessages;
        if (previousSize != list.size()) {
            isNewMessages = true;
        } else {
            isNewMessages = false;
        }
        return isNewMessages;
    }

    private static void printNewMsg(List<String> list, int fromIndex) {
        for (int i = fromIndex; i < list.size(); i++) {
            IControllMVC.GetView().consolePrintLn(list.get(i));
        }
    }

    private static void ExtractCommands(String[] args) {
        int indexOf;

        //GUI activation/deactivation
        if (Arrays.asList(args).contains("-q")) {
            cmd.hasGUI = false;
        }

        //Debug info (Console Output) saves to file
        if (Arrays.asList(args).contains("-d")) {
            cmd.isDebug = true;
        }

        //Threads count
        if (Arrays.asList(args).contains("-t") || Arrays.asList(args).contains("-task")) {
            if (Arrays.asList(args).contains("-t")) {
                indexOf = Arrays.asList(args).indexOf("-t");
            } else {
                indexOf = Arrays.asList(args).indexOf("-task");
            }
            cmd.threads = Integer.parseInt(args[indexOf + 1]);
        }

        //Elements count
        if (Arrays.asList(args).contains("-p")) {
            indexOf = Arrays.asList(args).indexOf("-p");
            cmd.elements = Integer.parseInt(args[indexOf + 1]);
        }

        //Output file
        if (Arrays.asList(args).contains("-o")) {
            indexOf = Arrays.asList(args).indexOf("-o");
            cmd.outputfile = args[indexOf + 1];
        }
    }

    protected static MainController getController() {
        return controllerInstance;
    }

    class commands {

        public int threads;
        public int elements;
        public boolean hasGUI;
        public String outputfile;
        public boolean isDebug;

        public commands() {
            threads = 1;
            elements = 1;
            hasGUI = true;
            outputfile = "result.txt";
            isDebug = false;
        }
    }
}
