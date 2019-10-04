package c.c.a.b.a;

import c.c.a.c.c.b;
import com.crashlytics.android.Crashlytics;

/* compiled from: CrashlyticsWriter.kt */
public final class a extends b {
    public a(int i2) {
        super(i2);
    }

    public void a(int i2, String str, Throwable th, String str2) {
        if (a() >= i2) {
            if (i2 == 1 || i2 == 2) {
                Crashlytics.logException(a(str2, th));
            }
        }
    }

    public final Throwable a(String str, Throwable th) {
        return th != null ? th : new Throwable(str);
    }
}
