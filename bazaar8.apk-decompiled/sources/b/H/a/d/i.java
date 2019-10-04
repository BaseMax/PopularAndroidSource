package b.H.a.d;

import androidx.work.WorkInfo;
import b.H.a.c.o;
import b.H.a.m;
import java.util.List;

/* compiled from: StatusRunnable */
class i extends j<List<WorkInfo>> {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ m f1554b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f1555c;

    public i(m mVar, String str) {
        this.f1554b = mVar;
        this.f1555c = str;
    }

    public List<WorkInfo> b() {
        return o.f1465b.apply(this.f1554b.g().v().i(this.f1555c));
    }
}
