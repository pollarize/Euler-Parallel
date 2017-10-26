package model;

import java.math.*;
import java.util.logging.Level;
import model.IEulerCalculator.lifeCycle;
import java.util.logging.Logger;

class EulerCalculator {

    //General configuration
    private int countOfElements;
    private int countOfThreads;

    //Banks
    private BigInteger[] bankFactoriel;
    private BigInteger[] bankSquere;
    private BigDecimal[] bankEuler;

    //Thread array
    private Thread[] eulerThreads;
    private Thread[] factorielThreads;
    private Thread[] squereThreads;

    //General state of calculator
    private lifeCycle calculatorState;

    //General use constructor
    public EulerCalculator(int countOfElements, int countOfThreads) {

        //Set data
        setCountOfElements(countOfElements);
        setCountOfThreads(countOfThreads);
        setCalculatorState(lifeCycle.INIT);

        //Create banks to store data
        setBankFactoriel();
        setBankSquere();
        setBankEuler();

        //Create Thread banks
        setEulerThread();
        setFactorielThread();
        setSquereThread();
    }

    //Default use constructor
    public EulerCalculator() {

        //Set data to Default
        setCountOfElements(1);
        setCountOfThreads(1);
        setCalculatorState(lifeCycle.INIT);

        //Create banks to store data
        setBankFactoriel();
        setBankSquere();
        setBankEuler();

        //Create Thread banks
        setEulerThread();
        setFactorielThread();
        setSquereThread();
    }

    //Copy use constructor
    public EulerCalculator(EulerCalculator ec) {
        //Copy instance data to local
        setCountOfElements(ec.getCountOfElements());
        setCountOfThreads(ec.getCountOfThreads());
        setCalculatorState(lifeCycle.INIT);

        this.bankFactoriel = ec.getBankFactoriel();
        this.bankSquere = ec.getBankSquere();
        this.bankEuler = ec.getBankEuler();

        this.eulerThreads = ec.getEulerThreads();
        this.factorielThreads = ec.getFactorielThreads();
        this.squereThreads = ec.getSquereThreads();

    }

    //Set properties
    private void setCountOfElements(int countOfElements) {
        if (0 >= countOfElements) {
            this.countOfElements = 1;
        } else {
            if (50000 >= countOfElements) {
                this.countOfElements = countOfElements;
            } else {
                this.countOfElements = 50000;
            }
        }
    }

    private void setCountOfThreads(int countOfThreads) {
        if (0 >= countOfThreads) {
            this.countOfThreads = 1;
        } else {
            this.countOfThreads = countOfThreads;
        }
    }

    private void setBankFactoriel() {
        this.bankFactoriel = new BigInteger[countOfElements];
    }

    private void setBankSquere() {
        this.bankSquere = new BigInteger[countOfElements];
    }

    public void setCalculatorState(lifeCycle calculatorState) {
        this.calculatorState = calculatorState;
    }

    private void setBankEuler() {
        this.bankEuler = new BigDecimal[countOfThreads];
    }

    private void setEulerThread() {
        this.eulerThreads = new Thread[this.countOfThreads];
    }

    private void setFactorielThread() {
        this.factorielThreads = new Thread[this.countOfThreads];
    }

    private void setSquereThread() {
        this.squereThreads = new Thread[this.countOfThreads];
    }

    //Get properties
    public int getCountOfElements() {
        return countOfElements;
    }

    public int getCountOfThreads() {
        return countOfThreads;
    }

    public BigInteger[] getBankFactoriel() {
        return bankFactoriel;
    }

    public BigInteger[] getBankSquere() {
        return bankSquere;
    }

    protected Thread[] getEulerThreads() {
        return eulerThreads;
    }

    protected Thread[] getFactorielThreads() {
        return factorielThreads;
    }

    protected Thread[] getSquereThreads() {
        return squereThreads;
    }

    public BigDecimal[] getBankEuler() {
        return bankEuler;
    }

    public lifeCycle getCalculatorState() {
        return calculatorState;
    }

    public void cleanMemory() {
        for (int i = 0; i < this.countOfElements; i++) {
            this.bankFactoriel[i] = null;
            this.bankSquere[i] = null;
        }
    }

