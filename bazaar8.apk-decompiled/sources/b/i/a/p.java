package b.i.a;

import android.app.Notification;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import b.i.a.n;
import java.lang.reflect.Field;
import java.util.List;

/* compiled from: NotificationCompatJellybean */
public class p {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f2565a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public static Field f2566b;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f2567c;

    /* renamed from: d  reason: collision with root package name */
    public static final Object f2568d = new Object();

    public static SparseArray<Bundle> a(List<Bundle> list) {
        int size = list.size();
        SparseArray<Bundle> sparseArray = null;
        for (int i2 = 0; i2 < size; i2++) {
            Bundle bundle = list.get(i2);
            if (bundle != null) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                sparseArray.put(i2, bundle);
            }
        }
        return sparseArray;
    }

    public static Bundle a(Notification notification) {
        synchronized (f2565a) {
            if (f2567c) {
                return null;
            }
            try {
                if (f2566b == null) {
                    Field declaredField = Notification.class.getDeclaredField("extras");
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                        f2567c = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    f2566b = declaredField;
                }
                Bundle bundle = (Bundle) f2566b.get(notification);
                if (bundle == null) {
                    bundle = new Bundle();
                    f2566b.set(notification, bundle);
                }
                return bundle;
            } catch (IllegalAccessException e2) {
                Log.e("NotificationCompat", "Unable to access notification extras", e2);
                f2567c = true;
                return null;
            } catch (NoSuchFieldException e3) {
                Log.e("NotificationCompat", "Unable to access notification extras", e3);
                f2567c = true;
                return null;
            }
        }
    }

    public static Bundle a(Notification.Builder builder, n.a aVar) {
        builder.addAction(aVar.e(), aVar.i(), aVar.a());
        Bundle bundle = new Bundle(aVar.d());
        if (aVar.f() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", a(aVar.f()));
        }
        if (aVar.c() != null) {
            bundle.putParcelableArray("android.support.dataRemoteInputs", a(aVar.c()));
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", aVar.b());
        return bundle;
    }

    public static Bundle a(n.a aVar) {
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        bundle2.putInt("icon", aVar.e());
        bundle2.putCharSequence("title", aVar.i());
        bundle2.putParcelable("actionIntent", aVar.a());
        if (aVar.d() != null) {
            bundle = new Bundle(aVar.d());
        } else {
            bundle = new Bundle();
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", aVar.b());
        bundle2.putBundle("extras", bundle);
        bundle2.putParcelableArray("remoteInputs", a(aVar.f()));
        bundle2.putBoolean("showsUserInterface", aVar.h());
        bundle2.putInt("semanticAction", aVar.g());
        return bundle2;
    }

    public static Bundle a(r rVar) {
        new Bundle();
        rVar.a();
        throw null;
    }

    public static Bundle[] a(r[] rVarArr) {
        if (rVarArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[rVarArr.length];
        if (rVarArr.length <= 0) {
            return bundleArr;
        }
        a(rVarArr[0]);
        throw null;
    }
}
