package b.r;

import androidx.lifecycle.Lifecycle;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: b.r.b  reason: case insensitive filesystem */
/* compiled from: ClassesInfoCache */
public class C0296b {

    /* renamed from: a  reason: collision with root package name */
    public static C0296b f3156a = new C0296b();

    /* renamed from: b  reason: collision with root package name */
    public final Map<Class, a> f3157b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public final Map<Class, Boolean> f3158c = new HashMap();

    /* renamed from: b.r.b$a */
    /* compiled from: ClassesInfoCache */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        public final Map<Lifecycle.Event, List<C0039b>> f3159a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        public final Map<C0039b, Lifecycle.Event> f3160b;

        public a(Map<C0039b, Lifecycle.Event> map) {
            this.f3160b = map;
            for (Map.Entry next : map.entrySet()) {
                Lifecycle.Event event = (Lifecycle.Event) next.getValue();
                List list = this.f3159a.get(event);
                if (list == null) {
                    list = new ArrayList();
                    this.f3159a.put(event, list);
                }
                list.add(next.getKey());
            }
        }

        public void a(k kVar, Lifecycle.Event event, Object obj) {
            a(this.f3159a.get(event), kVar, event, obj);
            a(this.f3159a.get(Lifecycle.Event.ON_ANY), kVar, event, obj);
        }

        public static void a(List<C0039b> list, k kVar, Lifecycle.Event event, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).a(kVar, event, obj);
                }
            }
        }
    }

    /* renamed from: b.r.b$b  reason: collision with other inner class name */
    /* compiled from: ClassesInfoCache */
    static class C0039b {

        /* renamed from: a  reason: collision with root package name */
        public final int f3161a;

        /* renamed from: b  reason: collision with root package name */
        public final Method f3162b;

        public C0039b(int i2, Method method) {
            this.f3161a = i2;
            this.f3162b = method;
            this.f3162b.setAccessible(true);
        }

        public void a(k kVar, Lifecycle.Event event, Object obj) {
            try {
                int i2 = this.f3161a;
                if (i2 == 0) {
                    this.f3162b.invoke(obj, new Object[0]);
                } else if (i2 == 1) {
                    this.f3162b.invoke(obj, new Object[]{kVar});
                } else if (i2 == 2) {
                    this.f3162b.invoke(obj, new Object[]{kVar, event});
                }
            } catch (InvocationTargetException e2) {
                throw new RuntimeException("Failed to call observer method", e2.getCause());
            } catch (IllegalAccessException e3) {
                throw new RuntimeException(e3);
            }
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C0039b.class != obj.getClass()) {
                return false;
            }
            C0039b bVar = (C0039b) obj;
            if (this.f3161a != bVar.f3161a || !this.f3162b.getName().equals(bVar.f3162b.getName())) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.f3161a * 31) + this.f3162b.getName().hashCode();
        }
    }

    public final Method[] a(Class cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e2) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e2);
        }
    }

    public a b(Class cls) {
        a aVar = this.f3157b.get(cls);
        if (aVar != null) {
            return aVar;
        }
        return a(cls, null);
    }

    public boolean c(Class cls) {
        Boolean bool = this.f3158c.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] a2 = a(cls);
        for (Method annotation : a2) {
            if (((v) annotation.getAnnotation(v.class)) != null) {
                a(cls, a2);
                return true;
            }
        }
        this.f3158c.put(cls, false);
        return false;
    }

    public final void a(Map<C0039b, Lifecycle.Event> map, C0039b bVar, Lifecycle.Event event, Class cls) {
        Lifecycle.Event event2 = map.get(bVar);
        if (event2 != null && event != event2) {
            Method method = bVar.f3162b;
            throw new IllegalArgumentException("Method " + method.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + event2 + ", new value " + event);
        } else if (event2 == null) {
            map.put(bVar, event);
        }
    }

    public final a a(Class cls, Method[] methodArr) {
        int i2;
        Class superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (superclass != null) {
            a b2 = b(superclass);
            if (b2 != null) {
                hashMap.putAll(b2.f3160b);
            }
        }
        for (Class b3 : cls.getInterfaces()) {
            for (Map.Entry next : b(b3).f3160b.entrySet()) {
                a(hashMap, (C0039b) next.getKey(), (Lifecycle.Event) next.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = a(cls);
        }
        boolean z = false;
        for (Method method : methodArr) {
            v vVar = (v) method.getAnnotation(v.class);
            if (vVar != null) {
                Class[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i2 = 0;
                } else if (parameterTypes[0].isAssignableFrom(k.class)) {
                    i2 = 1;
                } else {
                    throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                }
                Lifecycle.Event value = vVar.value();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(Lifecycle.Event.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    } else if (value == Lifecycle.Event.ON_ANY) {
                        i2 = 2;
                    } else {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                }
                if (parameterTypes.length <= 2) {
                    a(hashMap, new C0039b(i2, method), value, cls);
                    z = true;
                } else {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
            }
        }
        a aVar = new a(hashMap);
        this.f3157b.put(cls, aVar);
        this.f3158c.put(cls, Boolean.valueOf(z));
        return aVar;
    }
}
