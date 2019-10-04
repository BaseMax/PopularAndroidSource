package b.i.a;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;

/* compiled from: ActivityCompat */
public class b extends b.i.b.a {

    /* renamed from: c  reason: collision with root package name */
    public static C0027b f2504c;

    /* compiled from: ActivityCompat */
    public interface a {
        void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr);
    }

    /* renamed from: b.i.a.b$b  reason: collision with other inner class name */
    /* compiled from: ActivityCompat */
    public interface C0027b {
        boolean a(Activity activity, int i2, int i3, Intent intent);

        boolean a(Activity activity, String[] strArr, int i2);
    }

    /* compiled from: ActivityCompat */
    public interface c {
        void a(int i2);
    }

    public static C0027b a() {
        return f2504c;
    }

    public static void b(Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else if (!h.a(activity)) {
            activity.recreate();
        }
    }

    public static void a(Activity activity, Intent intent, int i2, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startActivityForResult(intent, i2, bundle);
        } else {
            activity.startActivityForResult(intent, i2);
        }
    }

    public static void a(Activity activity, IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startIntentSenderForResult(intentSender, i2, intent, i3, i4, i5, bundle);
        } else {
            activity.startIntentSenderForResult(intentSender, i2, intent, i3, i4, i5);
        }
    }

    public static void a(Activity activity) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.finishAffinity();
        } else {
            activity.finish();
        }
    }

    public static <T extends View> T a(Activity activity, int i2) {
        if (Build.VERSION.SDK_INT >= 28) {
            return activity.requireViewById(i2);
        }
        T findViewById = activity.findViewById(i2);
        if (findViewById != null) {
            return findViewById;
        }
        throw new IllegalArgumentException("ID does not reference a View inside this Activity");
    }

    public static void a(Activity activity, String[] strArr, int i2) {
        C0027b bVar = f2504c;
        if (bVar == null || !bVar.a(activity, strArr, i2)) {
            if (Build.VERSION.SDK_INT >= 23) {
                if (activity instanceof c) {
                    ((c) activity).a(i2);
                }
                activity.requestPermissions(strArr, i2);
            } else if (activity instanceof a) {
                new Handler(Looper.getMainLooper()).post(new a(strArr, activity, i2));
            }
        }
    }

    public static boolean a(Activity activity, String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
        return false;
    }
}
