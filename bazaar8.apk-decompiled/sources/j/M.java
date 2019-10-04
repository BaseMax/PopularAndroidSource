package j;

import k.h;
import okio.ByteString;

/* compiled from: RequestBody */
class M extends O {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ F f15204a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ByteString f15205b;

    public M(F f2, ByteString byteString) {
        this.f15204a = f2;
        this.f15205b = byteString;
    }

    public long a() {
        return (long) this.f15205b.k();
    }

    public F b() {
        return this.f15204a;
    }

    public void a(h hVar) {
        hVar.a(this.f15205b);
    }
}
