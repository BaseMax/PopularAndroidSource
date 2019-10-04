package com.yandex.metrica.impl;

import androidx.core.view.InputDeviceCompat;
import androidx.fragment.app.FragmentTransaction;
import com.koushikdutta.ion.loader.MtpConstants;
import com.yandex.metrica.impl.ob.kw;
import com.yandex.metrica.impl.ob.ne;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import org.a.b;
import org.a.c;

public final class s {

    /* renamed from: a  reason: collision with root package name */
    public static final EnumSet<a> f6517a = EnumSet.of(a.EVENT_TYPE_INIT, new a[]{a.EVENT_TYPE_CUSTOM_EVENT, a.EVENT_TYPE_FIRST_ACTIVATION, a.EVENT_TYPE_REFERRER_RECEIVED_FROM_BROADCAST, a.EVENT_TYPE_SEND_REFERRER, a.EVENT_TYPE_APP_UPDATE});

    /* renamed from: b  reason: collision with root package name */
    private static final EnumSet<a> f6518b = EnumSet.of(a.EVENT_TYPE_UNDEFINED, new a[]{a.EVENT_TYPE_PURGE_BUFFER, a.EVENT_TYPE_UPDATE_COLLECT_INSTALLED_APPS, a.EVENT_TYPE_REFERRER_RECEIVED_FROM_BROADCAST, a.EVENT_TYPE_SEND_REFERRER, a.EVENT_TYPE_APP_ENVIRONMENT_UPDATED, a.EVENT_TYPE_APP_ENVIRONMENT_CLEARED, a.EVENT_TYPE_ACTIVATION});
    private static final EnumSet<a> c = EnumSet.of(a.EVENT_TYPE_SET_USER_INFO, new a[]{a.EVENT_TYPE_REPORT_USER_INFO, a.EVENT_TYPE_IDENTITY, a.EVENT_TYPE_UPDATE_COLLECT_INSTALLED_APPS, a.EVENT_TYPE_UNDEFINED, a.EVENT_TYPE_INIT, a.EVENT_TYPE_APP_UPDATE, a.EVENT_TYPE_SEND_REFERRER, a.EVENT_TYPE_ALIVE, a.EVENT_TYPE_STARTUP, a.EVENT_TYPE_APP_ENVIRONMENT_UPDATED, a.EVENT_TYPE_APP_ENVIRONMENT_CLEARED, a.EVENT_TYPE_ACTIVATION});
    private static final EnumSet<a> d = EnumSet.of(a.EVENT_TYPE_UPDATE_FOREGROUND_TIME, a.EVENT_TYPE_SET_USER_INFO, a.EVENT_TYPE_REPORT_USER_INFO);
    private static final EnumSet<a> e = EnumSet.of(a.EVENT_TYPE_EXCEPTION_UNHANDLED, a.EVENT_TYPE_EXCEPTION_USER, a.EVENT_TYPE_NATIVE_CRASH, a.EVENT_TYPE_REGULAR);
    private static final EnumSet<a> f = EnumSet.of(a.EVENT_TYPE_DIAGNOSTIC, a.EVENT_TYPE_DIAGNOSTIC_STATBOX, a.EVENT_TYPE_DIAGNOSTIC_DISABLE_STAT_SENDING);
    private static final EnumSet<a> g = EnumSet.of(a.EVENT_TYPE_REGULAR);

    public enum a {
        EVENT_TYPE_UNDEFINED(-1, "Unrecognized action"),
        EVENT_TYPE_INIT(0, "First initialization event"),
        EVENT_TYPE_REGULAR(1, "Regular event"),
        EVENT_TYPE_UPDATE_FOREGROUND_TIME(3, "Update foreground time"),
        EVENT_TYPE_EXCEPTION_USER(5, "Error from developer"),
        EVENT_TYPE_ALIVE(7, "App is still alive"),
        EVENT_TYPE_UPDATE_COLLECT_INSTALLED_APPS(8, "Update collect apps"),
        EVENT_TYPE_SET_USER_INFO(9, "User info"),
        EVENT_TYPE_REPORT_USER_INFO(10, "Report user info"),
        EVENT_TYPE_SEND_USER_PROFILE(40961, "Send user profile"),
        EVENT_TYPE_SET_USER_PROFILE_ID(40962, "Set user profile ID"),
        EVENT_TYPE_SEND_REVENUE_EVENT(40976, "Send revenue event"),
        EVENT_TYPE_PURGE_BUFFER(256, "Forcible buffer clearing"),
        EVENT_TYPE_NATIVE_CRASH(768, "Native crash of App"),
        EVENT_TYPE_STARTUP(1536, "Sending the startup due to lack of data"),
        EVENT_TYPE_IDENTITY(1792, "System identification"),
        EVENT_TYPE_DIAGNOSTIC(2048, "Diagnostic event"),
        EVENT_TYPE_DIAGNOSTIC_STATBOX(2049, "Diagnostic statbox event"),
        EVENT_TYPE_DIAGNOSTIC_DISABLE_STAT_SENDING(2050, "Disable stat send"),
        EVENT_TYPE_STATBOX(2304, "Event with statistical data"),
        EVENT_TYPE_REFERRER_RECEIVED_FROM_BROADCAST(4096, "Referrer received"),
        EVENT_TYPE_SEND_REFERRER(FragmentTransaction.TRANSIT_FRAGMENT_OPEN, "Send referrer"),
        EVENT_TYPE_REFERRER_OBTAINED_FROM_SERVICES(InputDeviceCompat.SOURCE_TOUCHSCREEN, "Referrer obtained"),
        EVENT_TYPE_APP_ENVIRONMENT_UPDATED(5376, "App Environment Updated"),
        EVENT_TYPE_APP_ENVIRONMENT_CLEARED(5632, "App Environment Cleared"),
        EVENT_TYPE_EXCEPTION_UNHANDLED(5888, "Crash of App"),
        EVENT_TYPE_ACTIVATION(6144, "Activation of metrica"),
        EVENT_TYPE_FIRST_ACTIVATION(6145, "First activation of metrica"),
        EVENT_TYPE_START(6400, "Start of new session"),
        EVENT_TYPE_CUSTOM_EVENT(8192, "Custom event"),
        EVENT_TYPE_APP_OPEN(MtpConstants.RESPONSE_NO_THUMBNAIL_PRESENT, "App open event"),
        EVENT_TYPE_APP_UPDATE(MtpConstants.RESPONSE_SPECIFICATION_OF_DESTINATION_UNSUPPORTED, "App update event"),
        EVENT_TYPE_PERMISSIONS(MtpConstants.FORMAT_UNDEFINED, "Permissions changed event"),
        EVENT_TYPE_APP_FEATURES(MtpConstants.FORMAT_ASSOCIATION, "Features, required by application"),
        EVENT_TYPE_UPDATE_PRE_ACTIVATION_CONFIG(16384, "Update pre-activation config");
        
