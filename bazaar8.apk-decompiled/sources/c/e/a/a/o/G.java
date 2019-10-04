package c.e.a.a.o;

import android.annotation.TargetApi;
import android.os.Trace;

/* compiled from: TraceUtil */
public final class G {
    public static void a(String str) {
        if (I.f9565a >= 18) {
            b(str);
        }
    }

    @TargetApi(18)
    public static void b(String str) {
        Trace.beginSection(str);
    }

    @TargetApi(18)
    public static void b() {
        Trace.endSection();
    }

    public static void a() {
        if (I.f9565a >= 18) {
            b();
        }
    }
}
