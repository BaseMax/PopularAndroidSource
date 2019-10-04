package l;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import l.C1159c;
import l.j;

/* compiled from: Platform */
public class A {

    /* renamed from: a  reason: collision with root package name */
    public static final A f15825a = d();

    /* compiled from: Platform */
    static class a extends A {

        /* renamed from: l.A$a$a  reason: collision with other inner class name */
        /* compiled from: Platform */
        static class C0153a implements Executor {

            /* renamed from: a  reason: collision with root package name */
            public final Handler f15826a = new Handler(Looper.getMainLooper());

            public void execute(Runnable runnable) {
                this.f15826a.post(runnable);
            }
        }

        public boolean a(Method method) {
            if (Build.VERSION.SDK_INT < 24) {
                return false;
            }
            return method.isDefault();
        }

        public List<? extends j.a> b() {
            if (Build.VERSION.SDK_INT >= 24) {
                return Collections.singletonList(w.f15951a);
            }
            return Collections.emptyList();
        }

        public int c() {
            return Build.VERSION.SDK_INT >= 24 ? 1 : 0;
        }

        public Executor a() {
            return new C0153a();
        }

        public List<? extends C1159c.a> a(Executor executor) {
            if (executor != null) {
                q qVar = new q(executor);
                if (Build.VERSION.SDK_INT < 24) {
                    return Collections.singletonList(qVar);
                }
                return Arrays.asList(new C1159c.a[]{C1163g.f15909a, qVar});
            }
            throw new AssertionError();
        }
    }

    /* compiled from: Platform */
    static class b extends A {
        public boolean a(Method method) {
            return method.isDefault();
        }

        public List<? extends j.a> b() {
            return Collections.singletonList(w.f15951a);
        }

        public int c() {
            return 1;
        }

        public Object a(Method method, Class<?> cls, Object obj, Object... objArr) {
            Constructor<MethodHandles.Lookup> declaredConstructor = MethodHandles.Lookup.class.getDeclaredConstructor(new Class[]{Class.class, Integer.TYPE});
            declaredConstructor.setAccessible(true);
            return declaredConstructor.newInstance(new Object[]{cls, -1}).unreflectSpecial(method, cls).bindTo(obj).invokeWithArguments(objArr);
        }

        public List<? extends C1159c.a> a(Executor executor) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(C1163g.f15909a);
            if (executor != null) {
                arrayList.add(new q(executor));
            } else {
                arrayList.add(l.f15918a);
            }
            return Collections.unmodifiableList(arrayList);
        }
    }

    public static A d() {
        try {
            Class.forName("android.os.Build");
            if (Build.VERSION.SDK_INT != 0) {
                return new a();
            }
        } catch (ClassNotFoundException unused) {
        }
        try {
            Class.forName("java.util.Optional");
            return new b();
        } catch (ClassNotFoundException unused2) {
            return new A();
        }
    }

    public static A e() {
        return f15825a;
    }

    public List<? extends C1159c.a> a(Executor executor) {
        if (executor != null) {
            return Collections.singletonList(new q(executor));
        }
        return Collections.singletonList(l.f15918a);
    }

    public Executor a() {
        return null;
    }

    public boolean a(Method method) {
        return false;
    }

    public List<? extends j.a> b() {
        return Collections.emptyList();
    }

    public int c() {
        return 0;
    }

    public Object a(Method method, Class<?> cls, Object obj, Object... objArr) {
        throw new UnsupportedOperationException();
    }
}
