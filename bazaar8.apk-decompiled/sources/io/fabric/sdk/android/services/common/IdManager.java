package io.fabric.sdk.android.services.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import e.a.a.a.a.b.C1047b;
import e.a.a.a.a.b.d;
import e.a.a.a.a.b.v;
import e.a.a.a.a.b.x;
import e.a.a.a.f;
import e.a.a.a.l;
import e.a.a.a.o;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;

public class IdManager {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f14894a = Pattern.compile("[^\\p{Alnum}]");

    /* renamed from: b  reason: collision with root package name */
    public static final String f14895b = Pattern.quote("/");

    /* renamed from: c  reason: collision with root package name */
    public final ReentrantLock f14896c = new ReentrantLock();

    /* renamed from: d  reason: collision with root package name */
    public final x f14897d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f14898e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f14899f;

    /* renamed from: g  reason: collision with root package name */
    public final Context f14900g;

    /* renamed from: h  reason: collision with root package name */
    public final String f14901h;

    /* renamed from: i  reason: collision with root package name */
    public final String f14902i;

    /* renamed from: j  reason: collision with root package name */
    public final Collection<l> f14903j;

    /* renamed from: k  reason: collision with root package name */
    public d f14904k;

    /* renamed from: l  reason: collision with root package name */
    public C1047b f14905l;
    public boolean m;
    public v n;

    public enum DeviceIdentifierType {
        WIFI_MAC_ADDRESS(1),
        BLUETOOTH_MAC_ADDRESS(2),
        FONT_TOKEN(53),
        ANDROID_ID(100),
        ANDROID_DEVICE_ID(101),
        ANDROID_SERIAL(102),
        ANDROID_ADVERTISING_ID(103);
        
        public final int protobufIndex;

        /* access modifiers changed from: public */
        DeviceIdentifierType(int i2) {
            this.protobufIndex = i2;
        }
    }

    public IdManager(Context context, String str, String str2, Collection<l> collection) {
        if (context == null) {
            throw new IllegalArgumentException("appContext must not be null");
        } else if (str == null) {
            throw new IllegalArgumentException("appIdentifier must not be null");
        } else if (collection != null) {
            this.f14900g = context;
            this.f14901h = str;
            this.f14902i = str2;
            this.f14903j = collection;
            this.f14897d = new x();
            this.f14904k = new d(context);
            this.n = new v();
            this.f14898e = CommonUtils.a(context, "com.crashlytics.CollectDeviceIdentifiers", true);
            if (!this.f14898e) {
                o e2 = f.e();
                e2.d("Fabric", "Device ID collection disabled for " + context.getPackageName());
            }
            this.f14899f = CommonUtils.a(context, "com.crashlytics.CollectUserIdentifiers", true);
            if (!this.f14899f) {
                o e3 = f.e();
                e3.d("Fabric", "User information collection disabled for " + context.getPackageName());
            }
        } else {
            throw new IllegalArgumentException("kits must not be null");
        }
    }

    public boolean a() {
        return this.f14899f;
    }

    public final String b(String str) {
        return str.replaceAll(f14895b, "");
    }

    public synchronized C1047b c() {
        if (!this.m) {
            this.f14905l = this.f14904k.a();
            this.m = true;
        }
        return this.f14905l;
    }

    public String d() {
        return this.f14901h;
    }

    public String e() {
        String str = this.f14902i;
        if (str != null) {
            return str;
        }
        SharedPreferences i2 = CommonUtils.i(this.f14900g);
        a(i2);
        String string = i2.getString("crashlytics.installation.id", null);
        return string == null ? b(i2) : string;
    }

    public Map<DeviceIdentifierType, String> f() {
        HashMap hashMap = new HashMap();
        for (l next : this.f14903j) {
            if (next instanceof e.a.a.a.a.b.o) {
                for (Map.Entry next2 : ((e.a.a.a.a.b.o) next).getDeviceIdentifiers().entrySet()) {
                    a(hashMap, (DeviceIdentifierType) next2.getKey(), (String) next2.getValue());
                }
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    public String g() {
        return this.f14897d.a(this.f14900g);
    }

    public String h() {
        return String.format(Locale.US, "%s/%s", new Object[]{b(Build.MANUFACTURER), b(Build.MODEL)});
    }

    public String i() {
        return b(Build.VERSION.INCREMENTAL);
    }

    public String j() {
        return b(Build.VERSION.RELEASE);
    }

    public String k() {
        return j() + "/" + i();
    }

    public Boolean l() {
        if (m()) {
            return b();
        }
        return null;
    }

    public boolean m() {
        return this.f14898e && !this.n.e(this.f14900g);
    }

    public final String a(String str) {
        if (str == null) {
            return null;
        }
        return f14894a.matcher(str).replaceAll("").toLowerCase(Locale.US);
    }

    @SuppressLint({"CommitPrefEdits"})
    public final String b(SharedPreferences sharedPreferences) {
        this.f14896c.lock();
        try {
            String string = sharedPreferences.getString("crashlytics.installation.id", null);
            if (string == null) {
                string = a(UUID.randomUUID().toString());
                sharedPreferences.edit().putString("crashlytics.installation.id", string).commit();
            }
            return string;
        } finally {
            this.f14896c.unlock();
        }
    }

    public final void a(SharedPreferences sharedPreferences) {
        C1047b c2 = c();
        if (c2 != null) {
            a(sharedPreferences, c2.f13672a);
        }
    }

    @SuppressLint({"CommitPrefEdits"})
    public final void a(SharedPreferences sharedPreferences, String str) {
        this.f14896c.lock();
        try {
            if (!TextUtils.isEmpty(str)) {
                String string = sharedPreferences.getString("crashlytics.advertising.id", null);
                if (TextUtils.isEmpty(string)) {
                    sharedPreferences.edit().putString("crashlytics.advertising.id", str).commit();
                } else if (!string.equals(str)) {
                    sharedPreferences.edit().remove("crashlytics.installation.id").putString("crashlytics.advertising.id", str).commit();
                }
                this.f14896c.unlock();
            }
        } finally {
            this.f14896c.unlock();
        }
    }

    public final Boolean b() {
        C1047b c2 = c();
        if (c2 != null) {
            return Boolean.valueOf(c2.f13673b);
        }
        return null;
    }

    public final void a(Map<DeviceIdentifierType, String> map, DeviceIdentifierType deviceIdentifierType, String str) {
        if (str != null) {
            map.put(deviceIdentifierType, str);
        }
    }
}
