package com.google.android.gms.internal;

import com.google.android.gms.internal.sr;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public final class ss<M extends sr<M>, T> {

    /* renamed from: a  reason: collision with root package name */
    protected final Class<T> f3520a;

    /* renamed from: b  reason: collision with root package name */
    protected final boolean f3521b;
    private int c;
    private ps<?, ?> d;
    public final int tag;

    private ss(Class<T> cls, int i) {
        this(cls, i, (byte) 0);
    }

    private ss(Class<T> cls, int i, byte b2) {
        this.c = 11;
        this.f3520a = cls;
        this.tag = i;
        this.f3521b = false;
        this.d = null;
    }

    private final Object a(so soVar) {
        Class componentType = this.f3521b ? this.f3520a.getComponentType() : this.f3520a;
        try {
            int i = this.c;
            if (i == 10) {
                sx sxVar = (sx) componentType.newInstance();
                soVar.zza(sxVar, this.tag >>> 3);
                return sxVar;
            } else if (i == 11) {
                sx sxVar2 = (sx) componentType.newInstance();
                soVar.zza(sxVar2);
                return sxVar2;
            } else {
                int i2 = this.c;
                StringBuilder sb = new StringBuilder(24);
                sb.append("Unknown type ");
                sb.append(i2);
                throw new IllegalArgumentException(sb.toString());
            }
        } catch (InstantiationException e) {
            String valueOf = String.valueOf(componentType);
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 33);
            sb2.append("Error creating instance of class ");
            sb2.append(valueOf);
            throw new IllegalArgumentException(sb2.toString(), e);
        } catch (IllegalAccessException e2) {
            String valueOf2 = String.valueOf(componentType);
            StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf2).length() + 33);
            sb3.append("Error creating instance of class ");
            sb3.append(valueOf2);
            throw new IllegalArgumentException(sb3.toString(), e2);
        } catch (IOException e3) {
            throw new IllegalArgumentException("Error reading extension field", e3);
        }
    }

    public static <M extends sr<M>, T extends sx> ss<M, T> zza(int i, Class<T> cls, long j) {
        return new ss<>(cls, (int) j);
    }

    /* access modifiers changed from: protected */
    public final int a(Object obj) {
        int i = this.tag >>> 3;
        int i2 = this.c;
        if (i2 == 10) {
            return (sp.zzlg(i) << 1) + ((sx) obj).zzho();
        }
        if (i2 == 11) {
            return sp.zzb(i, (sx) obj);
        }
        StringBuilder sb = new StringBuilder(24);
        sb.append("Unknown type ");
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }

    /* access modifiers changed from: package-private */
    public final T a(List<sz> list) {
        if (list == null) {
            return null;
        }
        if (this.f3521b) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                sz szVar = list.get(i);
                if (szVar.f3530b.length != 0) {
                    arrayList.add(a(so.zzbe(szVar.f3530b)));
                }
            }
            int size = arrayList.size();
            if (size == 0) {
                return null;
            }
            Class<T> cls = this.f3520a;
            T cast = cls.cast(Array.newInstance(cls.getComponentType(), size));
            for (int i2 = 0; i2 < size; i2++) {
                Array.set(cast, i2, arrayList.get(i2));
            }
            return cast;
        } else if (list.isEmpty()) {
            return null;
        } else {
            return this.f3520a.cast(a(so.zzbe(list.get(list.size() - 1).f3530b)));
        }
    }

    /* access modifiers changed from: protected */
    public final void a(Object obj, sp spVar) {
        try {
            spVar.zzmi(this.tag);
            int i = this.c;
            if (i == 10) {
                ((sx) obj).zza(spVar);
                spVar.zzz(this.tag >>> 3, 4);
            } else if (i == 11) {
                spVar.zzb((sx) obj);
            } else {
                int i2 = this.c;
                StringBuilder sb = new StringBuilder(24);
                sb.append("Unknown type ");
                sb.append(i2);
                throw new IllegalArgumentException(sb.toString());
            }
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ss)) {
            return false;
        }
        ss ssVar = (ss) obj;
        return this.c == ssVar.c && this.f3520a == ssVar.f3520a && this.tag == ssVar.tag && this.f3521b == ssVar.f3521b;
    }

    public final int hashCode() {
        return ((((((this.c + 1147) * 31) + this.f3520a.hashCode()) * 31) + this.tag) * 31) + (this.f3521b ? 1 : 0);
    }
}