        static final HashMap<Integer, a> J = null;
        private final int K;
        private final String L;

        static {
            int i;
            J = new HashMap<>();
            for (a aVar : values()) {
                J.put(Integer.valueOf(aVar.a()), aVar);
            }
        }

        private a(int i, String str) {
            this.K = i;
            this.L = str;
        }

        public final int a() {
            return this.K;
        }

        public final String b() {
            return this.L;
        }

        public static a a(int i) {
            a aVar = J.get(Integer.valueOf(i));
            return aVar == null ? EVENT_TYPE_UNDEFINED : aVar;
        }
    }

    public static boolean a(a aVar) {
        return !f6518b.contains(aVar);
    }

    public static boolean b(a aVar) {
        return !c.contains(aVar);
    }

    public static boolean a(int i) {
        return d.contains(a.a(i));
    }

    public static boolean b(int i) {
        return e.contains(a.a(i));
    }

    public static boolean c(int i) {
        return g.contains(a.a(i));
    }

    public static boolean d(int i) {
        return f.contains(a.a(i));
    }

    static i a(a aVar, String str) {
        return new e(str, "", aVar.a());
    }

    public static i c(a aVar) {
        return new e("", aVar.a());
    }

    public static i a(String str) {
        return new e(str, a.EVENT_TYPE_REGULAR.a());
    }

    static i a(String str, String str2) {
        return new e(str2, str, a.EVENT_TYPE_REGULAR.a());
    }

    static i b(String str, String str2) {
        return new e(str2, str, a.EVENT_TYPE_STATBOX.a());
    }

    public static i a() {
        i a2 = new i().a(a.EVENT_TYPE_DIAGNOSTIC_DISABLE_STAT_SENDING.a());
        try {
            a2.c(new c().put("stat_sending", (Object) new c().put("disabled", true)).toString());
        } catch (b unused) {
        }
        return a2;
    }

    static i c(String str, String str2) {
        return new e(str2, str, a.EVENT_TYPE_EXCEPTION_USER.a());
    }

    static i b(String str) {
        return new e(str, a.EVENT_TYPE_START.a());
    }

    static i c(String str) {
        return new e(str, a.EVENT_TYPE_UPDATE_FOREGROUND_TIME.a());
    }

    static i d(String str, String str2) {
        return new e(str2, str, a.EVENT_TYPE_EXCEPTION_UNHANDLED.a());
    }

    public static i d(String str) {
        return new e("", str, a.EVENT_TYPE_REFERRER_RECEIVED_FROM_BROADCAST.a());
    }

    public static i a(kw kwVar) {
        if (kwVar == null) {
            return new e("", a.EVENT_TYPE_REFERRER_OBTAINED_FROM_SERVICES.a());
        }
        return new e(kwVar.f6342a, a.EVENT_TYPE_REFERRER_OBTAINED_FROM_SERVICES.a()).a(kwVar.a());
    }

    static i e(String str) {
        return e("open", str);
    }

    static i f(String str) {
        return e("referral", str);
    }

    static i e(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("type", str);
        hashMap.put("link", str2);
        return new e(ne.a((Map) hashMap), "", a.EVENT_TYPE_APP_OPEN.a());
    }

    public static i a(aw awVar) {
        return new e(awVar == null ? "" : awVar.a(), "", a.EVENT_TYPE_ACTIVATION.a());
    }

    static i a(int i, String str, String str2, Map<String, Object> map) {
        return new e(str2, str, a.EVENT_TYPE_CUSTOM_EVENT.a(), i).f(ne.a((Map) map));
    }
}
