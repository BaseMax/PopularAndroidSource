package j.a.e;

import j.a.b;
import java.io.IOException;
import k.g;
import okhttp3.internal.http2.ErrorCode;

/* compiled from: Http2Connection */
class i extends b {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f15477b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ g f15478c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f15479d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ boolean f15480e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ k f15481f;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public i(k kVar, String str, Object[] objArr, int i2, g gVar, int i3, boolean z) {
        super(str, objArr);
        this.f15481f = kVar;
        this.f15477b = i2;
        this.f15478c = gVar;
        this.f15479d = i3;
        this.f15480e = z;
    }

    public void b() {
        try {
            boolean a2 = this.f15481f.f15495k.a(this.f15477b, this.f15478c, this.f15479d, this.f15480e);
            if (a2) {
                this.f15481f.s.a(this.f15477b, ErrorCode.CANCEL);
            }
            if (a2 || this.f15480e) {
                synchronized (this.f15481f) {
                    this.f15481f.u.remove(Integer.valueOf(this.f15477b));
                }
            }
        } catch (IOException unused) {
        }
    }
}
