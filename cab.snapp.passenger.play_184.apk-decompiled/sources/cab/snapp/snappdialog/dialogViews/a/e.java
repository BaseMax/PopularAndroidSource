package cab.snapp.snappdialog.dialogViews.a;

import java.util.List;
import okhttp3.internal.http.StatusLine;

public final class e extends c {

    /* renamed from: a  reason: collision with root package name */
    String[] f1479a;

    /* renamed from: b  reason: collision with root package name */
    boolean f1480b;
    b c;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private e f1481a = new e((byte) 0);

        public final a setOnItemSelectedListener(b bVar) {
            this.f1481a.c = bVar;
            return this;
        }

        public final a setIsRepeatingEnabled(boolean z) {
            this.f1481a.f1480b = z;
            return this;
        }

        public final a setItems(List<String> list) {
            e eVar = this.f1481a;
            if (list != null) {
                eVar.f1479a = (String[]) list.toArray(new String[list.size()]);
            }
            return this;
        }

        public final a setItems(String[] strArr) {
            this.f1481a.f1479a = strArr;
            return this;
        }

        public final e build() {
            return this.f1481a;
        }
    }

    public interface b {
        void onItemSelected(int i, String str);
    }

    public final int getType() {
        return StatusLine.HTTP_PERM_REDIRECT;
    }

    /* synthetic */ e(byte b2) {
        this();
    }

    private e() {
        this.f1480b = false;
    }

    public final b getItemSelectedListener() {
        return this.c;
    }

    public final String[] getItems() {
        return this.f1479a;
    }

    public final boolean isRepeatingEnabled() {
        return this.f1480b;
    }
}
