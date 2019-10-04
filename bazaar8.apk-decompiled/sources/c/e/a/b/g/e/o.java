package c.e.a.b.g.e;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

public final class o {

    /* renamed from: a  reason: collision with root package name */
    public final ConcurrentHashMap<n, List<Throwable>> f10122a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b  reason: collision with root package name */
    public final ReferenceQueue<Throwable> f10123b = new ReferenceQueue<>();

    public final List<Throwable> a(Throwable th, boolean z) {
        Reference<? extends Throwable> poll = this.f10123b.poll();
        while (poll != null) {
            this.f10122a.remove(poll);
            poll = this.f10123b.poll();
        }
        List<Throwable> list = this.f10122a.get(new n(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f10122a.putIfAbsent(new n(th, this.f10123b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}
