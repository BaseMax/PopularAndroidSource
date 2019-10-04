package c.e.a.b.g.f;

import java.util.Iterator;
import java.util.Map;

/* renamed from: c.e.a.b.g.f.oc  reason: case insensitive filesystem */
public final class C0857oc extends C0880uc {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C0845lc f10495b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0857oc(C0845lc lcVar) {
        super(lcVar, null);
        this.f10495b = lcVar;
    }

    public final Iterator<Map.Entry<K, V>> iterator() {
        return new C0853nc(this.f10495b, null);
    }

    public /* synthetic */ C0857oc(C0845lc lcVar, C0849mc mcVar) {
        this(lcVar);
    }
}
