package dagger.android;

import d.a.b;
import d.b.h;
import g.a.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

public final class DispatchingAndroidInjector<T> implements b<T> {

    /* renamed from: a  reason: collision with root package name */
    public final Map<Class<? extends T>, a<b.C0138b<? extends T>>> f13662a;

    public static final class InvalidInjectorBindingException extends RuntimeException {
        public InvalidInjectorBindingException(String str, ClassCastException classCastException) {
            super(str, classCastException);
        }
    }

    public DispatchingAndroidInjector(Map<Class<? extends T>, a<b.C0138b<? extends T>>> map) {
        this.f13662a = map;
    }

    public void a(T t) {
        if (!c(t)) {
            throw new IllegalArgumentException(b(t));
        }
    }

    public final String b(T t) {
        ArrayList arrayList = new ArrayList();
        for (Class next : this.f13662a.keySet()) {
            if (next.isInstance(t)) {
                arrayList.add(next.getCanonicalName());
            }
        }
        Collections.sort(arrayList);
        if (arrayList.isEmpty()) {
            return String.format("No injector factory bound for Class<%s>", new Object[]{t.getClass().getCanonicalName()});
        }
        return String.format("No injector factory bound for Class<%1$s>. Injector factories were bound for supertypes of %1$s: %2$s. Did you mean to bind an injector factory for the subtype?", new Object[]{t.getClass().getCanonicalName(), arrayList});
    }

    public boolean c(T t) {
        a aVar = this.f13662a.get(t.getClass());
        if (aVar == null) {
            return false;
        }
        b.C0138b bVar = (b.C0138b) aVar.get();
        try {
            b a2 = bVar.a(t);
            h.a(a2, "%s.create(I) should not return null.", bVar.getClass());
            a2.a(t);
            return true;
        } catch (ClassCastException e2) {
            throw new InvalidInjectorBindingException(String.format("%s does not implement AndroidInjector.Factory<%s>", new Object[]{bVar.getClass().getCanonicalName(), t.getClass().getCanonicalName()}), e2);
        }
    }
}
