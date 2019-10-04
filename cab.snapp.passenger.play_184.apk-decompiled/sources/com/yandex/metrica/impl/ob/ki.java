package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.util.Pair;
import com.yandex.metrica.impl.av;
import com.yandex.metrica.impl.bq;
import com.yandex.metrica.impl.bs;
import com.yandex.metrica.impl.bv;
import com.yandex.metrica.impl.ob.im;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public class ki {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<bq.a.C0107a, av.a> f6226a = Collections.unmodifiableMap(new HashMap<bq.a.C0107a, av.a>() {
        {
            put(bq.a.C0107a.CELL, av.a.CELL);
            put(bq.a.C0107a.WIFI, av.a.WIFI);
        }
    });
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public final Context f6227b;
    private final gk<a> c;
    private final Handler d;
    /* access modifiers changed from: private */
    public final lk e;
    /* access modifiers changed from: private */
    public final bs f;
    private a g;
    private boolean h = false;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final List<C0120a> f6233a;

        /* renamed from: b  reason: collision with root package name */
        private final LinkedHashMap<String, Object> f6234b = new LinkedHashMap<>();

        /* renamed from: com.yandex.metrica.impl.ob.ki$a$a  reason: collision with other inner class name */
        public static class C0120a {

            /* renamed from: a  reason: collision with root package name */
            public final String f6235a;

            /* renamed from: b  reason: collision with root package name */
            public final String f6236b;
            public final String c;
            public final nu<String, String> d;
            public final long e;
            public final List<av.a> f;

            public C0120a(String str, String str2, String str3, nu<String, String> nuVar, long j, List<av.a> list) {
                this.f6235a = str;
                this.f6236b = str2;
                this.c = str3;
                this.e = j;
                this.f = list;
                this.d = nuVar;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || getClass() != obj.getClass()) {
                    return false;
                }
                return this.f6235a.equals(((C0120a) obj).f6235a);
            }

            public int hashCode() {
                return this.f6235a.hashCode();
            }
        }

        public static class b {

            /* renamed from: a  reason: collision with root package name */
            byte[] f6237a;

            /* renamed from: b  reason: collision with root package name */
            byte[] f6238b;
            /* access modifiers changed from: private */
            public final C0120a c;
            private C0121a d;
            private av.a e;
            private Integer f;
            private Map<String, List<String>> g;
            private Exception h;

            /* renamed from: com.yandex.metrica.impl.ob.ki$a$b$a  reason: collision with other inner class name */
            public enum C0121a {
                OFFLINE,
                INCOMPATIBLE_NETWORK_TYPE,
                COMPLETE,
                ERROR
            }

            public b(C0120a aVar) {
                this.c = aVar;
            }

            public C0120a a() {
                return this.c;
            }

            public C0121a b() {
                return this.d;
            }

            public void a(C0121a aVar) {
                this.d = aVar;
            }

            public av.a c() {
                return this.e;
            }

            public void a(av.a aVar) {
                this.e = aVar;
            }

            public Integer d() {
                return this.f;
            }

            public void a(Integer num) {
                this.f = num;
            }

            public byte[] e() {
                return this.f6237a;
            }

            public void a(byte[] bArr) {
                this.f6237a = bArr;
            }

            public Map<String, List<String>> f() {
                return this.g;
            }

            public void a(Map<String, List<String>> map) {
                this.g = map;
            }

            public Exception g() {
                return this.h;
            }

            public void a(Exception exc) {
                this.h = exc;
            }

            public byte[] h() {
                return this.f6238b;
            }

            public void b(byte[] bArr) {
                this.f6238b = bArr;
            }
        }

        public a(List<C0120a> list, List<String> list2) {
            this.f6233a = list;
            if (!bv.a((Collection) list2)) {
                for (String put : list2) {
                    this.f6234b.put(put, new Object());
                }
            }
        }

        public boolean a(C0120a aVar) {
            if (this.f6234b.get(aVar.f6235a) != null || this.f6233a.contains(aVar)) {
                return false;
            }
            this.f6233a.add(aVar);
            return true;
        }

        public Set<String> a() {
            HashSet hashSet = new HashSet();
            int i = 0;
            for (String add : this.f6234b.keySet()) {
                hashSet.add(add);
                i++;
                if (i > 1000) {
                    break;
                }
            }
            return hashSet;
        }

        public List<C0120a> b() {
            return this.f6233a;
        }

        public void b(C0120a aVar) {
            this.f6234b.put(aVar.f6235a, new Object());
            this.f6233a.remove(aVar);
        }
    }

    public ki(Context context, gk<a> gkVar, bs bsVar, lk lkVar) {
        this.f6227b = context;
        this.c = gkVar;
        this.f = bsVar;
        this.e = lkVar;
        HandlerThread handlerThread = new HandlerThread("YMM-RRT");
        handlerThread.start();
        this.d = new Handler(handlerThread.getLooper());
    }

    public synchronized void a() {
        this.d.post(new Runnable() {
            public void run() {
                ki.a(ki.this);
            }
        });
    }

    public synchronized void a(final List<bq.a> list, final long j) {
        this.d.post(new Runnable() {
            public void run() {
                ki.a(ki.this, list, j);
            }
        });
    }

    private static nu<String, String> a(List<Pair<String, String>> list) {
        nu<String, String> nuVar = new nu<>();
        for (Pair next : list) {
            nuVar.a(next.first, next.second);
        }
        return nuVar;
    }

    private void a(final a.C0120a aVar) {
        this.d.postDelayed(new Runnable() {
            public void run() {
                if (!ki.this.f.c()) {
                    ki.this.e.b(aVar);
                    a.b bVar = new a.b(aVar);
                    av.a d = av.d(ki.this.f6227b);
                    bVar.a(d);
                    if (d == av.a.OFFLINE) {
                        bVar.a(a.b.C0121a.OFFLINE);
                    } else if (!aVar.f.contains(d)) {
                        bVar.a(a.b.C0121a.INCOMPATIBLE_NETWORK_TYPE);
                    } else {
                        bVar.a(a.b.C0121a.ERROR);
                        try {
                            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(aVar.f6236b).openConnection();
                            for (Map.Entry entry : aVar.d.b()) {
                                httpURLConnection.setRequestProperty((String) entry.getKey(), TextUtils.join(",", (Iterable) entry.getValue()));
                            }
                            httpURLConnection.setInstanceFollowRedirects(true);
                            httpURLConnection.setRequestMethod(aVar.c);
                            httpURLConnection.setConnectTimeout(im.a.f6164a);
                            httpURLConnection.setReadTimeout(im.a.f6164a);
                            httpURLConnection.connect();
                            int responseCode = httpURLConnection.getResponseCode();
                            bVar.a(a.b.C0121a.COMPLETE);
                            bVar.a(Integer.valueOf(responseCode));
                            ki.a(httpURLConnection, bVar);
                            bVar.a((Map<String, List<String>>) httpURLConnection.getHeaderFields());
                        } catch (Exception e) {
                            bVar.a(e);
                        }
                    }
                    ki.this.a(bVar);
                }
            }
        }, Math.max(com.yandex.metrica.impl.a.f5656a, Math.max(aVar.e - System.currentTimeMillis(), 0)));
    }

    /* access modifiers changed from: private */
    public synchronized void a(a.b bVar) {
        this.g.b(bVar.c);
        b();
        this.e.a(bVar);
    }

    private void b() {
        this.c.a(this.g);
    }

    private static List<av.a> b(List<bq.a.C0107a> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (bq.a.C0107a aVar : list) {
            arrayList.add(f6226a.get(aVar));
        }
        return arrayList;
    }

    static /* synthetic */ void a(ki kiVar) {
        if (!kiVar.h) {
            kiVar.g = kiVar.c.a();
            for (a.C0120a a2 : kiVar.g.b()) {
                kiVar.a(a2);
            }
            kiVar.h = true;
        }
    }

    static /* synthetic */ void a(ki kiVar, List list, long j) {
        if (!bv.a((Collection) list)) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                bq.a aVar = (bq.a) it.next();
                if (!(aVar.f5785a == null || aVar.f5786b == null || aVar.c == null || aVar.e == null || aVar.e.longValue() < 0 || bv.a((Collection) aVar.f))) {
                    a.C0120a aVar2 = new a.C0120a(aVar.f5785a, aVar.f5786b, aVar.c, a(aVar.d), TimeUnit.SECONDS.toMillis(aVar.e.longValue() + j), b(aVar.f));
                    if (kiVar.g.a(aVar2)) {
                        kiVar.a(aVar2);
                        kiVar.e.a(aVar2);
                    }
                    kiVar.b();
                }
            }
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(6:0|1|2|3|4|6) */
    /* JADX WARNING: Code restructure failed: missing block: B:7:?, code lost:
        return;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x000e */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static /* synthetic */ void a(java.net.HttpURLConnection r2, com.yandex.metrica.impl.ob.ki.a.b r3) {
        /*
            r0 = 102400(0x19000, float:1.43493E-40)
            java.io.InputStream r1 = r2.getInputStream()     // Catch:{ IOException -> 0x000e }
            byte[] r1 = com.yandex.metrica.impl.w.a((java.io.InputStream) r1, (int) r0)     // Catch:{ IOException -> 0x000e }
            r3.a((byte[]) r1)     // Catch:{ IOException -> 0x000e }
        L_0x000e:
            java.io.InputStream r2 = r2.getErrorStream()     // Catch:{ IOException -> 0x0019 }
            byte[] r2 = com.yandex.metrica.impl.w.a((java.io.InputStream) r2, (int) r0)     // Catch:{ IOException -> 0x0019 }
            r3.b(r2)     // Catch:{ IOException -> 0x0019 }
        L_0x0019:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.ki.a(java.net.HttpURLConnection, com.yandex.metrica.impl.ob.ki$a$b):void");
    }
}
