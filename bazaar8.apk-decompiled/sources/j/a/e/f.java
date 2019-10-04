package j.a.e;

import j.a.b;
import java.io.IOException;

/* compiled from: Http2Connection */
class f extends b {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f15467b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ long f15468c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ k f15469d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public f(k kVar, String str, Object[] objArr, int i2, long j2) {
        super(str, objArr);
        this.f15469d = kVar;
        this.f15467b = i2;
        this.f15468c = j2;
    }

    public void b() {
        try {
            this.f15469d.s.b(this.f15467b, this.f15468c);
        } catch (IOException unused) {
            this.f15469d.t();
        }
    }
}
