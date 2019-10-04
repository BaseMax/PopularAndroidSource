package b.r;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;

/* compiled from: ViewModelProvider */
public class F {

    /* renamed from: a  reason: collision with root package name */
    public final b f3151a;

    /* renamed from: b  reason: collision with root package name */
    public final H f3152b;

    /* compiled from: ViewModelProvider */
    public static class a extends d {

        /* renamed from: a  reason: collision with root package name */
        public static a f3153a;

        /* renamed from: b  reason: collision with root package name */
        public Application f3154b;

        public a(Application application) {
            this.f3154b = application;
        }

        public static a a(Application application) {
            if (f3153a == null) {
                f3153a = new a(application);
            }
            return f3153a;
        }

        public <T extends E> T a(Class<T> cls) {
            if (!C0295a.class.isAssignableFrom(cls)) {
                return super.a(cls);
            }
            try {
                return (E) cls.getConstructor(new Class[]{Application.class}).newInstance(new Object[]{this.f3154b});
            } catch (NoSuchMethodException e2) {
                throw new RuntimeException("Cannot create an instance of " + cls, e2);
            } catch (IllegalAccessException e3) {
                throw new RuntimeException("Cannot create an instance of " + cls, e3);
            } catch (InstantiationException e4) {
                throw new RuntimeException("Cannot create an instance of " + cls, e4);
            } catch (InvocationTargetException e5) {
                throw new RuntimeException("Cannot create an instance of " + cls, e5);
            }
        }
    }

    /* compiled from: ViewModelProvider */
    public interface b {
        <T extends E> T a(Class<T> cls);
    }

    /* compiled from: ViewModelProvider */
    static abstract class c implements b {
        public <T extends E> T a(Class<T> cls) {
            throw new UnsupportedOperationException("create(String, Class<?>) must be called on implementaions of KeyedFactory");
        }

        public abstract <T extends E> T a(String str, Class<T> cls);
    }

    /* compiled from: ViewModelProvider */
    public static class d implements b {
        public <T extends E> T a(Class<T> cls) {
            try {
                return (E) cls.newInstance();
            } catch (InstantiationException e2) {
                throw new RuntimeException("Cannot create an instance of " + cls, e2);
            } catch (IllegalAccessException e3) {
                throw new RuntimeException("Cannot create an instance of " + cls, e3);
            }
        }
    }

    public F(H h2, b bVar) {
        this.f3151a = bVar;
        this.f3152b = h2;
    }

    public <T extends E> T a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return a("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    public <T extends E> T a(String str, Class<T> cls) {
        T t;
        T a2 = this.f3152b.a(str);
        if (cls.isInstance(a2)) {
            return a2;
        }
        b bVar = this.f3151a;
        if (bVar instanceof c) {
            t = ((c) bVar).a(str, cls);
        } else {
            t = bVar.a(cls);
        }
        this.f3152b.a(str, t);
        return t;
    }
}
