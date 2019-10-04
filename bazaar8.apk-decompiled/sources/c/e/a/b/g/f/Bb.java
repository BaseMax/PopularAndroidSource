package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zzdp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

public final class Bb extends Fa<String> implements Cb, RandomAccess {

    /* renamed from: b  reason: collision with root package name */
    public static final Bb f10141b;

    /* renamed from: c  reason: collision with root package name */
    public static final Cb f10142c = f10141b;

    /* renamed from: d  reason: collision with root package name */
    public final List<Object> f10143d;

    static {
        Bb bb = new Bb();
        f10141b = bb;
        bb.t();
    }

    public Bb() {
        this(10);
    }

    public final void a(zzdp zzdp) {
        a();
        this.f10143d.add(zzdp);
        this.modCount++;
    }

    public final /* synthetic */ void add(int i2, Object obj) {
        a();
        this.f10143d.add(i2, (String) obj);
        this.modCount++;
    }

    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    public final /* synthetic */ C0883vb c(int i2) {
        if (i2 >= size()) {
            ArrayList arrayList = new ArrayList(i2);
            arrayList.addAll(this.f10143d);
            return new Bb((ArrayList<Object>) arrayList);
        }
        throw new IllegalArgumentException();
    }

    public final void clear() {
        a();
        this.f10143d.clear();
        this.modCount++;
    }

    public final Object d(int i2) {
        return this.f10143d.get(i2);
    }

    public final /* synthetic */ Object get(int i2) {
        Object obj = this.f10143d.get(i2);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzdp) {
            zzdp zzdp = (zzdp) obj;
            String a2 = zzdp.a();
            if (zzdp.b()) {
                this.f10143d.set(i2, a2);
            }
            return a2;
        }
        byte[] bArr = (byte[]) obj;
        String c2 = C0864qb.c(bArr);
        if (C0864qb.b(bArr)) {
            this.f10143d.set(i2, c2);
        }
        return c2;
    }

    public final /* synthetic */ Object remove(int i2) {
        a();
        Object remove = this.f10143d.remove(i2);
        this.modCount++;
        return a(remove);
    }

    public final /* synthetic */ Object set(int i2, Object obj) {
        a();
        return a(this.f10143d.set(i2, (String) obj));
    }

    public final int size() {
        return this.f10143d.size();
    }

    public final Cb u() {
        return s() ? new Cc(this) : this;
    }

    public final List<?> v() {
        return Collections.unmodifiableList(this.f10143d);
    }

    public Bb(int i2) {
        this((ArrayList<Object>) new ArrayList(i2));
    }

    public final boolean addAll(int i2, Collection<? extends String> collection) {
        a();
        if (collection instanceof Cb) {
            collection = ((Cb) collection).v();
        }
        boolean addAll = this.f10143d.addAll(i2, collection);
        this.modCount++;
        return addAll;
    }

    public Bb(ArrayList<Object> arrayList) {
        this.f10143d = arrayList;
    }

    public static String a(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzdp) {
            return ((zzdp) obj).a();
        }
        return C0864qb.c((byte[]) obj);
    }
}
