package model;

import java.lang.ref.WeakReference;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import model.IEulerCalculator.lifeCycle;

public class MainModeler implements IModelControllable, IEulerCalculator {

    private static final MainModeler modelInstance = new MainModeler();
    private EulerCalculator eularCalculator;
    private final List<String> consoleList = new ArrayList<>();

    private MainModeler() {
        this.eularCalculator = new EulerCalculator();
    }

    @Override
    public void CalculateEuler(int Elements, int Threads) {
        if (Elements != eularCalculator.getCountOfElements()
                || Threads != eularCalculator.getCountOfThreads()) {
            this.eularCalculator = new EulerCalculator(Elements, Threads);
        }
        eularCalculator.Calculate();
    }

    public synchronized void println(String str) {
        if (null != str) {
            consoleList.add(str);
        } else {
            consoleList.add("Error in Model!");
        }
    }

    public List<String> getConsoleMsgList() {
        return consoleList;
    }

    @Override
    public boolean isCurrentState(lifeCycle state) {
        boolean isReady = false;
        if (state == eularCalculator.getCalculatorState()) {
            isReady = true;
        }
        return isReady;
    }

    @Override
    public BigDecimal getEuler(boolean useThreads) {
        return eularCalculator.getEuler(useThreads);
    }

    protected static MainModeler getModel() {
        return modelInstance;
    }

    @Override
    public boolean isCurrenStateCalcReady() {
        return isCurrentState(lifeCycle.CALCULATION_READY);
    }

    @Override
    public boolean isCurrentStateReady() {
        return isCurrentState(lifeCycle.READY);
    }

    @Override
    public void freeUpMemory() {
        eularCalculator.cleanMemory();
        WeakReference ref = new WeakReference<>(this.eularCalculator);
        this.eularCalculator = null;
        this.consoleList.removeAll(consoleList);
        while (ref.get() != null) {
            System.gc();
        }
        this.eularCalculator = new EulerCalculator();
    }

}
