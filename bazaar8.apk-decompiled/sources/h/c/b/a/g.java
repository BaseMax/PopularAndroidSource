package h.c.b.a;

import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import h.f.b.j;
import java.lang.reflect.Method;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;

/* compiled from: DebugMetadata.kt */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public static final a f14530a = new a(null, null, null);

    /* renamed from: b  reason: collision with root package name */
    public static a f14531b;

    /* renamed from: c  reason: collision with root package name */
    public static final g f14532c = new g();

    /* compiled from: DebugMetadata.kt */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Method f14533a;

        /* renamed from: b  reason: collision with root package name */
        public final Method f14534b;

        /* renamed from: c  reason: collision with root package name */
        public final Method f14535c;

        public a(Method method, Method method2, Method method3) {
            this.f14533a = method;
            this.f14534b = method2;
            this.f14535c = method3;
        }
    }

    public final a a(BaseContinuationImpl baseContinuationImpl) {
        try {
            a aVar = new a(Class.class.getDeclaredMethod("getModule", new Class[0]), baseContinuationImpl.getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", new Class[0]), baseContinuationImpl.getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod(DefaultAppMeasurementEventListenerRegistrar.NAME, new Class[0]));
            f14531b = aVar;
            return aVar;
        } catch (Exception unused) {
            a aVar2 = f14530a;
            f14531b = aVar2;
            return aVar2;
        }
    }

    public final String b(BaseContinuationImpl baseContinuationImpl) {
        j.b(baseContinuationImpl, "continuation");
        a aVar = f14531b;
        if (aVar == null) {
            aVar = a(baseContinuationImpl);
        }
        if (aVar == f14530a) {
            return null;
        }
        Method method = aVar.f14533a;
        if (method != null) {
            Object invoke = method.invoke(baseContinuationImpl.getClass(), new Object[0]);
            if (invoke != null) {
                Method method2 = aVar.f14534b;
                if (method2 != null) {
                    Object invoke2 = method2.invoke(invoke, new Object[0]);
                    if (invoke2 != null) {
                        Method method3 = aVar.f14535c;
                        Object invoke3 = method3 != null ? method3.invoke(invoke2, new Object[0]) : null;
                        if (!(invoke3 instanceof String)) {
                            invoke3 = null;
                        }
                        return (String) invoke3;
                    }
                }
            }
        }
        return null;
    }
}
