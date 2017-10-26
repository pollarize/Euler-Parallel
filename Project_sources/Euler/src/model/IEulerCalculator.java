/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.math.BigDecimal;

/**
 *
 * @author MMALDZHA
 */
public interface IEulerCalculator {

    public enum lifeCycle {
        INIT, CALCULATION_F_N, CALCULATION_E, CALCULATION_READY, SUM_E, READY
    };

    public void CalculateEuler(int Elements, int Threads);

    public boolean isCurrentState(lifeCycle state);

    public BigDecimal getEuler(boolean useThreads);
    
    public boolean isCurrenStateCalcReady();
    
    public boolean isCurrentStateReady();
    
    public void freeUpMemory();
}
