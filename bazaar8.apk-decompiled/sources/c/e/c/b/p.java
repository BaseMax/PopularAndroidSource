package c.e.c.b;

import com.google.firebase.components.DependencyCycleException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: com.google.firebase:firebase-common@@16.1.0 */
public class p {

    /* compiled from: com.google.firebase:firebase-common@@16.1.0 */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public final e<?> f11548a;

        /* renamed from: b  reason: collision with root package name */
        public final Set<a> f11549b = new HashSet();

        /* renamed from: c  reason: collision with root package name */
        public final Set<a> f11550c = new HashSet();

        public a(e<?> eVar) {
            this.f11548a = eVar;
        }

        public void a(a aVar) {
            this.f11549b.add(aVar);
        }

        public void b(a aVar) {
            this.f11550c.add(aVar);
        }

        public void c(a aVar) {
            this.f11550c.remove(aVar);
        }

        public boolean d() {
            return this.f11550c.isEmpty();
        }

        public e<?> a() {
            return this.f11548a;
        }

        public Set<a> b() {
            return this.f11549b;
        }

        public boolean c() {
            return this.f11549b.isEmpty();
        }
    }

    /* compiled from: com.google.firebase:firebase-common@@16.1.0 */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        public final Class<?> f11551a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f11552b;

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (!bVar.f11551a.equals(this.f11551a) || bVar.f11552b != this.f11552b) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return ((this.f11551a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f11552b).hashCode();
        }

        public b(Class<?> cls, boolean z) {
            this.f11551a = cls;
            this.f11552b = z;
        }
    }

    public static void a(List<e<?>> list) {
        Set<a> b2 = b(list);
        Set<a> a2 = a(b2);
        int i2 = 0;
        while (!a2.isEmpty()) {
            a next = a2.iterator().next();
            a2.remove(next);
            i2++;
            for (a next2 : next.b()) {
                next2.c(next);
                if (next2.d()) {
                    a2.add(next2);
                }
            }
        }
        if (i2 != list.size()) {
            ArrayList arrayList = new ArrayList();
            for (a next3 : b2) {
                if (!next3.d() && !next3.c()) {
                    arrayList.add(next3.a());
                }
            }
            throw new DependencyCycleException(arrayList);
        }
    }

    public static Set<a> b(List<e<?>> list) {
        HashMap hashMap = new HashMap(list.size());
        for (e next : list) {
            a aVar = new a(next);
            Iterator it = next.c().iterator();
            while (true) {
                if (it.hasNext()) {
                    Class cls = (Class) it.next();
                    b bVar = new b(cls, !next.g());
                    if (!hashMap.containsKey(bVar)) {
                        hashMap.put(bVar, new HashSet());
                    }
                    Set set = (Set) hashMap.get(bVar);
                    if (set.isEmpty() || bVar.f11552b) {
                        set.add(aVar);
                    } else {
                        throw new IllegalArgumentException(String.format("Multiple components provide %s.", new Object[]{cls}));
                    }
                }
            }
        }
        for (Set<a> it2 : hashMap.values()) {
            for (a aVar2 : it2) {
                for (q next2 : aVar2.a().a()) {
                    if (next2.b()) {
                        Set<a> set2 = (Set) hashMap.get(new b(next2.a(), next2.d()));
                        if (set2 != null) {
                            for (a aVar3 : set2) {
                                aVar2.a(aVar3);
                                aVar3.b(aVar2);
                            }
                        }
                    }
                }
            }
        }
        HashSet hashSet = new HashSet();
        for (Set addAll : hashMap.values()) {
            hashSet.addAll(addAll);
        }
        return hashSet;
    }

    public static Set<a> a(Set<a> set) {
        HashSet hashSet = new HashSet();
        for (a next : set) {
            if (next.d()) {
                hashSet.add(next);
            }
        }
        return hashSet;
    }
}
