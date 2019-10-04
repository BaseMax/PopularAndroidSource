package j.a.e;

import j.a.b;
import j.a.e.k;
import j.a.g.f;
import java.io.IOException;
import okhttp3.internal.http2.ErrorCode;

/* compiled from: Http2Connection */
class m extends b {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ q f15512b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ k.d f15513c;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public m(k.d dVar, String str, Object[] objArr, q qVar) {
        super(str, objArr);
        this.f15513c = dVar;
        this.f15512b = qVar;
    }

    public void b() {
        try {
            k.this.f15487c.a(this.f15512b);
        } catch (IOException e2) {
            f b2 = f.b();
            b2.a(4, "Http2Connection.Listener failure for " + k.this.f15489e, (Throwable) e2);
            try {
                this.f15512b.a(ErrorCode.PROTOCOL_ERROR);
            } catch (IOException unused) {
            }
        }
    }
}
