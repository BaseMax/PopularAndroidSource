package com.google.firebase.messaging;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.content.ContextCompat;
import com.google.android.gms.a;
import com.google.android.gms.common.util.m;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.MissingFormatArgumentException;
import java.util.concurrent.atomic.AtomicInteger;

final class b {

    /* renamed from: a  reason: collision with root package name */
    private static b f4101a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f4102b;
    private Bundle c;
    private Method d;
    private Method e;
    private final AtomicInteger f = new AtomicInteger((int) SystemClock.elapsedRealtime());

    private b(Context context) {
        this.f4102b = context.getApplicationContext();
    }

    private final Notification a(CharSequence charSequence, String str, int i, Integer num, Uri uri, PendingIntent pendingIntent, PendingIntent pendingIntent2, String str2) {
        Notification.Builder smallIcon = new Notification.Builder(this.f4102b).setAutoCancel(true).setSmallIcon(i);
        if (!TextUtils.isEmpty(charSequence)) {
            smallIcon.setContentTitle(charSequence);
        }
        if (!TextUtils.isEmpty(str)) {
            smallIcon.setContentText(str);
            smallIcon.setStyle(new Notification.BigTextStyle().bigText(str));
        }
        if (num != null) {
            smallIcon.setColor(num.intValue());
        }
        if (uri != null) {
            smallIcon.setSound(uri);
        }
        if (pendingIntent != null) {
            smallIcon.setContentIntent(pendingIntent);
        }
        if (pendingIntent2 != null) {
            smallIcon.setDeleteIntent(pendingIntent2);
        }
        if (str2 != null) {
            if (this.d == null) {
                this.d = a("setChannelId");
            }
            if (this.d == null) {
                this.d = a("setChannel");
            }
            Method method = this.d;
            if (method != null) {
                try {
                    method.invoke(smallIcon, new Object[]{str2});
                } catch (IllegalAccessException | IllegalArgumentException | SecurityException | InvocationTargetException unused) {
                }
            }
        }
        return smallIcon.build();
    }

