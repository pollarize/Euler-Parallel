/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

/**
 *
 * @author Mihail Maldzhanski
 */
public interface IControlGUIView {

    public boolean isGUIready();

    public void setGUIready(boolean isReadyForCalculation);

    public int getCountOfElements();

    public int getCountOfThreads();

    public void setOutputFile(String outputFile);

    public String getOutpurFile();

    public void startGUI();

    public void closeGUI();
}
