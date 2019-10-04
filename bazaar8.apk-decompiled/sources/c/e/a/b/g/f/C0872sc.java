package c.e.a.b.g.f;

import java.util.Map;

/* renamed from: c.e.a.b.g.f.sc  reason: case insensitive filesystem */
public final class C0872sc implements Comparable<C0872sc>, Map.Entry<K, V> {

    /* renamed from: a  reason: collision with root package name */
    public final K f10524a;

    /* renamed from: b  reason: collision with root package name */
    public V f10525b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C0845lc f10526c;

    public C0872sc(C0845lc lcVar, Map.Entry<K, V> entry) {
        this(lcVar, (Comparable) entry.getKey(), entry.getValue());
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public final /* synthetic */ int compareTo(Object obj) {
        return ((Comparable) getKey()).compareTo((Comparable) ((C0872sc) obj).getKey());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return a(this.f10524a, entry.getKey()) && a(this.f10525b, entry.getValue());
    }

    public final /* synthetic */ Object getKey() {
        return this.f10524a;
    }

    public final V getValue() {
        return this.f10525b;
    }

    public final int hashCode() {
        K k2 = this.f10524a;
        int i2 = 0;
        int hashCode = k2 == null ? 0 : k2.hashCode();
        V v = this.f10525b;
        if (v != null) {
            i2 = v.hashCode();
        }
        return hashCode ^ i2;
    }

    public final V setValue(V v) {
        this.f10526c.f();
        V v2 = this.f10525b;
        this.f10525b = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f10524a);
        String valueOf2 = String.valueOf(this.f10525b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }

    public C0872sc(C0845lc lcVar, K k2, V v) {
        this.f10526c = lcVar;
        this.f10524a = k2;
        this.f10525b = v;
    }
}
