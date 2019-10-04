package j.a.e;

import j.a.b;
import okhttp3.internal.http2.ErrorCode;

/* compiled from: Http2Connection */
class j extends b {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f15482b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ErrorCode f15483c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ k f15484d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public j(k kVar, String str, Object[] objArr, int i2, ErrorCode errorCode) {
        super(str, objArr);
        this.f15484d = kVar;
        this.f15482b = i2;
        this.f15483c = errorCode;
    }

    public void b() {
        this.f15484d.f15495k.a(this.f15482b, this.f15483c);
        synchronized (this.f15484d) {
            this.f15484d.u.remove(Integer.valueOf(this.f15482b));
        }
    }
}
