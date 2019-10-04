package c.c.a.p;

import androidx.work.NetworkType;
import androidx.work.Worker;
import b.H.d;
import b.H.g;
import b.H.m;
import com.farsitel.bazaar.work.PeriodicStartWorker;
import h.f.b.j;
import java.util.concurrent.TimeUnit;

/* compiled from: PeriodicStartWorker.kt */
public final class n {
    public static /* synthetic */ void a(Class cls, long j2, long j3, String[] strArr, NetworkType networkType, boolean z, boolean z2, boolean z3, long j4, int i2, Object obj) {
        int i3 = i2;
        a(cls, j2, j3, (i3 & 8) != 0 ? null : strArr, (i3 & 16) != 0 ? NetworkType.NOT_REQUIRED : networkType, (i3 & 32) != 0 ? false : z, (i3 & 64) != 0 ? false : z2, (i3 & 128) != 0 ? false : z3, (i3 & 256) != 0 ? -1 : j4);
    }

    public static final void a(Class<? extends Worker> cls, long j2, long j3, String[] strArr, NetworkType networkType, boolean z, boolean z2, boolean z3, long j4) {
        j.b(cls, "workerClass");
        j.b(networkType, "networkType");
        g.a aVar = new g.a(PeriodicStartWorker.class);
        aVar.a(j2, TimeUnit.MINUTES);
        j.a((Object) aVar, "OneTimeWorkRequest\n     …Minute, TimeUnit.MINUTES)");
        d.a aVar2 = new d.a();
        aVar2.a("className", cls.getName());
        aVar2.a("intervalInHour", j3);
        aVar2.a("networkConstraint", networkType.ordinal());
        aVar2.a("batteryNotLowConstraint", z);
        aVar2.a("storageNotLowConstraint", z2);
        aVar2.a("deviceIdleConstraint", z3);
        aVar2.a("triggerContentMaxDelay", j4);
        j.a((Object) aVar2, "Data.Builder()\n        .…rContentMaxDelayInMinute)");
        if (strArr != null) {
            aVar2.a("tags", strArr);
            for (String a2 : strArr) {
                aVar.a(a2);
            }
        }
        m.a().a(((g.a) aVar.a(aVar2.a())).a());
    }

    public static final void a(String str) {
        j.b(str, "tag");
        m.a().a(str);
    }
}
