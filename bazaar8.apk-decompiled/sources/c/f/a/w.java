package c.f.a;

import android.util.LruCache;
import c.f.a.x;

/* compiled from: LruCache */
class w extends LruCache<String, x.a> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ x f12016a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public w(x xVar, int i2) {
        super(i2);
        this.f12016a = xVar;
    }

    /* renamed from: a */
    public int sizeOf(String str, x.a aVar) {
        return aVar.f12019b;
    }
}