    //Calculation Methods
    public void Calculate(int countOfElements, int countOfThreads) {

        if (lifeCycle.INIT == this.calculatorState) {
            //Set data
            setCountOfElements(countOfElements);
            setCountOfThreads(countOfThreads);
            setCalculatorState(lifeCycle.INIT);

            //Create banks to store data
            setBankFactoriel();
            setBankSquere();
            setBankEuler();

            //Create Thread banks
            setEulerThread();
            setFactorielThread();
            setSquereThread();
        }

        Calculate();
    }

    public void Calculate() {
        switch (calculatorState) {
            case INIT:
            case READY:
                calculateFactoriel(false);
                calculateSquere(false);
                this.calculatorState = lifeCycle.CALCULATION_F_N;
                break;

            case CALCULATION_F_N:
                boolean isReady_F = isCalculationReady(factorielThreads);
                boolean isReady_N = isCalculationReady(squereThreads);
                if (true == isReady_F && true == isReady_N) {
                    calculateEuler(false);
                    this.calculatorState = lifeCycle.CALCULATION_E;
                }
                break;

            case CALCULATION_E:
                boolean isReady_E = isCalculationReady(eulerThreads);
                if (true == isReady_E) {
                    this.calculatorState = lifeCycle.CALCULATION_READY;
                }
                break;

            default:
                throw new AssertionError();
        }
    }

