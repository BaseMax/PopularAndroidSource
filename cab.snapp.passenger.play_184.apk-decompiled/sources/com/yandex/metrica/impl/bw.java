package com.yandex.metrica.impl;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import com.yandex.metrica.impl.d;
import com.yandex.metrica.impl.ob.h;
import com.yandex.metrica.impl.ob.k;
import com.yandex.metrica.impl.ob.l;
import com.yandex.metrica.impl.ob.ma;
import com.yandex.metrica.impl.ob.r;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.a.b;
import org.a.c;

public class bw implements d {
    private static volatile bw c;
    private static final Object d = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final Context f5799a;

    /* renamed from: b  reason: collision with root package name */
    private final WifiManager f5800b;
    private d.a<org.a.a> e;
    private d.a<List<a>> f;
    /* access modifiers changed from: private */
    public ma g;

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f5802a;

        /* renamed from: b  reason: collision with root package name */
        public final String f5803b;

        public a(String str, String str2) {
            this.f5802a = str;
            this.f5803b = str2;
        }
    }

    private bw(Context context) {
        this(context, (WifiManager) context.getApplicationContext().getSystemService("wifi"), h.a());
    }

    public static bw a(Context context) {
        if (c == null) {
            synchronized (d) {
                if (c == null) {
                    c = new bw(context.getApplicationContext());
                }
            }
        }
        return c;
    }

    public synchronized org.a.a a() {
        if (!e()) {
            return new org.a.a();
        }
        if (this.e.b() || this.e.c()) {
            this.e.a(d());
        }
        return this.e.a();
    }

    private static String a(String str) {
        if (str == null) {
            return null;
        }
        return str.toUpperCase(Locale.US).replace(":", "");
    }

    private List<ScanResult> c() {
        try {
            return this.f5800b.getScanResults();
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x003d, code lost:
        if (r2.getIpAddress() == 0) goto L_0x003f;
     */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0042  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0044  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x004f  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x007a  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x007e  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0053 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private org.a.a d() {
        /*
            r8 = this;
            boolean r0 = r8.i()
            r1 = 0
            if (r0 == 0) goto L_0x0014
            android.content.Context r0 = r8.f5799a
            boolean r0 = com.yandex.metrica.impl.au.a(r0)
            if (r0 == 0) goto L_0x0014
            java.util.List r0 = r8.c()
            goto L_0x0015
        L_0x0014:
            r0 = r1
        L_0x0015:
            boolean r2 = r8.h()
            if (r2 == 0) goto L_0x003f
            android.content.Context r2 = r8.f5799a
            java.lang.String r3 = "android.permission.ACCESS_WIFI_STATE"
            boolean r2 = com.yandex.metrica.impl.au.a(r2, r3)
            if (r2 == 0) goto L_0x003f
            android.net.wifi.WifiManager r2 = r8.f5800b
            android.net.wifi.WifiInfo r2 = r2.getConnectionInfo()
            if (r2 == 0) goto L_0x0040
            java.lang.String r3 = r2.getBSSID()
            java.lang.String r4 = "00:00:00:00:00:00"
            boolean r3 = r4.equals(r3)
            if (r3 != 0) goto L_0x003f
            int r3 = r2.getIpAddress()
            if (r3 != 0) goto L_0x0040
        L_0x003f:
            r2 = r1
        L_0x0040:
            if (r2 != 0) goto L_0x0044
            r3 = r1
            goto L_0x0048
        L_0x0044:
            java.lang.String r3 = r2.getBSSID()
        L_0x0048:
            org.a.a r4 = new org.a.a
            r4.<init>()
            if (r0 == 0) goto L_0x007e
            java.util.Iterator r0 = r0.iterator()
        L_0x0053:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L_0x00a1
            java.lang.Object r2 = r0.next()
            android.net.wifi.ScanResult r2 = (android.net.wifi.ScanResult) r2
            if (r2 == 0) goto L_0x0053
            r5 = 0
            java.lang.String r6 = r2.BSSID     // Catch:{ NoSuchFieldError -> 0x006f }
            if (r6 == 0) goto L_0x006f
            boolean r5 = r6.equals(r3)     // Catch:{ NoSuchFieldError -> 0x006f }
            java.lang.String r6 = a((java.lang.String) r6)     // Catch:{ NoSuchFieldError -> 0x006f }
            goto L_0x0070
        L_0x006f:
            r6 = r1
        L_0x0070:
            java.lang.String r7 = r2.SSID
            int r2 = r2.level
            org.a.c r2 = a(r6, r7, r5, r2)
            if (r2 == 0) goto L_0x0053
            r4.put((java.lang.Object) r2)
            goto L_0x0053
        L_0x007e:
            if (r2 == 0) goto L_0x00a1
            java.lang.String r0 = a((java.lang.String) r3)
            java.lang.String r3 = r2.getSSID()
            if (r3 != 0) goto L_0x008b
            goto L_0x0093
        L_0x008b:
            java.lang.String r1 = "\""
            java.lang.String r5 = ""
            java.lang.String r1 = r3.replace(r1, r5)
        L_0x0093:
            r3 = 1
            int r2 = r2.getRssi()
            org.a.c r0 = a(r0, r1, r3, r2)
            if (r0 == 0) goto L_0x00a1
            r4.put((java.lang.Object) r0)
        L_0x00a1:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.bw.d():org.a.a");
    }

    private static c a(String str, String str2, boolean z, int i) {
        try {
            return new c().put("mac", (Object) str).put("ssid", (Object) str2).put("signal_strength", i).put("is_connected", z);
        } catch (b unused) {
            return null;
        }
    }

    private boolean e() {
        try {
            return this.f5800b.isWifiEnabled();
        } catch (Exception unused) {
            return false;
        }
    }

    public List<a> b() {
        if (this.f.b() || this.f.c()) {
            ArrayList arrayList = new ArrayList();
            a((List<a>) arrayList);
            this.f.a(arrayList);
        }
        return this.f.a();
    }

    private void a(List<a> list) {
        if (g()) {
            StringBuilder sb = new StringBuilder();
            try {
                Iterator<T> it = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
                while (it.hasNext()) {
                    NetworkInterface networkInterface = (NetworkInterface) it.next();
                    byte[] hardwareAddress = networkInterface.getHardwareAddress();
                    if (hardwareAddress != null) {
                        for (byte valueOf : hardwareAddress) {
                            sb.append(String.format(Locale.US, "%02X:", new Object[]{Byte.valueOf(valueOf)}));
                        }
                        if (sb.length() > 0) {
                            sb.deleteCharAt(sb.length() - 1);
                            list.add(new a(networkInterface.getName(), sb.toString()));
                            sb.setLength(0);
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public String b(Context context) {
        if (f()) {
            try {
                if (au.a(context, "android.permission.ACCESS_WIFI_STATE")) {
                    WifiConfiguration wifiConfiguration = (WifiConfiguration) this.f5800b.getClass().getMethod("getWifiApConfiguration", new Class[0]).invoke(this.f5800b, new Object[0]);
                    if (wifiConfiguration != null) {
                        return wifiConfiguration.SSID;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public int c(Context context) {
        if (!f()) {
            return -1;
        }
        try {
            if (!au.a(context, "android.permission.ACCESS_WIFI_STATE")) {
                return -1;
            }
            int intValue = ((Integer) this.f5800b.getClass().getMethod("getWifiApState", new Class[0]).invoke(this.f5800b, new Object[0])).intValue();
            if (intValue > 10) {
                intValue -= 10;
            }
            return intValue;
        } catch (Throwable unused) {
            return -1;
        }
    }

    private synchronized boolean f() {
        return j() && this.g.m.k;
    }

    private synchronized boolean g() {
        return j() && this.g.m.j;
    }

    private synchronized boolean h() {
        return j() && this.g.m.i;
    }

    private synchronized boolean i() {
        return j() && this.g.m.h;
    }

    private synchronized boolean j() {
        return this.g != null;
    }

    bw(Context context, WifiManager wifiManager, h hVar) {
        this.e = new d.a<>();
        this.f = new d.a<>();
        this.f5799a = context;
        this.f5800b = wifiManager;
        hVar.a(this, r.class, l.a(new k<r>() {
            public void a(r rVar) {
                synchronized (bw.this) {
                    ma unused = bw.this.g = rVar.f6499b;
                }
            }
        }).a());
    }
}
