package DemoWebService;

public class CauHoi {

    private int MACH;
    private String NDCH;
    private String A;
    private String B;
    private String C;
    private String D;
    private String DA;

    public CauHoi(int MACH, String NDCH, String A, String B, String C, String D, String DA) {
        this.MACH = MACH;
        this.NDCH = NDCH;
        this.A = A;
        this.B = B;
        this.C = C;
        this.D = D;
        this.DA = DA;
    }

    public int getMACH() {
        return MACH;
    }

    public void setMACH(int MACH) {
        this.MACH = MACH;
    }

    public String getNDCH() {
        return NDCH;
    }

    public void setNDCH(String NDCH) {
        this.NDCH = NDCH;
    }

    public String getA() {
        return A;
    }

    public void setA(String A) {
        this.A = A;
    }

    public String getB() {
        return B;
    }

    public void setB(String B) {
        this.B = B;
    }

    public String getC() {
        return C;
    }

    public void setC(String C) {
        this.C = C;
    }

    public String getD() {
        return D;
    }

    public void setD(String D) {
        this.D = D;
    }

    public String getDA() {
        return DA;
    }

    public void setDA(String DA) {
        this.DA = DA;
    }

}
