package e.a.a.a.a.b;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import e.a.a.a.f;
import e.a.a.a.o;
import io.fabric.sdk.android.services.common.CommonUtils;

/* compiled from: ApiKey */
public class i {
    public String a() {
        return "Fabric could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"io.fabric.ApiKey\" android:value=\"YOUR_API_KEY\"/>";
    }

    public String a(Context context) {
        return new v().a(context);
    }

    public String b(Context context) {
        String str = null;
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle == null) {
                return null;
            }
            String string = bundle.getString("io.fabric.ApiKey");
            try {
                if ("@string/twitter_consumer_secret".equals(string)) {
                    f.e().d("Fabric", "Ignoring bad default value for Fabric ApiKey set by FirebaseUI-Auth");
                } else {
                    str = string;
                }
                if (str != null) {
                    return str;
                }
                f.e().d("Fabric", "Falling back to Crashlytics key lookup from Manifest");
                return bundle.getString("com.crashlytics.ApiKey");
            } catch (Exception e2) {
                e = e2;
                str = string;
                o e3 = f.e();
                e3.d("Fabric", "Caught non-fatal exception while retrieving apiKey: " + e);
                return str;
            }
        } catch (Exception e4) {
            e = e4;
            o e32 = f.e();
            e32.d("Fabric", "Caught non-fatal exception while retrieving apiKey: " + e);
            return str;
        }
    }

    public String c(Context context) {
        int a2 = CommonUtils.a(context, "io.fabric.ApiKey", "string");
        if (a2 == 0) {
            f.e().d("Fabric", "Falling back to Crashlytics key lookup from Strings");
            a2 = CommonUtils.a(context, "com.crashlytics.ApiKey", "string");
        }
        if (a2 != 0) {
            return context.getResources().getString(a2);
        }
        return null;
    }

    public String d(Context context) {
        String b2 = b(context);
        if (TextUtils.isEmpty(b2)) {
            b2 = c(context);
        }
        if (TextUtils.isEmpty(b2)) {
            b2 = a(context);
        }
        if (TextUtils.isEmpty(b2)) {
            e(context);
        }
        return b2;
    }

    public void e(Context context) {
        if (f.h() || CommonUtils.j(context)) {
            throw new IllegalArgumentException(a());
        }
        f.e().b("Fabric", a());
    }
}
