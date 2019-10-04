package e.a.a.a.a.b;

import android.content.Context;
import e.a.a.a.f;
import e.a.a.a.o;
import java.lang.reflect.Method;

/* compiled from: FirebaseAppImpl */
public final class u implements t {

    /* renamed from: a  reason: collision with root package name */
    public final Method f13700a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f13701b;

    public u(Class cls, Object obj) {
        this.f13701b = obj;
        this.f13700a = cls.getDeclaredMethod("isDataCollectionDefaultEnabled", new Class[0]);
    }

    public static t a(Context context) {
        try {
            Class<?> loadClass = context.getClassLoader().loadClass("com.google.firebase.FirebaseApp");
            return new u(loadClass, loadClass.getDeclaredMethod("getInstance", new Class[0]).invoke(loadClass, new Object[0]));
        } catch (ClassNotFoundException unused) {
            f.e().d("Fabric", "Could not find class: com.google.firebase.FirebaseApp");
            return null;
        } catch (NoSuchMethodException e2) {
            o e3 = f.e();
            e3.d("Fabric", "Could not find method: " + e2.getMessage());
            return null;
        } catch (Exception e4) {
            f.e().c("Fabric", "Unexpected error loading FirebaseApp instance.", e4);
            return null;
        }
    }

    public boolean a() {
        try {
            return ((Boolean) this.f13700a.invoke(this.f13701b, new Object[0])).booleanValue();
        } catch (Exception e2) {
            f.e().c("Fabric", "Cannot check isDataCollectionDefaultEnabled on FirebaseApp.", e2);
            return false;
        }
    }
}
