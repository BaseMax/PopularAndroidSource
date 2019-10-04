package b.H;

import android.os.Build;
import androidx.work.ListenableWorker;
import b.H.n;
import java.util.concurrent.TimeUnit;

/* compiled from: PeriodicWorkRequest */
public final class j extends n {

    /* compiled from: PeriodicWorkRequest */
    public static final class a extends n.a<a, j> {
        public a(Class<? extends ListenableWorker> cls, long j2, TimeUnit timeUnit) {
            super(cls);
            this.f1655c.b(timeUnit.toMillis(j2));
        }

        public a c() {
            return this;
        }

        public j b() {
            if (!this.f1653a || Build.VERSION.SDK_INT < 23 || !this.f1655c.f1475l.h()) {
                return new j(this);
            }
            throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job");
        }
    }

    public j(a aVar) {
        super(aVar.f1654b, aVar.f1655c, aVar.f1656d);
    }
}
