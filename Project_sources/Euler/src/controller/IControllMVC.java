package controller;

import model.*;
import view.*;

interface IControllMVC {

    public static MainViewer GetView() {
        return IViewConrollable.GetViewer();
    }

    public static MainModeler GetModel() {
        return IModelControllable.GetModeler();
    }

    public static MainController GetController(){
        return MainController.getController();
    }
     
}
