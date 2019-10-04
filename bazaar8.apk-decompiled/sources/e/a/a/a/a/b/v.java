package e.a.a.a.a.b;

import android.content.Context;
import android.text.TextUtils;
import e.a.a.a.f;
import io.fabric.sdk.android.services.common.CommonUtils;

/* compiled from: FirebaseInfo */
public class v {
    public String a(Context context) {
        int a2 = CommonUtils.a(context, "google_app_id", "string");
        if (a2 == 0) {
            return null;
        }
        f.e().d("Fabric", "Generating Crashlytics ApiKey from google_app_id in Strings");
        return a(context.getResources().getString(a2));
    }

    public boolean b(Context context) {
        if (!TextUtils.isEmpty(new i().b(context))) {
            return true;
        }
        return !TextUtils.isEmpty(new i().c(context));
    }

    public boolean c(Context context) {
        int a2 = CommonUtils.a(context, "google_app_id", "string");
        if (a2 == 0) {
            return false;
        }
        return !TextUtils.isEmpty(context.getResources().getString(a2));
    }

    public boolean d(Context context) {
        int a2 = CommonUtils.a(context, "io.fabric.auto_initialize", "bool");
        if (a2 == 0) {
            return false;
        }
        boolean z = context.getResources().getBoolean(a2);
        if (z) {
            f.e().d("Fabric", "Found Fabric auto-initialization flag for joint Firebase/Fabric customers");
        }
        return z;
    }

    public boolean e(Context context) {
        boolean z = false;
        if (CommonUtils.a(context, "com.crashlytics.useFirebaseAppId", false)) {
            return true;
        }
        if (c(context) && !b(context)) {
            z = true;
        }
        return z;
    }

    public String a(String str) {
        return CommonUtils.d(str).substring(0, 40);
    }
}
