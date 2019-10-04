package cab.snapp.snappdialog.dialogViews.a;

import cab.snapp.snappdialog.b.d;
import java.util.List;

public final class i extends c {

    /* renamed from: a  reason: collision with root package name */
    String f1490a;

    /* renamed from: b  reason: collision with root package name */
    int f1491b;
    List<String> c;
    int d;
    d e;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private i f1492a = new i((byte) 0);

        public final a setMessage(String str) {
            this.f1492a.f1490a = str;
            return this;
        }

        public final a setMessageList(List<String> list) {
            this.f1492a.c = list;
            return this;
        }

        public final a setSingleItemSelectedListener(d dVar) {
            this.f1492a.e = dVar;
            return this;
        }

        public final a setDirection(int i) {
            if (i == 1002 || i == 1001) {
                this.f1492a.f1491b = i;
            }
            return this;
        }

        public final a setDefaultCheckedItemPosition(int i) {
            this.f1492a.d = i;
            return this;
        }

        public final i build() {
            return this.f1492a;
        }
    }

    public final int getType() {
        return 303;
    }

    /* synthetic */ i(byte b2) {
        this();
    }

    private i() {
        this.f1491b = 0;
        this.d = -1;
    }

    public final String getMessage() {
        return this.f1490a;
    }

    public final List<String> getMessageList() {
        return this.c;
    }

    public final d getSingleItemSelectedListener() {
        return this.e;
    }

    public final int getDirection() {
        return this.f1491b;
    }

    public final int getDefaultCheckedItemPosition() {
        return this.d;
    }
}
