package b.w;

import android.os.Bundle;
import android.os.Parcelable;
import java.io.Serializable;

/* compiled from: NavType */
public abstract class I<T> {

    /* renamed from: a  reason: collision with root package name */
    public static final I<Integer> f3244a = new z(false);

    /* renamed from: b  reason: collision with root package name */
    public static final I<Integer> f3245b = new A(false);

    /* renamed from: c  reason: collision with root package name */
    public static final I<int[]> f3246c = new B(true);

    /* renamed from: d  reason: collision with root package name */
    public static final I<Long> f3247d = new C(false);

    /* renamed from: e  reason: collision with root package name */
    public static final I<long[]> f3248e = new D(true);

    /* renamed from: f  reason: collision with root package name */
    public static final I<Float> f3249f = new E(false);

    /* renamed from: g  reason: collision with root package name */
    public static final I<float[]> f3250g = new F(true);

    /* renamed from: h  reason: collision with root package name */
    public static final I<Boolean> f3251h = new G(false);

    /* renamed from: i  reason: collision with root package name */
    public static final I<boolean[]> f3252i = new H(true);

    /* renamed from: j  reason: collision with root package name */
    public static final I<String> f3253j = new x(true);

    /* renamed from: k  reason: collision with root package name */
    public static final I<String[]> f3254k = new y(true);

    /* renamed from: l  reason: collision with root package name */
    public final boolean f3255l;

    /* compiled from: NavType */
    public static final class a<D extends Enum> extends e<D> {
        public final Class<D> n;

        public a(Class<D> cls) {
            super(false, cls);
            if (cls.isEnum()) {
                this.n = cls;
                return;
            }
            throw new IllegalArgumentException(cls + " is not an Enum type.");
        }

        public String a() {
            return this.n.getName();
        }

        public D b(String str) {
            for (D d2 : (Enum[]) this.n.getEnumConstants()) {
                if (d2.name().equals(str)) {
                    return d2;
                }
            }
            throw new IllegalArgumentException("Enum value " + str + " not found for type " + this.n.getName() + ".");
        }
    }

    /* compiled from: NavType */
    public static final class b<D extends Parcelable> extends I<D[]> {
        public final Class<D[]> m;

