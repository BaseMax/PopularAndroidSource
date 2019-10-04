package com.webengage.sdk.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.webengage.sdk.android.utils.DataType;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;

public class h {

    /* renamed from: a  reason: collision with root package name */
    public Context f5531a = null;

    protected h(Context context) {
        this.f5531a = context.getApplicationContext();
    }

    private Set<String> m() {
        return new HashSet(e("webengage_prefs.txt").getStringSet("push_shown", new HashSet()));
    }

    public List<String> a() {
        try {
            return (List) DataType.convert(e("webengage_prefs.txt").getString("com.webengage.session.evaluatedIds", ""), DataType.LIST, false);
        } catch (Exception unused) {
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public void a(long j) {
        a("amplify_interval", (Object) Long.valueOf(j));
    }

    public void a(String str, String str2) {
        a("webengage_volatile_prefs.txt", str, str2, true);
    }

    public void a(List<String> list) {
        try {
            a("com.webengage.session.evaluatedIds", DataType.convert(list, DataType.STRING, false));
        } catch (Exception unused) {
        }
    }

    public boolean a(String str, Object obj) {
        return a(str, obj, true);
    }

    public boolean a(String str, Object obj, boolean z) {
        return a("webengage_prefs.txt", str, obj, z);
    }

    public boolean a(String str, String str2, Object obj, boolean z) {
        SharedPreferences e = e(str);
        if (e == null) {
            return false;
        }
        if (!z && e.contains(str2)) {
            return true;
        }
        SharedPreferences.Editor edit = e.edit();
        if (obj instanceof String) {
            edit.putString(str2, String.valueOf(obj));
        } else if (obj instanceof Integer) {
            edit.putInt(str2, ((Integer) obj).intValue());
        } else if (obj instanceof Float) {
            edit.putFloat(str2, ((Float) obj).floatValue());
        } else if (obj instanceof Boolean) {
            edit.putBoolean(str2, ((Boolean) obj).booleanValue());
        } else if (obj instanceof Long) {
            edit.putLong(str2, ((Long) obj).longValue());
        } else if (obj instanceof Set) {
            if (Build.VERSION.SDK_INT < 11) {
                return false;
            }
            edit.putStringSet(str2, (Set) obj);
        }
        edit.apply();
        return true;
    }

    public Map<String, Map<String, String>> b() {
        try {
            return (Map) DataType.convert(e("webengage_prefs.txt").getString("com.webengage.session.variations", ""), DataType.MAP, false);
        } catch (Exception unused) {
            return null;
        }
    }

    public String c() {
        return e("webengage_prefs.txt").getString("com.webengage.static.regID", "");
    }

    public int d() {
        return e("webengage_prefs.txt").getInt("com.webengage.static.version_code", -1);
    }

    public void d(Map<String, Map<String, String>> map) {
        try {
            a("com.webengage.session.variations", DataType.convert(map, DataType.STRING, false));
        } catch (Exception unused) {
        }
    }

    public SharedPreferences e(String str) {
        return this.f5531a.getSharedPreferences(str, 0);
    }

    public String e() {
        return e("webengage_prefs.txt").getString("com.webengage.static.interfaceID", "");
    }

    public void f(String str) {
        Logger.d("WebEngage", "Push token: ".concat(String.valueOf(str)));
        a("com.webengage.static.regID", (Object) str);
    }

    public boolean f() {
        return e("webengage_volatile_prefs.txt").getBoolean("com.webengage.static.app_crashed", false);
    }

    public String g() {
        return e("webengage_prefs.txt").getString("com.webengage.session.suid", "");
    }

    public void g(String str) {
        SharedPreferences.Editor edit = e("webengage_volatile_prefs.txt").edit();
        edit.remove(str);
        edit.apply();
    }

    public String h() {
        return e("webengage_prefs.txt").getString("com.webengage.static.cuid", "");
    }

    public String h(String str) {
        return e("webengage_volatile_prefs.txt").getString(str, "");
    }

    public String i() {
        return e("webengage_prefs.txt").getString("com.webengage.static.luid", "");
    }

    /* access modifiers changed from: package-private */
    public void i(String str) {
        if (str != null) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            String format = simpleDateFormat.format(new Date());
            String str2 = str + " " + format;
            Set<String> m = m();
            m.add(str2);
            a("push_shown", (Object) m);
        }
    }

    /* access modifiers changed from: package-private */
    public Set<String> j() {
        Set<String> m = m();
        HashSet hashSet = new HashSet();
        for (String next : m) {
            hashSet.add(next.substring(0, next.lastIndexOf(" ")));
        }
        return hashSet;
    }

    /* access modifiers changed from: package-private */
    public void k() {
        Set<String> m = m();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        HashSet hashSet = new HashSet();
        for (String next : m) {
            try {
                if (System.currentTimeMillis() - simpleDateFormat.parse(next.substring(next.lastIndexOf(" ") + 1)).getTime() < 604800000) {
                    hashSet.add(next);
                }
            } catch (ParseException e) {
                Logger.e("WebEngage", "Exception while parsing push shown date", e);
            }
        }
        a("push_shown", (Object) hashSet);
    }

    /* access modifiers changed from: protected */
    public long l() {
        return e("webengage_prefs.txt").getLong("amplify_interval", 10800000);
    }
}
