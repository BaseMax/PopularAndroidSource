package com.google.android.gms.internal;

public class dx<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f3132a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static ed f3133b = null;
    private static int c = 0;
    private static String d = "com.google.android.providers.gsf.permission.READ_GSERVICES";
    private String e;
    private T f;
    private T g = null;

    protected dx(String str, T t) {
        this.e = str;
        this.f = t;
    }

    public static dx<Float> zza(String str, Float f2) {
        return new eb(str, f2);
    }

    public static dx<Integer> zza(String str, Integer num) {
        return new ea(str, num);
    }

    public static dx<Long> zza(String str, Long l) {
        return new dz(str, l);
    }

    public static dx<Boolean> zze(String str, boolean z) {
        return new dy(str, Boolean.valueOf(z));
    }

    public static dx<String> zzs(String str, String str2) {
        return new ec(str, str2);
    }
}