    private void calculateFactoriel(boolean isJoin) {

        for (int i = 0; i < this.countOfThreads; i++) {
            factorielThreads[i] = new Thread(new FactorielCalculator(i));
            factorielThreads[i].start();
        }

        if (true == isJoin) {
            for (int i = 0; i < this.countOfThreads; i++) {
                try {
                    factorielThreads[i].join();

                } catch (InterruptedException ex) {
                    Logger.getLogger(EulerCalculator.class
                            .getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    private void calculateSquere(boolean isJoin) {

        for (int i = 0; i < this.countOfThreads; i++) {
            squereThreads[i] = new Thread(new SquereCalculator(i));
            squereThreads[i].start();
        }

        if (true == isJoin) {
            for (int i = 0; i < this.countOfThreads; i++) {
                try {
                    squereThreads[i].join();

                } catch (InterruptedException ex) {
                    Logger.getLogger(EulerCalculator.class
                            .getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    private void calculateEuler(boolean isJoin) {
        for (int i = 0; i < this.countOfThreads; i++) {
            eulerThreads[i] = new Thread(new EulerSubCalculator(i));
            eulerThreads[i].start();
        }

        if (true == isJoin) {
            for (int i = 0; i < this.countOfThreads; i++) {
                try {
                    eulerThreads[i].join();

                } catch (InterruptedException ex) {
                    Logger.getLogger(EulerCalculator.class
                            .getName()).log(Level.SEVERE, null, ex);
                }
            }
        }

    }

    public BigDecimal getEuler(boolean useThreads) {
        BigDecimal euler = BigDecimal.valueOf(0);
        if (lifeCycle.CALCULATION_READY == calculatorState || lifeCycle.READY == calculatorState) {

            this.calculatorState = lifeCycle.SUM_E;

            if (true == useThreads) {
                for (int i = 0; i < countOfThreads; i++) {
                    euler = euler.add(bankEuler[i]);
                }
            } else {
                for (int i = 0; i < countOfElements; i++) {
                    BigDecimal N = new BigDecimal(bankSquere[i]);
                    BigDecimal F = new BigDecimal(bankFactoriel[i]);
                    euler = euler.add(N.divide(F, countOfElements, RoundingMode.HALF_UP));
                }
            }
        }
        this.calculatorState = lifeCycle.READY;
        return euler;
    }

    protected boolean isCalculationReady(Thread[] threadArr) {
        boolean isReady = true;

        for (int i = 0; i < threadArr.length; i++) {
            if (true == threadArr[i].isAlive()) {
                isReady = false;
            }
        }
        return isReady;

    }

    //Runnable inner classes
    class FactorielCalculator implements Runnable {

        private final int calculatorNumber;

        public FactorielCalculator(int i) {
            this.calculatorNumber = i;
        }

        private void bankRangeCalculation(boolean optimize) {

            int sizeOfBuffer = (countOfElements / countOfThreads);
            int startIndex = calculatorNumber * sizeOfBuffer;
            int untilIndex = (calculatorNumber == countOfThreads ? countOfElements : startIndex + sizeOfBuffer);

            if (true != optimize) {
                for (int i = startIndex; i < untilIndex; i++) {
                    bankFactoriel[i] = calculateFactoriel(3 * i);
                }
            } else {
                //Calculate only the first element slow
                bankFactoriel[startIndex] = calculateFactoriel(3 * startIndex);

                //Calculate the rest using the first one 
                for (int i = startIndex + 1; i < untilIndex; i++) {
                    bankFactoriel[i] = bankFactoriel[i - 1].multiply(BigInteger.valueOf(3 * i));
                    if (1 <= i) {
                        bankFactoriel[i] = bankFactoriel[i].multiply(BigInteger.valueOf(3 * i - 1));
                        bankFactoriel[i] = bankFactoriel[i].multiply(BigInteger.valueOf(3 * i - 2));
                    }
                }
            }
        }

        public BigInteger calculateFactoriel(int number) {
            BigInteger fact = BigInteger.valueOf(1);

            if (0 < number) {
                for (int i = 1; i <= number; i++) {
                    fact = fact.multiply(BigInteger.valueOf(i));
                }
            }
            return fact;
        }

        @Override
        public void run() {
            long startTime = System.currentTimeMillis();
            IModelControllable.GetModeler().println(String.format("Thread-%d-F started.", calculatorNumber));
            bankRangeCalculation(true);
            IModelControllable.GetModeler().println(String.format("Thread-%d-F stopped.", calculatorNumber));
            IModelControllable.GetModeler().println(String.format("Thread-%d-F execution time was (millis): %d", calculatorNumber, System.currentTimeMillis() - startTime));
        }

    }

    class SquereCalculator implements Runnable {

        private final int calculatorNumber;

        public SquereCalculator(int i) {
            this.calculatorNumber = i;
        }

        private void bankRangeCalculation() {

            int sizeOfBuffer = (countOfElements / countOfThreads);
            int startIndex = calculatorNumber * sizeOfBuffer;
            int untilIndex = (calculatorNumber == countOfThreads ? countOfElements : startIndex + sizeOfBuffer);

            BigInteger squere;
            for (int i = startIndex; i < untilIndex; i++) {
                squere = BigInteger.valueOf(3 * i);
                bankSquere[i] = squere.pow(2).add(BigInteger.valueOf(1));
            }
        }

        @Override
        public void run() {
            long startTime = System.currentTimeMillis();
            IModelControllable.GetModeler().println(String.format("Thread-%d-N started.", calculatorNumber));
            bankRangeCalculation();
            IModelControllable.GetModeler().println(String.format("Thread-%d-N stopped.", calculatorNumber));
            IModelControllable.GetModeler().println(String.format("Thread-%d-N execution time was (millis): %d", calculatorNumber, System.currentTimeMillis() - startTime));
        }
    }

    class EulerSubCalculator implements Runnable {

        private final int calculatorNumber;

        public EulerSubCalculator(int i) {
            this.calculatorNumber = i;
        }

        private void calculateEulerRange() {
            BigDecimal eulerNumber = BigDecimal.valueOf(0);
            int sizeOfBuffer = (countOfElements / countOfThreads);
            int startIndex = calculatorNumber * sizeOfBuffer;
            int untilIndex = (calculatorNumber == countOfThreads ? countOfElements : startIndex + sizeOfBuffer);

            for (int i = startIndex; i < untilIndex; i++) {
                BigDecimal N = new BigDecimal(bankSquere[i]);
                BigDecimal F = new BigDecimal(bankFactoriel[i]);
                eulerNumber = eulerNumber.add(N.divide(F, countOfElements, RoundingMode.HALF_UP));
            }

            bankEuler[calculatorNumber] = eulerNumber;
        }

        @Override
        public void run() {
            long startTime = System.currentTimeMillis();
            IModelControllable.GetModeler().println(String.format("Thread-%d-E started.", calculatorNumber));
            calculateEulerRange();
            IModelControllable.GetModeler().println(String.format("Thread-%d-E stopped.", calculatorNumber));
            IModelControllable.GetModeler().println(String.format("Thread-%d-E execution time was (millis): %d", calculatorNumber, System.currentTimeMillis() - startTime));
        }
    }
}
