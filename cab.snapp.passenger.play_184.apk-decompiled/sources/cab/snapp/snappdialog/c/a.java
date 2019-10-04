package cab.snapp.snappdialog.c;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private int f1467a;

    /* renamed from: b  reason: collision with root package name */
    private int f1468b;
    private int c;

    public a() {
    }

    public a(int i, int i2, int i3) {
        this.c = i;
        this.f1468b = i2;
        this.f1467a = i3;
    }

    public final int getDay() {
        return this.f1467a;
    }

    public final void setDay(int i) {
        this.f1467a = i;
    }

    public final int getMonth() {
        return this.f1468b;
    }

    public final void setMonth(int i) {
        this.f1468b = i;
    }

    public final int getYear() {
        return this.c;
    }

    public final void setYear(int i) {
        this.c = i;
    }

    public final String toString() {
        return "DateSelected{day=" + this.f1467a + ", month=" + this.f1468b + ", year=" + this.c + '}';
    }
}
