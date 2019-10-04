package j.a.e;

import j.a.b;
import java.io.IOException;
import java.util.List;
import okhttp3.internal.http2.ErrorCode;

/* compiled from: Http2Connection */
class h extends b {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f15473b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ List f15474c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ boolean f15475d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ k f15476e;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public h(k kVar, String str, Object[] objArr, int i2, List list, boolean z) {
        super(str, objArr);
        this.f15476e = kVar;
        this.f15473b = i2;
        this.f15474c = list;
        this.f15475d = z;
    }

    public void b() {
        boolean a2 = this.f15476e.f15495k.a(this.f15473b, this.f15474c, this.f15475d);
        if (a2) {
            try {
                this.f15476e.s.a(this.f15473b, ErrorCode.CANCEL);
            } catch (IOException unused) {
                return;
            }
        }
        if (a2 || this.f15475d) {
            synchronized (this.f15476e) {
                this.f15476e.u.remove(Integer.valueOf(this.f15473b));
            }
        }
    }
}
