package view;

public interface IViewConrollable {

    public static MainViewer GetViewer() {
        return MainViewer.getView();
    }
    
}
