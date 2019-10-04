package cab.snapp.snappdialog.dialogViews.a;

import java.util.List;

public final class h extends c {

    /* renamed from: a  reason: collision with root package name */
    String f1487a;

    /* renamed from: b  reason: collision with root package name */
    List<String> f1488b;
    private int c;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private h f1489a = new h((byte) 0);

        public final a setMessage(String str) {
            this.f1489a.f1487a = str;
            return this;
        }

        public final a setMessageList(List<String> list) {
            this.f1489a.f1488b = list;
            return this;
        }

        public final h build() {
            return this.f1489a;
        }
    }

    public final int getType() {
        return 302;
    }

    /* synthetic */ h(byte b2) {
        this();
    }

    private h() {
        this.c = 0;
    }

    public final String getMessage() {
        return this.f1487a;
    }

    public final int getDirection() {
        return this.c;
    }

    public final List<String> getMessageList() {
        return this.f1488b;
    }
}
