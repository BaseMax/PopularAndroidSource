package b.H.a.d;

import android.content.Context;
import android.content.SharedPreferences;

/* compiled from: Preferences */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public Context f1549a;

    /* renamed from: b  reason: collision with root package name */
    public SharedPreferences f1550b;

    public g(Context context) {
        this.f1549a = context;
    }

    public void a(boolean z) {
        a().edit().putBoolean("reschedule_needed", z).apply();
    }

    public boolean b() {
        return a().getBoolean("reschedule_needed", false);
    }

    public final SharedPreferences a() {
        SharedPreferences sharedPreferences;
        synchronized (g.class) {
            if (this.f1550b == null) {
                this.f1550b = this.f1549a.getSharedPreferences("androidx.work.util.preferences", 0);
            }
            sharedPreferences = this.f1550b;
        }
        return sharedPreferences;
    }
}
