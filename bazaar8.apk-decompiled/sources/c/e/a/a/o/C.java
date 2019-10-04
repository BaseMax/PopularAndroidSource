package c.e.a.a.o;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

/* compiled from: SystemClock */
public final class C implements C0738f {
    public long a() {
        return SystemClock.elapsedRealtime();
    }

    public long b() {
        return SystemClock.uptimeMillis();
    }

    public o a(Looper looper, Handler.Callback callback) {
        return new D(new Handler(looper, callback));
    }
}
