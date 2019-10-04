package j.a.b;

import j.T;
import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: RouteDatabase */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final Set<T> f15327a = new LinkedHashSet();

    public synchronized void a(T t) {
        this.f15327a.remove(t);
    }

    public synchronized void b(T t) {
        this.f15327a.add(t);
    }

    public synchronized boolean c(T t) {
        return this.f15327a.contains(t);
    }
}
