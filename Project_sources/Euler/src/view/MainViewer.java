package view;

import com.sun.org.apache.bcel.internal.generic.AALOAD;
import java.io.FileWriter;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MainViewer implements IViewConrollable, IControlGUIView {
    
    private static final MainViewer viewInstance = new MainViewer();
    private String previoueConsoleText;
    private FileWriter writer;
    private GUIView gui;
    private boolean isGUIStarted;

    public boolean isIsGUIStarted() {
        return isGUIStarted;
    }

    public void setIsGUIStarted(boolean isGUIStarted) {
        this.isGUIStarted = isGUIStarted;
    }
    
    private MainViewer() {
        setIsGUIStarted(false);
    }
    
    protected static MainViewer getView() {
        return viewInstance;
    }
    
    public void consolePrintLn(String str) {
        
        if (null != str) {
            if (0 < str.length()) {
                if (!str.equals(previoueConsoleText)) {
                    if (true != isGUIStarted) {
                        System.out.println(str);
                    } else {
                        gui.consoleGUILn(str);
                    }
                    previoueConsoleText = str;
                    
                }
            }
        }
    }
    
    public void createFile(String outputPath) {
        try {
            writer = new FileWriter(outputPath);
            
        } catch (IOException ex) {
            Logger.getLogger(MainViewer.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void writeFile(String content) {
        try {
            writer.write(content);
            
        } catch (IOException ex) {
            Logger.getLogger(MainViewer.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void writeLnFile(String content) {
        try {
            writer.write(content + "\n");
            
        } catch (IOException ex) {
            Logger.getLogger(MainViewer.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void closeFile() {
        try {
            writer.close();
            writer = null;
            
        } catch (IOException ex) {
            Logger.getLogger(MainViewer.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    @Override
    public boolean isGUIready() {
        return gui.isReadyForCalculation();
    }
    
    @Override
    public void setGUIready(boolean isReadyForCalculation) {
        gui.setIsReadyForCalculation(isReadyForCalculation);
    }
    
    @Override
    public int getCountOfElements() {
        return gui.getCountOfElements();
    }
    
    @Override
    public int getCountOfThreads() {
        return gui.getCountOfThreads();
    }
    
    @Override
    public void setOutputFile(String outputFile) {
        gui.setOutputFile(outputFile);
    }
    
    @Override
    public void startGUI() {
        if (true != this.isGUIStarted ) {
            gui = new GUIView();
            gui.start();
            this.isGUIStarted = true;
        }
    }
    
    @Override
    public void closeGUI() {
        gui.dispose();
    }
    
    @Override
    public String getOutpurFile() {
        return gui.getOutputFile();
    }
    
}
