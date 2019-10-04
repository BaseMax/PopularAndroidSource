package androidx.work.impl.background.systemalarm;

import android.content.Intent;
import b.H.a.a.b.f;
import b.H.a.d.l;
import b.r.o;

public class SystemAlarmService extends o implements f.b {

    /* renamed from: b  reason: collision with root package name */
    public static final String f1028b = b.H.f.a("SystemAlarmService");

    /* renamed from: c  reason: collision with root package name */
    public f f1029c;

    public void a() {
        b.H.f.a().a(f1028b, "All commands completed in dispatcher", new Throwable[0]);
        l.a();
        stopSelf();
    }

    public void onCreate() {
        super.onCreate();
        this.f1029c = new f(this);
        this.f1029c.a((f.b) this);
    }

    public void onDestroy() {
        super.onDestroy();
        this.f1029c.f();
    }

    public int onStartCommand(Intent intent, int i2, int i3) {
        super.onStartCommand(intent, i2, i3);
        if (intent != null) {
            this.f1029c.a(intent, i3);
        }
        return 3;
    }
}
