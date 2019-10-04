package kotlinx.coroutines.android;

import android.os.Build;
import androidx.annotation.Keep;
import h.c;
import h.c.a;
import h.c.e;
import h.d;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import java.lang.Thread;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlinx.coroutines.CoroutineExceptionHandler;

@Keep
/* compiled from: AndroidExceptionPreHandler.kt */
public final class AndroidExceptionPreHandler extends a implements CoroutineExceptionHandler, h.f.a.a<Method> {
    public static final /* synthetic */ i[] $$delegatedProperties;
    public final c preHandler$delegate = d.a(this);

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(AndroidExceptionPreHandler.class), "preHandler", "getPreHandler()Ljava/lang/reflect/Method;");
        k.a((PropertyReference1) propertyReference1Impl);
        $$delegatedProperties = new i[]{propertyReference1Impl};
    }

    public AndroidExceptionPreHandler() {
        super(CoroutineExceptionHandler.f15794c);
    }

    private final Method getPreHandler() {
        c cVar = this.preHandler$delegate;
        i iVar = $$delegatedProperties[0];
        return (Method) cVar.getValue();
    }

    public void handleException(e eVar, Throwable th) {
        j.b(eVar, "context");
        j.b(th, "exception");
        Thread currentThread = Thread.currentThread();
        if (Build.VERSION.SDK_INT >= 28) {
            j.a((Object) currentThread, "thread");
            currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
            return;
        }
        Method preHandler = getPreHandler();
        Object invoke = preHandler != null ? preHandler.invoke(null, new Object[0]) : null;
        if (!(invoke instanceof Thread.UncaughtExceptionHandler)) {
            invoke = null;
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = (Thread.UncaughtExceptionHandler) invoke;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(currentThread, th);
        }
    }

    public Method invoke() {
        boolean z = false;
        try {
            Method declaredMethod = Thread.class.getDeclaredMethod("getUncaughtExceptionPreHandler", new Class[0]);
            j.a((Object) declaredMethod, "it");
            if (Modifier.isPublic(declaredMethod.getModifiers()) && Modifier.isStatic(declaredMethod.getModifiers())) {
                z = true;
            }
            if (z) {
                return declaredMethod;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
