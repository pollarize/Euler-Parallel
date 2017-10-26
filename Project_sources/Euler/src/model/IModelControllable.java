package model;

public interface IModelControllable {

    public static MainModeler GetModeler(){
        return MainModeler.getModel();
    }
}
