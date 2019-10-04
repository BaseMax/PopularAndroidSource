package c.e.c.g;

import android.annotation.TargetApi;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import b.i.a.n;
import b.i.b.a;
import java.util.Arrays;
import java.util.Iterator;
import java.util.MissingFormatArgumentException;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicInteger f11699a = new AtomicInteger((int) SystemClock.elapsedRealtime());

    /* renamed from: b  reason: collision with root package name */
    public final Context f11700b;

    /* renamed from: c  reason: collision with root package name */
    public final String f11701c;

    /* renamed from: d  reason: collision with root package name */
    public Bundle f11702d;

    public c(Context context, String str) {
        this.f11700b = context;
        this.f11701c = str;
    }

    public static boolean c(Bundle bundle) {
        return "1".equals(a(bundle, "gcm.n.e")) || a(bundle, "gcm.n.icon") != null;
    }

    public static String d(Bundle bundle, String str) {
        String valueOf = String.valueOf(str);
        return a(bundle, "_loc_key".length() != 0 ? valueOf.concat("_loc_key") : new String(valueOf));
    }

    public static boolean f(Bundle bundle) {
        return bundle != null && "1".equals(bundle.getString("google.c.a.e"));
    }

    public final e a(Bundle bundle) {
        Uri uri;
        Intent intent;
        PendingIntent pendingIntent;
        n.d dVar = new n.d(this.f11700b, c(a(bundle, "gcm.n.android_channel_id")));
        dVar.a(true);
        dVar.c(b(bundle));
        String c2 = c(bundle, "gcm.n.body");
        if (!TextUtils.isEmpty(c2)) {
            dVar.b((CharSequence) c2);
            n.c cVar = new n.c();
            cVar.a((CharSequence) c2);
            dVar.a((n.e) cVar);
        }
        dVar.c(a(a(bundle, "gcm.n.icon")));
        String d2 = d(bundle);
        PendingIntent pendingIntent2 = null;
        if (TextUtils.isEmpty(d2)) {
            uri = null;
        } else if ("default".equals(d2) || this.f11700b.getResources().getIdentifier(d2, "raw", this.f11701c) == 0) {
            uri = RingtoneManager.getDefaultUri(2);
        } else {
            String str = this.f11701c;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 24 + String.valueOf(d2).length());
            sb.append("android.resource://");
            sb.append(str);
            sb.append("/raw/");
            sb.append(d2);
            uri = Uri.parse(sb.toString());
        }
        if (uri != null) {
            dVar.a(uri);
        }
        String a2 = a(bundle, "gcm.n.click_action");
        if (!TextUtils.isEmpty(a2)) {
            intent = new Intent(a2);
            intent.setPackage(this.f11701c);
            intent.setFlags(268435456);
        } else {
            Uri e2 = e(bundle);
            if (e2 != null) {
                intent = new Intent("android.intent.action.VIEW");
                intent.setPackage(this.f11701c);
                intent.setData(e2);
            } else {
                intent = this.f11700b.getPackageManager().getLaunchIntentForPackage(this.f11701c);
                if (intent == null) {
                    Log.w("FirebaseMessaging", "No activity found to launch app");
                }
            }
        }
        if (intent == null) {
            pendingIntent = null;
        } else {
            intent.addFlags(67108864);
            Bundle bundle2 = new Bundle(bundle);
            Iterator it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                if (str2 != null && str2.startsWith("google.c.")) {
                    it.remove();
                }
            }
            intent.putExtras(bundle2);
            for (String str3 : bundle2.keySet()) {
                if (str3.startsWith("gcm.n.") || str3.startsWith("gcm.notification.")) {
                    intent.removeExtra(str3);
                }
            }
            pendingIntent = PendingIntent.getActivity(this.f11700b, f11699a.incrementAndGet(), intent, 1073741824);
            if (f(bundle)) {
                Intent intent2 = new Intent("com.google.firebase.messaging.NOTIFICATION_OPEN");
                a(intent2, bundle);
                intent2.putExtra("pending_intent", pendingIntent);
                pendingIntent = a(f11699a.incrementAndGet(), intent2);
            }
        }
        dVar.a(pendingIntent);
        if (f(bundle)) {
            Intent intent3 = new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS");
            a(intent3, bundle);
            pendingIntent2 = a(f11699a.incrementAndGet(), intent3);
        }
        if (pendingIntent2 != null) {
            dVar.b(pendingIntent2);
        }
        Integer b2 = b(a(bundle, "gcm.n.color"));
        if (b2 != null) {
            dVar.a(b2.intValue());
        }
        String a3 = a(bundle, "gcm.n.tag");
        if (TextUtils.isEmpty(a3)) {
            long uptimeMillis = SystemClock.uptimeMillis();
            StringBuilder sb2 = new StringBuilder(37);
            sb2.append("FCM-Notification:");
            sb2.append(uptimeMillis);
            a3 = sb2.toString();
        }
        return new e(dVar, a3, 0);
    }

    public final CharSequence b(Bundle bundle) {
        String c2 = c(bundle, "gcm.n.title");
        if (!TextUtils.isEmpty(c2)) {
            return c2;
        }
        try {
            return b(0).loadLabel(this.f11700b.getPackageManager());
        } catch (PackageManager.NameNotFoundException e2) {
            String valueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 35);
            sb.append("Couldn't get own application info: ");
            sb.append(valueOf);
            Log.e("FirebaseMessaging", sb.toString());
            return "";
        }
    }

    public final String e(Bundle bundle, String str) {
        String d2 = d(bundle, str);
        if (TextUtils.isEmpty(d2)) {
            return null;
        }
        Resources resources = this.f11700b.getResources();
        int identifier = resources.getIdentifier(d2, "string", this.f11701c);
        if (identifier == 0) {
            String valueOf = String.valueOf(str);
            String substring = ("_loc_key".length() != 0 ? valueOf.concat("_loc_key") : new String(valueOf)).substring(6);
            StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 49 + String.valueOf(str).length());
            sb.append(substring);
            sb.append(" resource not found: ");
            sb.append(str);
            sb.append(" Default value will be used.");
            Log.w("FirebaseMessaging", sb.toString());
            return null;
        }
        Object[] b2 = b(bundle, str);
        if (b2 == null) {
            return resources.getString(identifier);
        }
        try {
            return resources.getString(identifier, b2);
        } catch (MissingFormatArgumentException e2) {
            String arrays = Arrays.toString(b2);
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 58 + String.valueOf(arrays).length());
            sb2.append("Missing format argument for ");
            sb2.append(str);
            sb2.append(": ");
            sb2.append(arrays);
            sb2.append(" Default value will be used.");
            Log.w("FirebaseMessaging", sb2.toString(), e2);
            return null;
        }
    }

    public static String d(Bundle bundle) {
        String a2 = a(bundle, "gcm.n.sound2");
        return TextUtils.isEmpty(a2) ? a(bundle, "gcm.n.sound") : a2;
    }

    public final String c(Bundle bundle, String str) {
        String a2 = a(bundle, str);
        if (!TextUtils.isEmpty(a2)) {
            return a2;
        }
        return e(bundle, str);
    }

    public static Object[] b(Bundle bundle, String str) {
        String valueOf = String.valueOf(str);
        String a2 = a(bundle, "_loc_args".length() != 0 ? valueOf.concat("_loc_args") : new String(valueOf));
        if (TextUtils.isEmpty(a2)) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray(a2);
            Object[] objArr = new String[jSONArray.length()];
            for (int i2 = 0; i2 < objArr.length; i2++) {
                objArr[i2] = jSONArray.opt(i2);
            }
            return objArr;
        } catch (JSONException unused) {
            String valueOf2 = String.valueOf(str);
            String substring = ("_loc_args".length() != 0 ? valueOf2.concat("_loc_args") : new String(valueOf2)).substring(6);
            StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 41 + String.valueOf(a2).length());
            sb.append("Malformed ");
            sb.append(substring);
            sb.append(": ");
            sb.append(a2);
            sb.append("  Default value will be used.");
            Log.w("FirebaseMessaging", sb.toString());
            return null;
        }
    }

    @TargetApi(26)
    public final String c(String str) {
        if (!c.e.a.b.d.g.n.i()) {
            return null;
        }
        int i2 = 0;
        try {
            i2 = b(i2).targetSdkVersion;
        } catch (PackageManager.NameNotFoundException unused) {
        }
        if (i2 < 26) {
            return null;
        }
        NotificationManager notificationManager = (NotificationManager) this.f11700b.getSystemService(NotificationManager.class);
        if (!TextUtils.isEmpty(str)) {
            if (notificationManager.getNotificationChannel(str) != null) {
                return str;
            }
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 122);
            sb.append("Notification Channel requested (");
            sb.append(str);
            sb.append(") has not been created by the app. Manifest configuration, or default, value will be used.");
            Log.w("FirebaseMessaging", sb.toString());
        }
        String string = a().getString("com.google.firebase.messaging.default_notification_channel_id");
        if (TextUtils.isEmpty(string)) {
            Log.w("FirebaseMessaging", "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used.");
        } else if (notificationManager.getNotificationChannel(string) != null) {
            return string;
        } else {
            Log.w("FirebaseMessaging", "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used.");
        }
        if (notificationManager.getNotificationChannel("fcm_fallback_notification_channel") == null) {
            notificationManager.createNotificationChannel(new NotificationChannel("fcm_fallback_notification_channel", this.f11700b.getString(this.f11700b.getResources().getIdentifier("fcm_fallback_notification_channel_label", "string", this.f11701c)), 3));
        }
        return "fcm_fallback_notification_channel";
    }

    public static Uri e(Bundle bundle) {
        String a2 = a(bundle, "gcm.n.link_android");
        if (TextUtils.isEmpty(a2)) {
            a2 = a(bundle, "gcm.n.link");
        }
        if (!TextUtils.isEmpty(a2)) {
            return Uri.parse(a2);
        }
        return null;
    }

    public final Integer b(String str) {
        if (Build.VERSION.SDK_INT < 21) {
            return null;
        }
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.valueOf(Color.parseColor(str));
            } catch (IllegalArgumentException unused) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 54);
                sb.append("Color ");
                sb.append(str);
                sb.append(" not valid. Notification will use default color.");
                Log.w("FirebaseMessaging", sb.toString());
            }
        }
        int i2 = a().getInt("com.google.firebase.messaging.default_notification_color", 0);
        if (i2 != 0) {
            try {
                return Integer.valueOf(a.a(this.f11700b, i2));
            } catch (Resources.NotFoundException unused2) {
                Log.w("FirebaseMessaging", "Cannot find the color resource referenced in AndroidManifest.");
            }
        }
        return null;
    }

    public final ApplicationInfo b(int i2) {
        return this.f11700b.getPackageManager().getApplicationInfo(this.f11701c, i2);
    }

    public static String a(Bundle bundle, String str) {
        String string = bundle.getString(str);
        return string == null ? bundle.getString(str.replace("gcm.n.", "gcm.notification.")) : string;
    }

    @TargetApi(26)
    public final boolean a(int i2) {
        if (Build.VERSION.SDK_INT != 26) {
            return true;
        }
        try {
            if (!(this.f11700b.getResources().getDrawable(i2, null) instanceof AdaptiveIconDrawable)) {
                return true;
            }
            StringBuilder sb = new StringBuilder(77);
            sb.append("Adaptive icons cannot be used in notifications. Ignoring icon id: ");
            sb.append(i2);
            Log.e("FirebaseMessaging", sb.toString());
            return false;
        } catch (Resources.NotFoundException unused) {
            StringBuilder sb2 = new StringBuilder(66);
            sb2.append("Couldn't find resource ");
            sb2.append(i2);
            sb2.append(", treating it as an invalid icon");
            Log.e("FirebaseMessaging", sb2.toString());
            return false;
        }
    }

    public final int a(String str) {
        if (!TextUtils.isEmpty(str)) {
            Resources resources = this.f11700b.getResources();
            int identifier = resources.getIdentifier(str, "drawable", this.f11701c);
            if (identifier != 0 && a(identifier)) {
                return identifier;
            }
            int identifier2 = resources.getIdentifier(str, "mipmap", this.f11701c);
            if (identifier2 != 0 && a(identifier2)) {
                return identifier2;
            }
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 61);
            sb.append("Icon resource ");
            sb.append(str);
            sb.append(" not found. Notification will use default icon.");
            Log.w("FirebaseMessaging", sb.toString());
        }
        int i2 = a().getInt("com.google.firebase.messaging.default_notification_icon", 0);
        if (i2 == 0 || !a(i2)) {
            try {
                i2 = b(0).icon;
            } catch (PackageManager.NameNotFoundException e2) {
                String valueOf = String.valueOf(e2);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 35);
                sb2.append("Couldn't get own application info: ");
                sb2.append(valueOf);
                Log.w("FirebaseMessaging", sb2.toString());
            }
        }
        if (i2 == 0 || !a(i2)) {
            i2 = 17301651;
        }
        return i2;
    }

    public final synchronized Bundle a() {
        if (this.f11702d != null) {
            return this.f11702d;
        }
        try {
            ApplicationInfo b2 = b(128);
            if (!(b2 == null || b2.metaData == null)) {
                this.f11702d = b2.metaData;
                return this.f11702d;
            }
        } catch (PackageManager.NameNotFoundException e2) {
            String valueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 35);
            sb.append("Couldn't get own application info: ");
            sb.append(valueOf);
            Log.w("FirebaseMessaging", sb.toString());
        }
        return Bundle.EMPTY;
    }

    public static void a(Intent intent, Bundle bundle) {
        for (String str : bundle.keySet()) {
            if (str.startsWith("google.c.a.") || str.equals("from")) {
                intent.putExtra(str, bundle.getString(str));
            }
        }
    }

    public final PendingIntent a(int i2, Intent intent) {
        return PendingIntent.getBroadcast(this.f11700b, i2, new Intent("com.google.firebase.MESSAGING_EVENT").setComponent(new ComponentName(this.f11700b, "com.google.firebase.iid.FirebaseInstanceIdReceiver")).putExtra("wrapped_intent", intent), 1073741824);
    }
}
