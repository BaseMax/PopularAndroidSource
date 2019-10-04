package com.bumptech.glide.g;

public final class i {

    /* renamed from: a  reason: collision with root package name */
    private Class<?> f2081a;

    /* renamed from: b  reason: collision with root package name */
    private Class<?> f2082b;
    private Class<?> c;

    public i() {
    }

    public i(Class<?> cls, Class<?> cls2) {
        set(cls, cls2);
    }

    public i(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        set(cls, cls2, cls3);
    }

    public final void set(Class<?> cls, Class<?> cls2) {
        set(cls, cls2, null);
    }

    public final void set(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        this.f2081a = cls;
        this.f2082b = cls2;
        this.c = cls3;
    }

    public final String toString() {
        return "MultiClassKey{first=" + this.f2081a + ", second=" + this.f2082b + '}';
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.f2081a.equals(iVar.f2081a) && this.f2082b.equals(iVar.f2082b) && k.bothNullOrEqual(this.c, iVar.c);
    }

    public final int hashCode() {
        int hashCode = ((this.f2081a.hashCode() * 31) + this.f2082b.hashCode()) * 31;
        Class<?> cls = this.c;
        return hashCode + (cls != null ? cls.hashCode() : 0);
    }
}
