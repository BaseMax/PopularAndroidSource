package b.H;

import android.os.Build;
import androidx.work.ListenableWorker;
import androidx.work.OverwritingInputMerger;
import b.H.n;
import java.util.concurrent.TimeUnit;

/* compiled from: OneTimeWorkRequest */
public final class g extends n {

    /* compiled from: OneTimeWorkRequest */
    public static final class a extends n.a<a, g> {
        public a(Class<? extends ListenableWorker> cls) {
            super(cls);
            this.f1655c.f1469f = OverwritingInputMerger.class.getName();
        }

        public a a(long j2, TimeUnit timeUnit) {
            this.f1655c.f1472i = timeUnit.toMillis(j2);
            return this;
        }

        public a c() {
            return this;
        }

        public g b() {
            if (!this.f1653a || Build.VERSION.SDK_INT < 23 || !this.f1655c.f1475l.h()) {
                return new g(this);
            }
            throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job");
        }
    }

    public g(a aVar) {
        super(aVar.f1654b, aVar.f1655c, aVar.f1656d);
    }
}
