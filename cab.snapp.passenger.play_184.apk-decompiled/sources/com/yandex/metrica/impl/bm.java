package com.yandex.metrica.impl;

import android.os.Build;
import org.eclipse.paho.a.a.w;

public class bm {

    static class a {

        /* renamed from: a  reason: collision with root package name */
        static final boolean f5774a = bm.c("com.yandex.metrica.ConfigurationService");
    }

    static class b {

        /* renamed from: a  reason: collision with root package name */
        static final String f5775a = new b().a();

        b() {
        }

        /* access modifiers changed from: package-private */
        public String a() {
            if (a("com.unity3d.player.UnityPlayer")) {
                return "unity";
            }
            if (a("mono.MonoPackageManager")) {
                return "xamarin";
            }
            if (a("org.apache.cordova.CordovaPlugin")) {
                return "cordova";
            }
            return a("com.facebook.react.ReactRootView") ? "react" : "native";
        }

        /* access modifiers changed from: package-private */
        public boolean a(String str) {
            return bm.c(str);
        }
    }

    public static String a() {
        return "3.2.2";
    }

    public static String b() {
        return b.f5775a;
    }

    public static boolean c() {
        return a.f5774a;
    }

    public static String a(String str) {
        String str2;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(w.TOPIC_LEVEL_SEPARATOR);
        sb.append(a());
        sb.append(".11392 (");
        if (Build.MODEL.startsWith(Build.MANUFACTURER)) {
            str2 = bt.b(Build.MODEL);
        } else {
            str2 = bt.b(Build.MANUFACTURER) + " " + Build.MODEL;
        }
        sb.append(str2);
        sb.append("; Android ");
        sb.append(Build.VERSION.RELEASE);
        sb.append(")");
        return sb.toString();
    }

    /* access modifiers changed from: private */
    public static boolean c(String str) {
        try {
            return Class.forName(str) != null;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }
}
