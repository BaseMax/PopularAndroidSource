package com.yandex.metrica;

import android.content.Context;
import android.location.Location;
import com.yandex.metrica.impl.bx;
import com.yandex.metrica.impl.interact.DeviceInfo;
import java.util.Map;

public final class p {
    @Deprecated
    public static void a(IIdentifierCallback iIdentifierCallback) {
        bx.a(iIdentifierCallback);
    }

    public static void a(Context context, IIdentifierCallback iIdentifierCallback) {
        bx.a(context, iIdentifierCallback);
    }

    public static String u(String str) {
        return bx.a(str);
    }

    public static Boolean plat() {
        return bx.d();
    }

    public static boolean iifa() {
        return bx.a();
    }

    public static String pgai() {
        return bx.b();
    }

    public static DeviceInfo gdi(Context context) {
        return bx.a(context);
    }

    public static String gcni(Context context) {
        return bx.b(context);
    }

    @Deprecated
    public static String guid() {
        return bx.c();
    }

    public static String guid(Context context) {
        return bx.d(context);
    }

    public static String gdid(Context context) {
        return bx.e(context);
    }

    public static String mpn(Context context) {
        return bx.f(context);
    }

    public static void rce(int i, String str, String str2, Map<String, String> map) {
        bx.a(i, str, str2, map);
    }

    public static String gmsvn(int i) {
        return bx.a(i);
    }

    public static void seb() {
        bx.e();
    }

    @Deprecated
    public static YandexMetricaConfig cpcwh(YandexMetricaConfig yandexMetricaConfig, String str) {
        return bx.a(yandexMetricaConfig, str);
    }

    @Deprecated
    public static void rolu(Context context, Object obj) {
        bx.f();
    }

    @Deprecated
    public static void urolu(Context context, Object obj) {
        bx.g();
    }

    @Deprecated
    public static Location glkl(Context context) {
        return bx.g(context);
    }

    @Deprecated
    public static Integer gbc(Context context) {
        return bx.c(context.getApplicationContext());
    }
}