        public b(Class<D> cls) {
            super(true);
            if (Parcelable.class.isAssignableFrom(cls)) {
                try {
                    this.m = Class.forName("[L" + cls.getName() + ";");
                } catch (ClassNotFoundException e2) {
                    throw new RuntimeException(e2);
                }
            } else {
                throw new IllegalArgumentException(cls + " does not implement Parcelable.");
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            return this.m.equals(((b) obj).m);
        }

        public int hashCode() {
            return this.m.hashCode();
        }

        public D[] b(String str) {
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        public void a(Bundle bundle, String str, D[] dArr) {
            this.m.cast(dArr);
            bundle.putParcelableArray(str, dArr);
        }

        public D[] a(Bundle bundle, String str) {
            return (Parcelable[]) bundle.get(str);
        }

        public String a() {
            return this.m.getName();
        }
    }

    /* compiled from: NavType */
    public static final class c<D> extends I<D> {
        public final Class<D> m;

        public c(Class<D> cls) {
            super(true);
            if (Parcelable.class.isAssignableFrom(cls) || Serializable.class.isAssignableFrom(cls)) {
                this.m = cls;
                return;
            }
            throw new IllegalArgumentException(cls + " does not implement Parcelable or Serializable.");
        }

        public void a(Bundle bundle, String str, D d2) {
            this.m.cast(d2);
            if (d2 == null || (d2 instanceof Parcelable)) {
                bundle.putParcelable(str, (Parcelable) d2);
            } else if (d2 instanceof Serializable) {
                bundle.putSerializable(str, (Serializable) d2);
            }
        }

        public D b(String str) {
            throw new UnsupportedOperationException("Parcelables don't support default values.");
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            return this.m.equals(((c) obj).m);
        }

        public int hashCode() {
            return this.m.hashCode();
        }

        public D a(Bundle bundle, String str) {
            return bundle.get(str);
        }

        public String a() {
            return this.m.getName();
        }
    }

    /* compiled from: NavType */
    public static final class d<D extends Serializable> extends I<D[]> {
        public final Class<D[]> m;

        public d(Class<D> cls) {
            super(true);
            if (Serializable.class.isAssignableFrom(cls)) {
                try {
                    this.m = Class.forName("[L" + cls.getName() + ";");
                } catch (ClassNotFoundException e2) {
                    throw new RuntimeException(e2);
                }
            } else {
                throw new IllegalArgumentException(cls + " does not implement Serializable.");
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            return this.m.equals(((d) obj).m);
        }

        public int hashCode() {
            return this.m.hashCode();
        }

        public D[] b(String str) {
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        /* JADX WARNING: type inference failed for: r4v0, types: [D[], java.lang.Object, java.io.Serializable] */
        /* JADX WARNING: Unknown variable types count: 1 */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void a(android.os.Bundle r2, java.lang.String r3, D[] r4) {
            /*
                r1 = this;
                java.lang.Class<D[]> r0 = r1.m
                r0.cast(r4)
                r2.putSerializable(r3, r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: b.w.I.d.a(android.os.Bundle, java.lang.String, java.io.Serializable[]):void");
        }

        public D[] a(Bundle bundle, String str) {
            return (Serializable[]) bundle.get(str);
        }

        public String a() {
            return this.m.getName();
        }
    }

    /* compiled from: NavType */
    public static class e<D extends Serializable> extends I<D> {
        public final Class<D> m;

        public e(Class<D> cls) {
            super(true);
            if (!Serializable.class.isAssignableFrom(cls)) {
                throw new IllegalArgumentException(cls + " does not implement Serializable.");
            } else if (!cls.isEnum()) {
                this.m = cls;
            } else {
                throw new IllegalArgumentException(cls + " is an Enum. You should use EnumType instead.");
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return this.m.equals(((e) obj).m);
        }

        public int hashCode() {
            return this.m.hashCode();
        }

        public D b(String str) {
            throw new UnsupportedOperationException("Serializables don't support default values.");
        }

        public void a(Bundle bundle, String str, D d2) {
            this.m.cast(d2);
            bundle.putSerializable(str, d2);
        }

        public D a(Bundle bundle, String str) {
            return (Serializable) bundle.get(str);
        }

        public String a() {
            return this.m.getName();
        }

        public e(boolean z, Class<D> cls) {
            super(z);
            if (Serializable.class.isAssignableFrom(cls)) {
                this.m = cls;
                return;
            }
            throw new IllegalArgumentException(cls + " does not implement Serializable.");
        }
    }

    public I(boolean z) {
        this.f3255l = z;
    }

    public abstract T a(Bundle bundle, String str);

    public T a(Bundle bundle, String str, String str2) {
        T b2 = b(str2);
        a(bundle, str, b2);
        return b2;
    }

    public abstract String a();

    public abstract void a(Bundle bundle, String str, T t);

    public abstract T b(String str);

    public boolean b() {
        return this.f3255l;
    }

    public String toString() {
        return a();
    }

    public static I<?> a(String str, String str2) {
        String str3;
        if (f3244a.a().equals(str)) {
            return f3244a;
        }
        if (f3246c.a().equals(str)) {
            return f3246c;
        }
        if (f3247d.a().equals(str)) {
            return f3247d;
        }
        if (f3248e.a().equals(str)) {
            return f3248e;
        }
        if (f3251h.a().equals(str)) {
            return f3251h;
        }
        if (f3252i.a().equals(str)) {
            return f3252i;
        }
        if (f3253j.a().equals(str)) {
            return f3253j;
        }
        if (f3254k.a().equals(str)) {
            return f3254k;
        }
        if (f3249f.a().equals(str)) {
            return f3249f;
        }
        if (f3250g.a().equals(str)) {
            return f3250g;
        }
        if (f3245b.a().equals(str)) {
            return f3245b;
        }
        if (str == null || str.isEmpty()) {
            return f3253j;
        }
        try {
            if (!str.startsWith(".") || str2 == null) {
                str3 = str;
            } else {
                str3 = str2 + str;
            }
            if (str.endsWith("[]")) {
                str3 = str3.substring(0, str3.length() - 2);
                Class<?> cls = Class.forName(str3);
                if (Parcelable.class.isAssignableFrom(cls)) {
                    return new b(cls);
                }
                if (Serializable.class.isAssignableFrom(cls)) {
                    return new d(cls);
                }
            } else {
                Class<?> cls2 = Class.forName(str3);
                if (Parcelable.class.isAssignableFrom(cls2)) {
                    return new c(cls2);
                }
                if (Enum.class.isAssignableFrom(cls2)) {
                    return new a(cls2);
                }
                if (Serializable.class.isAssignableFrom(cls2)) {
                    return new e(cls2);
                }
            }
            throw new IllegalArgumentException(str3 + " is not Serializable or Parcelable.");
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException(e2);
        }
    }

    /* JADX WARNING: type inference failed for: r1v6, types: [b.w.I<java.lang.Float>, b.w.I] */
    /* JADX WARNING: type inference failed for: r1v7, types: [b.w.I<java.lang.Long>, b.w.I] */
    /* JADX WARNING: type inference failed for: r1v8, types: [b.w.I, b.w.I<java.lang.Integer>] */
    /* JADX WARNING: Can't wrap try/catch for region: R(3:3|4|5) */
    /* JADX WARNING: Can't wrap try/catch for region: R(3:6|7|8) */
    /* JADX WARNING: Can't wrap try/catch for region: R(3:9|10|11) */
    /* JADX WARNING: Code restructure failed: missing block: B:10:?, code lost:
        f3251h.b(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001f, code lost:
        return f3251h;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0022, code lost:
        return f3253j;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:3:0x0008, code lost:
        r1 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:4:?, code lost:
        f3247d.b(r1);
        r1 = f3247d;
        r1 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:5:0x000f, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:6:0x0010, code lost:
        r1 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:?, code lost:
        f3249f.b(r1);
        r1 = f3249f;
        r1 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0017, code lost:
        return r1;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0008 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:6:0x0010 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0018 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 3 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static b.w.I a(java.lang.String r1) {
        /*
            b.w.I<java.lang.Integer> r0 = f3244a     // Catch:{ IllegalArgumentException -> 0x0008 }
            r0.b(r1)     // Catch:{ IllegalArgumentException -> 0x0008 }
            b.w.I<java.lang.Integer> r1 = f3244a     // Catch:{ IllegalArgumentException -> 0x0008 }
            return r1
        L_0x0008:
            b.w.I<java.lang.Long> r0 = f3247d     // Catch:{ IllegalArgumentException -> 0x0010 }
            r0.b(r1)     // Catch:{ IllegalArgumentException -> 0x0010 }
            b.w.I<java.lang.Long> r1 = f3247d     // Catch:{ IllegalArgumentException -> 0x0010 }
            return r1
        L_0x0010:
            b.w.I<java.lang.Float> r0 = f3249f     // Catch:{ IllegalArgumentException -> 0x0018 }
            r0.b(r1)     // Catch:{ IllegalArgumentException -> 0x0018 }
            b.w.I<java.lang.Float> r1 = f3249f     // Catch:{ IllegalArgumentException -> 0x0018 }
            return r1
        L_0x0018:
            b.w.I<java.lang.Boolean> r0 = f3251h     // Catch:{ IllegalArgumentException -> 0x0020 }
            r0.b(r1)     // Catch:{ IllegalArgumentException -> 0x0020 }
            b.w.I<java.lang.Boolean> r1 = f3251h     // Catch:{ IllegalArgumentException -> 0x0020 }
            return r1
        L_0x0020:
            b.w.I<java.lang.String> r1 = f3253j
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: b.w.I.a(java.lang.String):b.w.I");
    }

    public static I a(Object obj) {
        if (obj instanceof Integer) {
            return f3244a;
        }
        if (obj instanceof int[]) {
            return f3246c;
        }
        if (obj instanceof Long) {
            return f3247d;
        }
        if (obj instanceof long[]) {
            return f3248e;
        }
        if (obj instanceof Float) {
            return f3249f;
        }
        if (obj instanceof float[]) {
            return f3250g;
        }
        if (obj instanceof Boolean) {
            return f3251h;
        }
        if (obj instanceof boolean[]) {
            return f3252i;
        }
        if ((obj instanceof String) || obj == null) {
            return f3253j;
        }
        if (obj instanceof String[]) {
            return f3254k;
        }
        if (obj.getClass().isArray() && Parcelable.class.isAssignableFrom(obj.getClass().getComponentType())) {
            return new b(obj.getClass().getComponentType());
        }
        if (obj.getClass().isArray() && Serializable.class.isAssignableFrom(obj.getClass().getComponentType())) {
            return new d(obj.getClass().getComponentType());
        }
        if (obj instanceof Parcelable) {
            return new c(obj.getClass());
        }
        if (obj instanceof Enum) {
            return new a(obj.getClass());
        }
        if (obj instanceof Serializable) {
            return new e(obj.getClass());
        }
        throw new IllegalArgumentException("Object of type " + obj.getClass().getName() + " is not supported for navigation arguments.");
    }
}
