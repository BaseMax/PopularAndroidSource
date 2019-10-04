package e.a.a.a.a.b;

import android.os.SystemClock;
import android.util.Log;

/* compiled from: TimingMetric */
public class C {

    /* renamed from: a  reason: collision with root package name */
    public final String f13667a;

    /* renamed from: b  reason: collision with root package name */
    public final String f13668b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f13669c;

    /* renamed from: d  reason: collision with root package name */
    public long f13670d;

    /* renamed from: e  reason: collision with root package name */
    public long f13671e;

    public C(String str, String str2) {
        this.f13667a = str;
        this.f13668b = str2;
        this.f13669c = !Log.isLoggable(str2, 2);
    }

    public final void a() {
        String str = this.f13668b;
        Log.v(str, this.f13667a + ": " + this.f13671e + "ms");
    }

    public synchronized void b() {
        if (!this.f13669c) {
            this.f13670d = SystemClock.elapsedRealtime();
            this.f13671e = 0;
        }
    }

    public synchronized void c() {
        if (!this.f13669c) {
            if (this.f13671e == 0) {
                this.f13671e = SystemClock.elapsedRealtime() - this.f13670d;
                a();
            }
        }
    }
}
