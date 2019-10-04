package b.H.a.a.b;

import android.content.Intent;
import android.os.PowerManager;
import b.H.a.a.b.f;
import b.H.a.d.l;

/* compiled from: SystemAlarmDispatcher */
class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ f f1353a;

    public e(f fVar) {
        this.f1353a = fVar;
    }

    public void run() {
        f.c cVar;
        f fVar;
        synchronized (this.f1353a.f1361h) {
            this.f1353a.f1362i = this.f1353a.f1361h.get(0);
        }
        Intent intent = this.f1353a.f1362i;
        if (intent != null) {
            String action = intent.getAction();
            int intExtra = this.f1353a.f1362i.getIntExtra("KEY_START_ID", 0);
            b.H.f.a().a(f.f1354a, String.format("Processing command %s, %s", new Object[]{this.f1353a.f1362i, Integer.valueOf(intExtra)}), new Throwable[0]);
            PowerManager.WakeLock a2 = l.a(this.f1353a.f1355b, String.format("%s (%s)", new Object[]{action, Integer.valueOf(intExtra)}));
            try {
                b.H.f.a().a(f.f1354a, String.format("Acquiring operation wake lock (%s) %s", new Object[]{action, a2}), new Throwable[0]);
                a2.acquire();
                this.f1353a.f1359f.g(this.f1353a.f1362i, intExtra, this.f1353a);
                b.H.f.a().a(f.f1354a, String.format("Releasing operation wake lock (%s) %s", new Object[]{action, a2}), new Throwable[0]);
                a2.release();
                fVar = this.f1353a;
                cVar = new f.c(fVar);
            } catch (Throwable th) {
                b.H.f.a().a(f.f1354a, String.format("Releasing operation wake lock (%s) %s", new Object[]{action, a2}), new Throwable[0]);
                a2.release();
                f fVar2 = this.f1353a;
                fVar2.a((Runnable) new f.c(fVar2));
                throw th;
            }
            fVar.a((Runnable) cVar);
        }
    }
}
