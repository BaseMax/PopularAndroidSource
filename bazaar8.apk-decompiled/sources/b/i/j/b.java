package b.i.j;

import android.util.Log;
import java.io.Writer;

/* compiled from: LogWriter */
public class b extends Writer {

    /* renamed from: a  reason: collision with root package name */
    public final String f2753a;

    /* renamed from: b  reason: collision with root package name */
    public StringBuilder f2754b = new StringBuilder(128);

    public b(String str) {
        this.f2753a = str;
    }

    public void close() {
        s();
    }

    public void flush() {
        s();
    }

    public final void s() {
        if (this.f2754b.length() > 0) {
            Log.d(this.f2753a, this.f2754b.toString());
            StringBuilder sb = this.f2754b;
            sb.delete(0, sb.length());
        }
    }

    public void write(char[] cArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            char c2 = cArr[i2 + i4];
            if (c2 == 10) {
                s();
            } else {
                this.f2754b.append(c2);
            }
        }
    }
}
