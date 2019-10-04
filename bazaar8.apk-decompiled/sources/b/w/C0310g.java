package b.w;

import android.os.Bundle;

/* renamed from: b.w.g  reason: case insensitive filesystem */
/* compiled from: NavArgument */
public final class C0310g {

    /* renamed from: a  reason: collision with root package name */
    public final I f3279a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f3280b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f3281c;

    /* renamed from: d  reason: collision with root package name */
    public final Object f3282d;

    /* renamed from: b.w.g$a */
    /* compiled from: NavArgument */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public I<?> f3283a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f3284b = false;

        /* renamed from: c  reason: collision with root package name */
        public Object f3285c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f3286d = false;

        public a a(I<?> i2) {
            this.f3283a = i2;
            return this;
        }

        public a a(boolean z) {
            this.f3284b = z;
            return this;
        }

        public a a(Object obj) {
            this.f3285c = obj;
            this.f3286d = true;
            return this;
        }

        public C0310g a() {
            if (this.f3283a == null) {
                this.f3283a = I.a(this.f3285c);
            }
            return new C0310g(this.f3283a, this.f3284b, this.f3285c, this.f3286d);
        }
    }

    public C0310g(I<?> i2, boolean z, Object obj, boolean z2) {
        if (!i2.b() && z) {
            throw new IllegalArgumentException(i2.a() + " does not allow nullable values");
        } else if (z || !z2 || obj != null) {
            this.f3279a = i2;
            this.f3280b = z;
            this.f3282d = obj;
            this.f3281c = z2;
        } else {
            throw new IllegalArgumentException("Argument with type " + i2.a() + " has null value but is not nullable.");
        }
    }

    public I<?> a() {
        return this.f3279a;
    }

    public boolean b() {
        return this.f3281c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C0310g.class != obj.getClass()) {
            return false;
        }
        C0310g gVar = (C0310g) obj;
        if (this.f3280b != gVar.f3280b || this.f3281c != gVar.f3281c || !this.f3279a.equals(gVar.f3279a)) {
            return false;
        }
        Object obj2 = this.f3282d;
        if (obj2 != null) {
            z = obj2.equals(gVar.f3282d);
        } else if (gVar.f3282d != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = ((((this.f3279a.hashCode() * 31) + (this.f3280b ? 1 : 0)) * 31) + (this.f3281c ? 1 : 0)) * 31;
        Object obj = this.f3282d;
        return hashCode + (obj != null ? obj.hashCode() : 0);
    }

    public void a(String str, Bundle bundle) {
        if (this.f3281c) {
            this.f3279a.a(bundle, str, this.f3282d);
        }
    }

    public boolean b(String str, Bundle bundle) {
        if (!this.f3280b && bundle.containsKey(str) && bundle.get(str) == null) {
            return false;
        }
        try {
            this.f3279a.a(bundle, str);
            return true;
        } catch (ClassCastException unused) {
            return false;
        }
    }
}
