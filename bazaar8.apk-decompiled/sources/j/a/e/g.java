package j.a.e;

import j.a.b;
import java.io.IOException;
import java.util.List;
import okhttp3.internal.http2.ErrorCode;

/* compiled from: Http2Connection */
class g extends b {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f15470b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ List f15471c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ k f15472d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public g(k kVar, String str, Object[] objArr, int i2, List list) {
        super(str, objArr);
        this.f15472d = kVar;
        this.f15470b = i2;
        this.f15471c = list;
    }

    public void b() {
        if (this.f15472d.f15495k.a(this.f15470b, (List<a>) this.f15471c)) {
            try {
                this.f15472d.s.a(this.f15470b, ErrorCode.CANCEL);
                synchronized (this.f15472d) {
                    this.f15472d.u.remove(Integer.valueOf(this.f15470b));
                }
            } catch (IOException unused) {
            }
        }
    }
}
