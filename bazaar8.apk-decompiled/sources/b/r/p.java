package b.r;

import androidx.lifecycle.CompositeGeneratedAdaptersObserver;
import androidx.lifecycle.FullLifecycleObserverAdapter;
import androidx.lifecycle.ReflectiveGenericLifecycleObserver;
import androidx.lifecycle.SingleGeneratedAdapterObserver;
import e.a.a.a.a.d.c;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Lifecycling */
public class p {

    /* renamed from: a  reason: collision with root package name */
    public static Map<Class, Integer> f3177a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public static Map<Class, List<Constructor<? extends C0300f>>> f3178b = new HashMap();

    public static C0303i a(Object obj) {
        boolean z = obj instanceof C0303i;
        boolean z2 = obj instanceof C0298d;
        if (z && z2) {
            return new FullLifecycleObserverAdapter((C0298d) obj, (C0303i) obj);
        }
        if (z2) {
            return new FullLifecycleObserverAdapter((C0298d) obj, null);
        }
        if (z) {
            return (C0303i) obj;
        }
        Class<?> cls = obj.getClass();
        if (b(cls) != 2) {
            return new ReflectiveGenericLifecycleObserver(obj);
        }
        List list = f3178b.get(cls);
        if (list.size() == 1) {
            return new SingleGeneratedAdapterObserver(a((Constructor) list.get(0), obj));
        }
        C0300f[] fVarArr = new C0300f[list.size()];
        for (int i2 = 0; i2 < list.size(); i2++) {
            fVarArr[i2] = a((Constructor) list.get(i2), obj);
        }
        return new CompositeGeneratedAdaptersObserver(fVarArr);
    }

    public static int b(Class<?> cls) {
        Integer num = f3177a.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int d2 = d(cls);
        f3177a.put(cls, Integer.valueOf(d2));
        return d2;
    }

    public static boolean c(Class<?> cls) {
        return cls != null && j.class.isAssignableFrom(cls);
    }

    public static int d(Class<?> cls) {
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor<? extends C0300f> a2 = a(cls);
        if (a2 != null) {
            f3178b.put(cls, Collections.singletonList(a2));
            return 2;
        } else if (C0296b.f3156a.c(cls)) {
            return 1;
        } else {
            Class<? super Object> superclass = cls.getSuperclass();
            ArrayList arrayList = null;
            if (c(superclass)) {
                if (b(superclass) == 1) {
                    return 1;
                }
                arrayList = new ArrayList(f3178b.get(superclass));
            }
            for (Class cls2 : cls.getInterfaces()) {
                if (c(cls2)) {
                    if (b(cls2) == 1) {
                        return 1;
                    }
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.addAll(f3178b.get(cls2));
                }
            }
            if (arrayList == null) {
                return 1;
            }
            f3178b.put(cls, arrayList);
            return 2;
        }
    }

    public static C0300f a(Constructor<? extends C0300f> constructor, Object obj) {
        try {
            return (C0300f) constructor.newInstance(new Object[]{obj});
        } catch (IllegalAccessException e2) {
            throw new RuntimeException(e2);
        } catch (InstantiationException e3) {
            throw new RuntimeException(e3);
        } catch (InvocationTargetException e4) {
            throw new RuntimeException(e4);
        }
    }

    public static Constructor<? extends C0300f> a(Class<?> cls) {
        try {
            Package packageR = cls.getPackage();
            String canonicalName = cls.getCanonicalName();
            String name = packageR != null ? packageR.getName() : "";
            if (!name.isEmpty()) {
                canonicalName = canonicalName.substring(name.length() + 1);
            }
            String a2 = a(canonicalName);
            if (!name.isEmpty()) {
                a2 = name + "." + a2;
            }
            Constructor<?> declaredConstructor = Class.forName(a2).getDeclaredConstructor(new Class[]{cls});
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return declaredConstructor;
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (NoSuchMethodException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static String a(String str) {
        return str.replace(".", c.ROLL_OVER_FILE_NAME_SEPARATOR) + "_LifecycleAdapter";
    }
}
