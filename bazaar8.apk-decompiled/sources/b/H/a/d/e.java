package b.H.a.d;

import android.content.Context;
import android.content.SharedPreferences;

/* compiled from: IdGenerator */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public final Context f1545a;

    /* renamed from: b  reason: collision with root package name */
    public SharedPreferences f1546b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1547c;

    public e(Context context) {
        this.f1545a = context;
    }

    public int a(int i2, int i3) {
        synchronized (e.class) {
            a();
            int a2 = a("next_job_scheduler_id");
            if (a2 >= i2) {
                if (a2 <= i3) {
                    i2 = a2;
                }
            }
            a("next_job_scheduler_id", i2 + 1);
        }
        return i2;
    }

    public int b() {
        int a2;
        synchronized (e.class) {
            a();
            a2 = a("next_alarm_manager_id");
        }
        return a2;
    }

    public final int a(String str) {
        int i2 = 0;
        int i3 = this.f1546b.getInt(str, 0);
        if (i3 != Integer.MAX_VALUE) {
            i2 = i3 + 1;
        }
        a(str, i2);
        return i3;
    }

    public final void a(String str, int i2) {
        this.f1546b.edit().putInt(str, i2).apply();
    }

    public final void a() {
        if (!this.f1547c) {
            this.f1546b = this.f1545a.getSharedPreferences("androidx.work.util.id", 0);
            this.f1547c = true;
        }
    }
}
