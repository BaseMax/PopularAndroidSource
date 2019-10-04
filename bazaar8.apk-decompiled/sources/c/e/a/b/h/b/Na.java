package c.e.a.b.h.b;

import com.google.android.gms.measurement.internal.zzr;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public final class Na implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AtomicReference f10694a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f10695b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f10696c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ String f10697d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Fa f10698e;

    public Na(Fa fa, AtomicReference atomicReference, String str, String str2, String str3) {
        this.f10698e = fa;
        this.f10694a = atomicReference;
        this.f10695b = str;
        this.f10696c = str2;
        this.f10697d = str3;
    }

    public final void run() {
        this.f10698e.f11077a.D().a((AtomicReference<List<zzr>>) this.f10694a, this.f10695b, this.f10696c, this.f10697d);
    }
}
