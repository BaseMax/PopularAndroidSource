package c.e.c.b;

import c.e.a.b.d.d.r;
import c.e.c.c.c;
import c.e.c.c.d;
import c.e.c.e.a;
import com.google.firebase.components.MissingDependencyException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

/* compiled from: com.google.firebase:firebase-common@@16.1.0 */
public class n extends a {

    /* renamed from: a  reason: collision with root package name */
    public static final a<Set<Object>> f11543a = m.a();

    /* renamed from: b  reason: collision with root package name */
    public final Map<e<?>, t<?>> f11544b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public final Map<Class<?>, t<?>> f11545c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    public final Map<Class<?>, t<Set<?>>> f11546d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    public final s f11547e;

    public n(Executor executor, Iterable<j> iterable, e<?>... eVarArr) {
        this.f11547e = new s(executor);
        ArrayList<e> arrayList = new ArrayList<>();
        arrayList.add(e.a(this.f11547e, s.class, d.class, c.class));
        for (j components : iterable) {
            arrayList.addAll(components.getComponents());
        }
        Collections.addAll(arrayList, eVarArr);
        p.a((List<e<?>>) arrayList);
        for (e eVar : arrayList) {
            this.f11544b.put(eVar, new t(k.a(this, eVar)));
        }
        a();
        b();
    }

    public final void b() {
        HashMap hashMap = new HashMap();
        for (Map.Entry next : this.f11544b.entrySet()) {
            e eVar = (e) next.getKey();
            if (!eVar.g()) {
                t tVar = (t) next.getValue();
                for (Class cls : eVar.c()) {
                    if (!hashMap.containsKey(cls)) {
                        hashMap.put(cls, new HashSet());
                    }
                    ((Set) hashMap.get(cls)).add(tVar);
                }
            }
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            this.f11546d.put((Class) entry.getKey(), new t(l.a((Set) entry.getValue())));
        }
    }

    public <T> a<Set<T>> c(Class<T> cls) {
        t tVar = this.f11546d.get(cls);
        if (tVar != null) {
            return tVar;
        }
        return f11543a;
    }

    public final void a() {
        for (Map.Entry next : this.f11544b.entrySet()) {
            e eVar = (e) next.getKey();
            if (eVar.g()) {
                t tVar = (t) next.getValue();
                for (Class put : eVar.c()) {
                    this.f11545c.put(put, tVar);
                }
            }
        }
        c();
    }

    public final void c() {
        for (e next : this.f11544b.keySet()) {
            Iterator<q> it = next.a().iterator();
            while (true) {
                if (it.hasNext()) {
                    q next2 = it.next();
                    if (next2.c() && !this.f11545c.containsKey(next2.a())) {
                        throw new MissingDependencyException(String.format("Unsatisfied dependency for component %s: %s", new Object[]{next, next2.a()}));
                    }
                }
            }
        }
    }

    public static /* synthetic */ Set a(Set set) {
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            hashSet.add(((t) it.next()).get());
        }
        return Collections.unmodifiableSet(hashSet);
    }

    public void a(boolean z) {
        for (Map.Entry next : this.f11544b.entrySet()) {
            e eVar = (e) next.getKey();
            t tVar = (t) next.getValue();
            if (eVar.e() || (eVar.f() && z)) {
                tVar.get();
            }
        }
        this.f11547e.a();
    }

    public <T> a<T> b(Class<T> cls) {
        r.a(cls, (Object) "Null interface requested.");
        return this.f11545c.get(cls);
    }
}
