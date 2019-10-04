package c.b.a.i;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: LruCache */
public class f<T, Y> {

    /* renamed from: a  reason: collision with root package name */
    public final Map<T, Y> f4432a = new LinkedHashMap(100, 0.75f, true);

    /* renamed from: b  reason: collision with root package name */
    public final long f4433b;

    /* renamed from: c  reason: collision with root package name */
    public long f4434c;

    /* renamed from: d  reason: collision with root package name */
    public long f4435d;

    public f(long j2) {
        this.f4433b = j2;
        this.f4434c = j2;
    }

    public synchronized void a(float f2) {
        if (f2 >= 0.0f) {
            this.f4434c = (long) Math.round(((float) this.f4433b) * f2);
            b();
        } else {
            throw new IllegalArgumentException("Multiplier must be >= 0");
        }
    }

    public void a(T t, Y y) {
    }

    public int b(Y y) {
        return 1;
    }

    public synchronized Y b(T t, Y y) {
        long b2 = (long) b(y);
        if (b2 >= this.f4434c) {
            a(t, y);
            return null;
        }
        if (y != null) {
            this.f4435d += b2;
        }
        Y put = this.f4432a.put(t, y);
        if (put != null) {
            this.f4435d -= (long) b(put);
            if (!put.equals(y)) {
                a(t, put);
            }
        }
        b();
        return put;
    }

    public synchronized long c() {
        return this.f4434c;
    }

    public synchronized Y c(T t) {
        Y remove;
        remove = this.f4432a.remove(t);
        if (remove != null) {
            this.f4435d -= (long) b(remove);
        }
        return remove;
    }

    public synchronized Y a(T t) {
        return this.f4432a.get(t);
    }

    public void a() {
        a(0);
    }

    public synchronized void a(long j2) {
        while (this.f4435d > j2) {
            Iterator<Map.Entry<T, Y>> it = this.f4432a.entrySet().iterator();
            Map.Entry next = it.next();
            Object value = next.getValue();
            this.f4435d -= (long) b(value);
            Object key = next.getKey();
            it.remove();
            a(key, value);
        }
    }

    public final void b() {
        a(this.f4434c);
    }
}
