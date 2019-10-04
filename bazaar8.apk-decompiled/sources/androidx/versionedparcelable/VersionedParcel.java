package androidx.versionedparcelable;

import android.os.Parcelable;
import b.F.c;
import b.f.C0243b;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public abstract class VersionedParcel {

    /* renamed from: a  reason: collision with root package name */
    public final C0243b<String, Method> f966a;

    /* renamed from: b  reason: collision with root package name */
    public final C0243b<String, Method> f967b;

    /* renamed from: c  reason: collision with root package name */
    public final C0243b<String, Class> f968c;

    public static class ParcelException extends RuntimeException {
    }

    public VersionedParcel(C0243b<String, Method> bVar, C0243b<String, Method> bVar2, C0243b<String, Class> bVar3) {
        this.f966a = bVar;
        this.f967b = bVar2;
        this.f968c = bVar3;
    }

    public abstract void a();

    public abstract void a(Parcelable parcelable);

    public abstract void a(CharSequence charSequence);

    public abstract void a(boolean z);

    public void a(boolean z, boolean z2) {
    }

    public abstract void a(byte[] bArr);

    public abstract boolean a(int i2);

    public boolean a(boolean z, int i2) {
        if (!a(i2)) {
            return z;
        }
        return d();
    }

    public abstract VersionedParcel b();

    public abstract void b(int i2);

    public abstract void b(String str);

    public void b(boolean z, int i2) {
        b(i2);
        a(z);
    }

    public abstract void c(int i2);

    public boolean c() {
        return false;
    }

    public abstract boolean d();

    public abstract byte[] e();

    public abstract CharSequence f();

    public abstract int g();

    public abstract <T extends Parcelable> T h();

    public abstract String i();

    public <T extends c> T j() {
        String i2 = i();
        if (i2 == null) {
            return null;
        }
        return a(i2, b());
    }

    public int a(int i2, int i3) {
        if (!a(i3)) {
            return i2;
        }
        return g();
    }

    public void b(byte[] bArr, int i2) {
        b(i2);
        a(bArr);
    }

    public String a(String str, int i2) {
        if (!a(i2)) {
            return str;
        }
        return i();
    }

    public void b(CharSequence charSequence, int i2) {
        b(i2);
        a(charSequence);
    }

    public byte[] a(byte[] bArr, int i2) {
        if (!a(i2)) {
            return bArr;
        }
        return e();
    }

    public void b(int i2, int i3) {
        b(i3);
        c(i2);
    }

    public <T extends Parcelable> T a(T t, int i2) {
        if (!a(i2)) {
            return t;
        }
        return h();
    }

    public void b(String str, int i2) {
        b(i2);
        b(str);
    }

    public CharSequence a(CharSequence charSequence, int i2) {
        if (!a(i2)) {
            return charSequence;
        }
        return f();
    }

    public void b(Parcelable parcelable, int i2) {
        b(i2);
        a(parcelable);
    }

    public void a(c cVar) {
        if (cVar == null) {
            b((String) null);
            return;
        }
        b(cVar);
        VersionedParcel b2 = b();
        a(cVar, b2);
        b2.a();
    }

    public void b(c cVar, int i2) {
        b(i2);
        a(cVar);
    }

    public final void b(c cVar) {
        try {
            b(a((Class<? extends c>) cVar.getClass()).getName());
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException(cVar.getClass().getSimpleName() + " does not have a Parcelizer", e2);
        }
    }

    public <T extends c> T a(T t, int i2) {
        if (!a(i2)) {
            return t;
        }
        return j();
    }

    public final Method b(Class cls) {
        Method method = this.f967b.get(cls.getName());
        if (method != null) {
            return method;
        }
        Class a2 = a((Class<? extends c>) cls);
        System.currentTimeMillis();
        Method declaredMethod = a2.getDeclaredMethod("write", new Class[]{cls, VersionedParcel.class});
        this.f967b.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    public <T extends c> T a(String str, VersionedParcel versionedParcel) {
        try {
            return (c) a(str).invoke(null, new Object[]{versionedParcel});
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (InvocationTargetException e3) {
            if (e3.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e3.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e3);
        } catch (NoSuchMethodException e4) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e4);
        } catch (ClassNotFoundException e5) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e5);
        }
    }

    public <T extends c> void a(T t, VersionedParcel versionedParcel) {
        try {
            b((Class) t.getClass()).invoke(null, new Object[]{t, versionedParcel});
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (InvocationTargetException e3) {
            if (e3.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e3.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e3);
        } catch (NoSuchMethodException e4) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e4);
        } catch (ClassNotFoundException e5) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e5);
        }
    }

    public final Method a(String str) {
        Method method = this.f966a.get(str);
        if (method != null) {
            return method;
        }
        System.currentTimeMillis();
        Method declaredMethod = Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", new Class[]{VersionedParcel.class});
        this.f966a.put(str, declaredMethod);
        return declaredMethod;
    }

    public final Class a(Class<? extends c> cls) {
        Class cls2 = this.f968c.get(cls.getName());
        if (cls2 != null) {
            return cls2;
        }
        Class<?> cls3 = Class.forName(String.format("%s.%sParcelizer", new Object[]{cls.getPackage().getName(), cls.getSimpleName()}), false, cls.getClassLoader());
        this.f968c.put(cls.getName(), cls3);
        return cls3;
    }
}