    private final Bundle a() {
        Bundle bundle = this.c;
        if (bundle != null) {
            return bundle;
        }
        ApplicationInfo applicationInfo = null;
        try {
            applicationInfo = this.f4102b.getPackageManager().getApplicationInfo(this.f4102b.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException unused) {
        }
        if (applicationInfo == null || applicationInfo.metaData == null) {
            return Bundle.EMPTY;
        }
        this.c = applicationInfo.metaData;
        return this.c;
    }

    static synchronized b a(Context context) {
        b bVar;
        synchronized (b.class) {
            if (f4101a == null) {
                f4101a = new b(context);
            }
            bVar = f4101a;
        }
        return bVar;
    }

    static String a(Bundle bundle, String str) {
        String string = bundle.getString(str);
        return string == null ? bundle.getString(str.replace("gcm.n.", "gcm.notification.")) : string;
    }

    private static Method a(String str) {
        try {
            return Notification.Builder.class.getMethod(str, new Class[]{String.class});
        } catch (NoSuchMethodException | SecurityException unused) {
            return null;
        }
    }

    private static void a(Intent intent, Bundle bundle) {
        for (String str : bundle.keySet()) {
            if (str.startsWith("google.c.a.") || str.equals("from")) {
                intent.putExtra(str, bundle.getString(str));
            }
        }
    }

    private final boolean a(int i) {
        if (Build.VERSION.SDK_INT != 26) {
            return true;
        }
        try {
            Drawable drawable = this.f4102b.getResources().getDrawable(i, null);
            if (drawable.getBounds().height() != 0 && drawable.getBounds().width() != 0) {
                return true;
            }
            StringBuilder sb = new StringBuilder(72);
            sb.append("Icon with id: ");
            sb.append(i);
            sb.append(" uses an invalid gradient. Using fallback icon.");
            return false;
        } catch (Resources.NotFoundException unused) {
        }
    }

    static boolean a(Bundle bundle) {
        return "1".equals(a(bundle, "gcm.n.e")) || a(bundle, "gcm.n.icon") != null;
    }

    static Uri b(Bundle bundle) {
        String a2 = a(bundle, "gcm.n.link_android");
        if (TextUtils.isEmpty(a2)) {
            a2 = a(bundle, "gcm.n.link");
        }
        if (!TextUtils.isEmpty(a2)) {
            return Uri.parse(a2);
        }
        return null;
    }

    private final Integer b(String str) {
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
            }
        }
        int i = a().getInt("com.google.firebase.messaging.default_notification_color", 0);
        if (i != 0) {
            try {
                return Integer.valueOf(ContextCompat.getColor(this.f4102b, i));
            } catch (Resources.NotFoundException unused2) {
            }
        }
        return null;
    }

    static String b(Bundle bundle, String str) {
        String valueOf = String.valueOf(str);
        return a(bundle, "_loc_key".length() != 0 ? valueOf.concat("_loc_key") : new String(valueOf));
    }

    private final String c(String str) {
        if (!m.isAtLeastO()) {
            return null;
        }
        NotificationManager notificationManager = (NotificationManager) this.f4102b.getSystemService(NotificationManager.class);
        try {
            if (this.e == null) {
                this.e = notificationManager.getClass().getMethod("getNotificationChannel", new Class[]{String.class});
            }
            if (!TextUtils.isEmpty(str)) {
                if (this.e.invoke(notificationManager, new Object[]{str}) != null) {
                    return str;
                }
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 122);
                sb.append("Notification Channel requested (");
                sb.append(str);
                sb.append(") has not been created by the app. Manifest configuration, or default, value will be used.");
            }
            String string = a().getString("com.google.firebase.messaging.default_notification_channel_id");
            if (!TextUtils.isEmpty(string)) {
                if (this.e.invoke(notificationManager, new Object[]{string}) != null) {
                    return string;
                }
            }
            if (this.e.invoke(notificationManager, new Object[]{"fcm_fallback_notification_channel"}) == null) {
                Class<?> cls = Class.forName("android.app.NotificationChannel");
                Object newInstance = cls.getConstructor(new Class[]{String.class, CharSequence.class, Integer.TYPE}).newInstance(new Object[]{"fcm_fallback_notification_channel", this.f4102b.getString(a.c.fcm_fallback_notification_channel_label), 3});
                notificationManager.getClass().getMethod("createNotificationChannel", new Class[]{cls}).invoke(notificationManager, new Object[]{newInstance});
            }
            return "fcm_fallback_notification_channel";
        } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | InstantiationException | LinkageError | NoSuchMethodException | SecurityException | InvocationTargetException unused) {
            return null;
        }
    }

    static Object[] c(Bundle bundle, String str) {
        String valueOf = String.valueOf(str);
        String a2 = a(bundle, "_loc_args".length() != 0 ? valueOf.concat("_loc_args") : new String(valueOf));
        if (TextUtils.isEmpty(a2)) {
            return null;
        }
        try {
            org.a.a aVar = new org.a.a(a2);
            Object[] objArr = new String[aVar.length()];
            for (int i = 0; i < objArr.length; i++) {
                objArr[i] = aVar.opt(i);
            }
            return objArr;
        } catch (org.a.b unused) {
            String valueOf2 = String.valueOf(str);
            String substring = ("_loc_args".length() != 0 ? valueOf2.concat("_loc_args") : new String(valueOf2)).substring(6);
            StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 41 + String.valueOf(a2).length());
            sb.append("Malformed ");
            sb.append(substring);
            sb.append(": ");
            sb.append(a2);
            sb.append("  Default value will be used.");
            return null;
        }
    }

    static String d(Bundle bundle) {
        String a2 = a(bundle, "gcm.n.sound2");
        return TextUtils.isEmpty(a2) ? a(bundle, "gcm.n.sound") : a2;
    }

    private final String d(Bundle bundle, String str) {
        StringBuilder sb;
        String a2 = a(bundle, str);
        if (!TextUtils.isEmpty(a2)) {
            return a2;
        }
        String b2 = b(bundle, str);
        if (TextUtils.isEmpty(b2)) {
            return null;
        }
        Resources resources = this.f4102b.getResources();
        int identifier = resources.getIdentifier(b2, "string", this.f4102b.getPackageName());
        if (identifier == 0) {
            String valueOf = String.valueOf(str);
            String substring = ("_loc_key".length() != 0 ? valueOf.concat("_loc_key") : new String(valueOf)).substring(6);
            sb = new StringBuilder(String.valueOf(substring).length() + 49 + String.valueOf(b2).length());
            sb.append(substring);
            sb.append(" resource not found: ");
            sb.append(b2);
        } else {
            Object[] c2 = c(bundle, str);
            if (c2 == null) {
                return resources.getString(identifier);
            }
            try {
                return resources.getString(identifier, c2);
            } catch (MissingFormatArgumentException unused) {
                String arrays = Arrays.toString(c2);
                sb = new StringBuilder(String.valueOf(b2).length() + 58 + String.valueOf(arrays).length());
                sb.append("Missing format argument for ");
                sb.append(b2);
                sb.append(": ");
                sb.append(arrays);
            }
        }
        sb.append(" Default value will be used.");
        return null;
    }

    private final PendingIntent e(Bundle bundle) {
        Intent intent;
        String a2 = a(bundle, "gcm.n.click_action");
        if (!TextUtils.isEmpty(a2)) {
            intent = new Intent(a2);
            intent.setPackage(this.f4102b.getPackageName());
            intent.setFlags(268435456);
        } else {
            Uri b2 = b(bundle);
            if (b2 != null) {
                intent = new Intent("android.intent.action.VIEW");
                intent.setPackage(this.f4102b.getPackageName());
                intent.setData(b2);
            } else {
                intent = this.f4102b.getPackageManager().getLaunchIntentForPackage(this.f4102b.getPackageName());
            }
        }
        if (intent == null) {
            return null;
        }
        intent.addFlags(67108864);
        Bundle bundle2 = new Bundle(bundle);
        FirebaseMessagingService.a(bundle2);
        intent.putExtras(bundle2);
        for (String str : bundle2.keySet()) {
            if (str.startsWith("gcm.n.") || str.startsWith("gcm.notification.")) {
                intent.removeExtra(str);
            }
        }
        return PendingIntent.getActivity(this.f4102b, this.f.incrementAndGet(), intent, 1073741824);
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0117  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x0119  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0180  */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x01ed  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x01f6  */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x0207  */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x0210  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x0215  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x021a  */
    /* JADX WARNING: Removed duplicated region for block: B:80:0x0237  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean c(android.os.Bundle r13) {
        /*
            r12 = this;
            java.lang.String r0 = "gcm.n.noui"
            java.lang.String r0 = a((android.os.Bundle) r13, (java.lang.String) r0)
            java.lang.String r1 = "1"
            boolean r0 = r1.equals(r0)
            r1 = 1
            if (r0 == 0) goto L_0x0010
            return r1
        L_0x0010:
            android.content.Context r0 = r12.f4102b
            java.lang.String r2 = "keyguard"
            java.lang.Object r0 = r0.getSystemService(r2)
            android.app.KeyguardManager r0 = (android.app.KeyguardManager) r0
            boolean r0 = r0.inKeyguardRestrictedInputMode()
            r2 = 0
            if (r0 != 0) goto L_0x005c
            boolean r0 = com.google.android.gms.common.util.m.zzamn()
            if (r0 != 0) goto L_0x002c
            r3 = 10
            android.os.SystemClock.sleep(r3)
        L_0x002c:
            int r0 = android.os.Process.myPid()
            android.content.Context r3 = r12.f4102b
            java.lang.String r4 = "activity"
            java.lang.Object r3 = r3.getSystemService(r4)
            android.app.ActivityManager r3 = (android.app.ActivityManager) r3
            java.util.List r3 = r3.getRunningAppProcesses()
            if (r3 == 0) goto L_0x005c
            java.util.Iterator r3 = r3.iterator()
        L_0x0044:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L_0x005c
            java.lang.Object r4 = r3.next()
            android.app.ActivityManager$RunningAppProcessInfo r4 = (android.app.ActivityManager.RunningAppProcessInfo) r4
            int r5 = r4.pid
            if (r5 != r0) goto L_0x0044
            int r0 = r4.importance
            r3 = 100
            if (r0 != r3) goto L_0x005c
            r0 = 1
            goto L_0x005d
        L_0x005c:
            r0 = 0
        L_0x005d:
            if (r0 == 0) goto L_0x0060
            return r2
        L_0x0060:
            java.lang.String r0 = "gcm.n.title"
            java.lang.String r0 = r12.d(r13, r0)
            boolean r3 = android.text.TextUtils.isEmpty(r0)
            if (r3 == 0) goto L_0x007c
            android.content.Context r0 = r12.f4102b
            android.content.pm.ApplicationInfo r0 = r0.getApplicationInfo()
            android.content.Context r3 = r12.f4102b
            android.content.pm.PackageManager r3 = r3.getPackageManager()
            java.lang.CharSequence r0 = r0.loadLabel(r3)
        L_0x007c:
            r4 = r0
            java.lang.String r0 = "gcm.n.body"
            java.lang.String r5 = r12.d(r13, r0)
            java.lang.String r0 = "gcm.n.icon"
            java.lang.String r0 = a((android.os.Bundle) r13, (java.lang.String) r0)
            boolean r3 = android.text.TextUtils.isEmpty(r0)
            if (r3 != 0) goto L_0x00dc
            android.content.Context r3 = r12.f4102b
            android.content.res.Resources r3 = r3.getResources()
            android.content.Context r6 = r12.f4102b
            java.lang.String r6 = r6.getPackageName()
            java.lang.String r7 = "drawable"
            int r6 = r3.getIdentifier(r0, r7, r6)
            if (r6 == 0) goto L_0x00aa
            boolean r7 = r12.a((int) r6)
            if (r7 == 0) goto L_0x00aa
            goto L_0x0102
        L_0x00aa:
            android.content.Context r6 = r12.f4102b
            java.lang.String r6 = r6.getPackageName()
            java.lang.String r7 = "mipmap"
            int r3 = r3.getIdentifier(r0, r7, r6)
            if (r3 == 0) goto L_0x00c0
            boolean r6 = r12.a((int) r3)
            if (r6 == 0) goto L_0x00c0
            r6 = r3
            goto L_0x0102
        L_0x00c0:
            java.lang.String r3 = java.lang.String.valueOf(r0)
            int r3 = r3.length()
            int r3 = r3 + 61
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>(r3)
            java.lang.String r3 = "Icon resource "
            r6.append(r3)
            r6.append(r0)
            java.lang.String r0 = " not found. Notification will use default icon."
            r6.append(r0)
        L_0x00dc:
            android.os.Bundle r0 = r12.a()
            java.lang.String r3 = "com.google.firebase.messaging.default_notification_icon"
            int r0 = r0.getInt(r3, r2)
            if (r0 == 0) goto L_0x00ee
            boolean r3 = r12.a((int) r0)
            if (r3 != 0) goto L_0x00f6
        L_0x00ee:
            android.content.Context r0 = r12.f4102b
            android.content.pm.ApplicationInfo r0 = r0.getApplicationInfo()
            int r0 = r0.icon
        L_0x00f6:
            if (r0 == 0) goto L_0x00fe
            boolean r3 = r12.a((int) r0)
            if (r3 != 0) goto L_0x0101
        L_0x00fe:
            r0 = 17301651(0x1080093, float:2.4979667E-38)
        L_0x0101:
            r6 = r0
        L_0x0102:
            java.lang.String r0 = "gcm.n.color"
            java.lang.String r0 = a((android.os.Bundle) r13, (java.lang.String) r0)
            java.lang.Integer r7 = r12.b((java.lang.String) r0)
            java.lang.String r0 = d(r13)
            boolean r3 = android.text.TextUtils.isEmpty(r0)
            r8 = 0
            if (r3 == 0) goto L_0x0119
            r0 = r8
            goto L_0x0176
        L_0x0119:
            java.lang.String r3 = "default"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L_0x0171
            android.content.Context r3 = r12.f4102b
            android.content.res.Resources r3 = r3.getResources()
            android.content.Context r9 = r12.f4102b
            java.lang.String r9 = r9.getPackageName()
            java.lang.String r10 = "raw"
            int r3 = r3.getIdentifier(r0, r10, r9)
            if (r3 == 0) goto L_0x0171
            java.lang.String r3 = "android.resource://"
            android.content.Context r9 = r12.f4102b
            java.lang.String r9 = r9.getPackageName()
            int r10 = r3.length()
            int r10 = r10 + 5
            java.lang.String r11 = java.lang.String.valueOf(r9)
            int r11 = r11.length()
            int r10 = r10 + r11
            java.lang.String r11 = java.lang.String.valueOf(r0)
            int r11 = r11.length()
            int r10 = r10 + r11
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>(r10)
            r11.append(r3)
            r11.append(r9)
            java.lang.String r3 = "/raw/"
            r11.append(r3)
            r11.append(r0)
            java.lang.String r0 = r11.toString()
            android.net.Uri r0 = android.net.Uri.parse(r0)
            goto L_0x0176
        L_0x0171:
            r0 = 2
            android.net.Uri r0 = android.media.RingtoneManager.getDefaultUri(r0)
        L_0x0176:
            android.app.PendingIntent r3 = r12.e(r13)
            boolean r9 = com.google.firebase.messaging.FirebaseMessagingService.b(r13)
            if (r9 == 0) goto L_0x01b3
            android.content.Intent r8 = new android.content.Intent
            java.lang.String r9 = "com.google.firebase.messaging.NOTIFICATION_OPEN"
            r8.<init>(r9)
            a((android.content.Intent) r8, (android.os.Bundle) r13)
            java.lang.String r9 = "pending_intent"
            r8.putExtra(r9, r3)
            android.content.Context r3 = r12.f4102b
            java.util.concurrent.atomic.AtomicInteger r9 = r12.f
            int r9 = r9.incrementAndGet()
            r10 = 1073741824(0x40000000, float:2.0)
            android.app.PendingIntent r3 = com.google.firebase.iid.y.zza(r3, r9, r8, r10)
            android.content.Intent r8 = new android.content.Intent
            java.lang.String r9 = "com.google.firebase.messaging.NOTIFICATION_DISMISS"
            r8.<init>(r9)
            a((android.content.Intent) r8, (android.os.Bundle) r13)
            android.content.Context r9 = r12.f4102b
            java.util.concurrent.atomic.AtomicInteger r11 = r12.f
            int r11 = r11.incrementAndGet()
            android.app.PendingIntent r8 = com.google.firebase.iid.y.zza(r9, r11, r8, r10)
        L_0x01b3:
            r9 = r3
            r10 = r8
            boolean r3 = com.google.android.gms.common.util.m.isAtLeastO()
            if (r3 == 0) goto L_0x01d8
            android.content.Context r3 = r12.f4102b
            android.content.pm.ApplicationInfo r3 = r3.getApplicationInfo()
            int r3 = r3.targetSdkVersion
            r8 = 25
            if (r3 <= r8) goto L_0x01d8
            java.lang.String r3 = "gcm.n.android_channel_id"
            java.lang.String r3 = a((android.os.Bundle) r13, (java.lang.String) r3)
            java.lang.String r11 = r12.c((java.lang.String) r3)
            r3 = r12
            r8 = r0
            android.app.Notification r0 = r3.a(r4, r5, r6, r7, r8, r9, r10, r11)
            goto L_0x0221
        L_0x01d8:
            androidx.core.app.NotificationCompat$Builder r3 = new androidx.core.app.NotificationCompat$Builder
            android.content.Context r8 = r12.f4102b
            r3.<init>(r8)
            androidx.core.app.NotificationCompat$Builder r3 = r3.setAutoCancel(r1)
            androidx.core.app.NotificationCompat$Builder r3 = r3.setSmallIcon(r6)
            boolean r6 = android.text.TextUtils.isEmpty(r4)
            if (r6 != 0) goto L_0x01f0
            r3.setContentTitle(r4)
        L_0x01f0:
            boolean r4 = android.text.TextUtils.isEmpty(r5)
            if (r4 != 0) goto L_0x0205
            r3.setContentText(r5)
            androidx.core.app.NotificationCompat$BigTextStyle r4 = new androidx.core.app.NotificationCompat$BigTextStyle
            r4.<init>()
            androidx.core.app.NotificationCompat$BigTextStyle r4 = r4.bigText(r5)
            r3.setStyle(r4)
        L_0x0205:
            if (r7 == 0) goto L_0x020e
            int r4 = r7.intValue()
            r3.setColor(r4)
        L_0x020e:
            if (r0 == 0) goto L_0x0213
            r3.setSound(r0)
        L_0x0213:
            if (r9 == 0) goto L_0x0218
            r3.setContentIntent(r9)
        L_0x0218:
            if (r10 == 0) goto L_0x021d
            r3.setDeleteIntent(r10)
        L_0x021d:
            android.app.Notification r0 = r3.build()
        L_0x0221:
            java.lang.String r3 = "gcm.n.tag"
            java.lang.String r13 = a((android.os.Bundle) r13, (java.lang.String) r3)
            android.content.Context r3 = r12.f4102b
            java.lang.String r4 = "notification"
            java.lang.Object r3 = r3.getSystemService(r4)
            android.app.NotificationManager r3 = (android.app.NotificationManager) r3
            boolean r4 = android.text.TextUtils.isEmpty(r13)
            if (r4 == 0) goto L_0x024e
            long r4 = android.os.SystemClock.uptimeMillis()
            r13 = 37
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>(r13)
            java.lang.String r13 = "FCM-Notification:"
            r6.append(r13)
            r6.append(r4)
            java.lang.String r13 = r6.toString()
        L_0x024e:
            r3.notify(r13, r2, r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.b.c(android.os.Bundle):boolean");
    }
}
