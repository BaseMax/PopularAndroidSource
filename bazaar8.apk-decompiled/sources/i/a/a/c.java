package i.a.a;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import h.e;
import h.f.b.j;
import java.lang.reflect.Constructor;
import kotlin.Result;
import kotlin.TypeCastException;

/* compiled from: HandlerDispatcher.kt */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final b f14674a;

    static {
        Object obj;
        try {
            Result.a aVar = Result.f15776a;
            Looper mainLooper = Looper.getMainLooper();
            j.a((Object) mainLooper, "Looper.getMainLooper()");
            obj = new a(a(mainLooper, true), "Main");
            Result.a(obj);
        } catch (Throwable th) {
            Result.a aVar2 = Result.f15776a;
            obj = e.a(th);
            Result.a(obj);
        }
        if (Result.d(obj)) {
            obj = null;
        }
        f14674a = (b) obj;
    }

    public static final Handler a(Looper looper, boolean z) {
        j.b(looper, "$this$asHandler");
        if (z) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 16) {
                if (i2 >= 28) {
                    Object invoke = Handler.class.getDeclaredMethod("createAsync", new Class[]{Looper.class}).invoke(null, new Object[]{looper});
                    if (invoke != null) {
                        return (Handler) invoke;
                    }
                    throw new TypeCastException("null cannot be cast to non-null type android.os.Handler");
                }
                Class<Handler> cls = Handler.class;
                try {
                    Constructor<Handler> declaredConstructor = cls.getDeclaredConstructor(new Class[]{Looper.class, Handler.Callback.class, Boolean.TYPE});
                    j.a((Object) declaredConstructor, "Handler::class.java.getD…:class.javaPrimitiveType)");
                    Handler newInstance = declaredConstructor.newInstance(new Object[]{looper, null, true});
                    j.a((Object) newInstance, "constructor.newInstance(this, null, true)");
                    return newInstance;
                } catch (NoSuchMethodException unused) {
                    return new Handler(looper);
                }
            }
        }
        return new Handler(looper);
    }
}
