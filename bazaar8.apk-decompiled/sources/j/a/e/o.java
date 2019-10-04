package j.a.e;

import j.a.b;
import j.a.e.k;
import java.io.IOException;

/* compiled from: Http2Connection */
class o extends b {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ v f15515b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ k.d f15516c;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public o(k.d dVar, String str, Object[] objArr, v vVar) {
        super(str, objArr);
        this.f15516c = dVar;
        this.f15515b = vVar;
    }

    public void b() {
        try {
            k.this.s.a(this.f15515b);
        } catch (IOException unused) {
            k.this.t();
        }
    }
}
