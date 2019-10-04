package com.google.gson.internal;

import c.e.d.a.d;
import c.e.d.a.e;
import c.e.d.b;
import c.e.d.c;
import c.e.d.c.a;
import c.e.d.j;
import c.e.d.x;
import c.e.d.y;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.List;

public final class Excluder implements y, Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public static final Excluder f13528a = new Excluder();

    /* renamed from: b  reason: collision with root package name */
    public double f13529b = -1.0d;

    /* renamed from: c  reason: collision with root package name */
    public int f13530c = 136;

    /* renamed from: d  reason: collision with root package name */
    public boolean f13531d = true;

    /* renamed from: e  reason: collision with root package name */
    public boolean f13532e;

    /* renamed from: f  reason: collision with root package name */
    public List<b> f13533f = Collections.emptyList();

    /* renamed from: g  reason: collision with root package name */
    public List<b> f13534g = Collections.emptyList();

    public <T> x<T> a(j jVar, a<T> aVar) {
        Class<? super T> a2 = aVar.a();
        boolean a3 = a((Class<?>) a2);
        boolean z = a3 || b(a2, true);
        boolean z2 = a3 || b(a2, false);
        if (!z && !z2) {
            return null;
        }
        q qVar = new q(this, z2, z, jVar, aVar);
        return qVar;
    }

    public final boolean b(Class<?> cls, boolean z) {
        for (b a2 : z ? this.f13533f : this.f13534g) {
            if (a2.a(cls)) {
                return true;
            }
        }
        return false;
    }

    public final boolean c(Class<?> cls) {
        return cls.isMemberClass() && !d(cls);
    }

    public final boolean d(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    public Excluder clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public final boolean b(Class<?> cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    public boolean a(Field field, boolean z) {
        if ((this.f13530c & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.f13529b != -1.0d && !a((d) field.getAnnotation(d.class), (e) field.getAnnotation(e.class))) || field.isSynthetic()) {
            return true;
        }
        if (this.f13532e) {
            c.e.d.a.a aVar = (c.e.d.a.a) field.getAnnotation(c.e.d.a.a.class);
            if (aVar == null || (!z ? !aVar.deserialize() : !aVar.serialize())) {
                return true;
            }
        }
        if ((!this.f13531d && c(field.getType())) || b(field.getType())) {
            return true;
        }
        List<b> list = z ? this.f13533f : this.f13534g;
        if (!list.isEmpty()) {
            c cVar = new c(field);
            for (b a2 : list) {
                if (a2.a(cVar)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean a(Class<?> cls) {
        if (this.f13529b != -1.0d && !a((d) cls.getAnnotation(d.class), (e) cls.getAnnotation(e.class))) {
            return true;
        }
        if ((this.f13531d || !c(cls)) && !b(cls)) {
            return false;
        }
        return true;
    }

    public boolean a(Class<?> cls, boolean z) {
        return a(cls) || b(cls, z);
    }

    public final boolean a(d dVar, e eVar) {
        return a(dVar) && a(eVar);
    }

    public final boolean a(d dVar) {
        return dVar == null || dVar.value() <= this.f13529b;
    }

    public final boolean a(e eVar) {
        return eVar == null || eVar.value() > this.f13529b;
    }
}
