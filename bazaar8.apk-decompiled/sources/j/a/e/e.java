package j.a.e;

import j.a.b;
import java.io.IOException;
import okhttp3.internal.http2.ErrorCode;

/* compiled from: Http2Connection */
class e extends b {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f15464b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ErrorCode f15465c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ k f15466d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public e(k kVar, String str, Object[] objArr, int i2, ErrorCode errorCode) {
        super(str, objArr);
        this.f15466d = kVar;
        this.f15464b = i2;
        this.f15465c = errorCode;
    }

    public void b() {
        try {
            this.f15466d.b(this.f15464b, this.f15465c);
        } catch (IOException unused) {
            this.f15466d.t();
        }
    }
}
