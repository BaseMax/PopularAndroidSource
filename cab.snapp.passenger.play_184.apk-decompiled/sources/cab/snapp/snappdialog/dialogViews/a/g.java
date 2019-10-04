package cab.snapp.snappdialog.dialogViews.a;

public final class g extends c {

    /* renamed from: a  reason: collision with root package name */
    String f1484a;

    /* renamed from: b  reason: collision with root package name */
    int f1485b;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private g f1486a = new g((byte) 0);

        public final a setMessage(String str) {
            this.f1486a.f1484a = str;
            return this;
        }

        public final a setDirection(int i) {
            if (i == 1002 || i == 1001) {
                this.f1486a.f1485b = i;
            }
            return this;
        }

        public final g build() {
            return this.f1486a;
        }
    }

    public final int getType() {
        return 301;
    }

    /* synthetic */ g(byte b2) {
        this();
    }

    private g() {
        this.f1485b = 0;
    }

    public final String getMessage() {
        return this.f1484a;
    }

    public final int getDirection() {
        return this.f1485b;
    }
}
