package com.yandex.metrica.impl.ob;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.os.IBinder;
import com.yandex.metrica.impl.bo;
import com.yandex.metrica.impl.bt;
import com.yandex.metrica.impl.ob.nf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CountDownLatch;

public class eq {

    /* renamed from: a  reason: collision with root package name */
    private Context f5972a;

    /* renamed from: b  reason: collision with root package name */
    private nf f5973b;
    private a c;
    private ep d;

    static class a {

        /* renamed from: a  reason: collision with root package name */
        private Context f5976a;

        /* renamed from: b  reason: collision with root package name */
        private C0108a f5977b;
        private final ServiceConnection c = new ServiceConnection() {
            public void onServiceDisconnected(ComponentName componentName) {
            }

            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                a.this.f5977b.a();
                a.b(a.this);
            }
        };

        /* renamed from: com.yandex.metrica.impl.ob.eq$a$a  reason: collision with other inner class name */
        interface C0108a {
            void a();

            void b();
        }

        public a(Context context, C0108a aVar) {
            this.f5976a = context;
            this.f5977b = aVar;
        }

        private void a() {
            this.f5977b.b();
        }

        /* access modifiers changed from: package-private */
        public void a(Intent intent) {
            try {
                if (!this.f5976a.bindService(intent, this.c, 1)) {
                    a();
                }
            } catch (Exception unused) {
                a();
            }
        }

        static /* synthetic */ void b(a aVar) {
            try {
                aVar.f5976a.unbindService(aVar.c);
            } catch (Exception unused) {
            }
        }
    }

    public eq(Context context, ma maVar) {
        this(context, new nf("com.yandex.metrica.impl.configservice.client.ConfigurationServiceLauncher.lock"), new ep(context, maVar));
    }

    eq(Context context, nf nfVar, ep epVar) {
        this.f5972a = context;
        this.f5973b = nfVar;
        this.d = epVar;
    }

    public void a() {
        try {
            this.f5973b.c();
            String b2 = b();
            boolean z = true;
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            if (b2 == null) {
                Context context = this.f5972a;
                Intent action = new Intent().setAction("com.yandex.metrica.configuration.ACTION_START");
                bo.a(action);
                List<ResolveInfo> a2 = bo.a(context, action);
                if (a2.isEmpty()) {
                    b2 = null;
                } else if (a2.size() == 1) {
                    b2 = a2.get(0).serviceInfo.packageName;
                } else {
                    List<ResolveInfo> a3 = a(a2);
                    if (a3.size() == 1) {
                        b2 = a3.get(0).serviceInfo.packageName;
                    } else {
                        b2 = b(a(this.f5972a, a3));
                    }
                }
            }
            if (!bt.a(b2)) {
                final Intent intent = new Intent().setAction("com.yandex.metrica.configuration.ACTION_START").setPackage(b2);
                this.c = new a(this.f5972a, new a.C0108a() {
                    public void a() {
                        eq.a(eq.this, intent);
                        countDownLatch.countDown();
                    }

                    public void b() {
                        countDownLatch.countDown();
                    }
                });
                this.c.a(intent);
            } else {
                z = false;
            }
            if (z) {
                countDownLatch.await();
            }
        } catch (nf.a | InterruptedException unused) {
        } catch (Throwable th) {
            this.f5973b.b();
            throw th;
        }
        this.f5973b.b();
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0037 A[SYNTHETIC, Splitter:B:19:0x0037] */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x003c A[Catch:{ IOException -> 0x003f }] */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0044 A[SYNTHETIC, Splitter:B:29:0x0044] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0049 A[Catch:{ IOException -> 0x004c }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String b() {
        /*
            r0 = 0
            android.net.LocalSocket r1 = new android.net.LocalSocket     // Catch:{ IOException -> 0x0040, all -> 0x0032 }
            r1.<init>()     // Catch:{ IOException -> 0x0040, all -> 0x0032 }
            android.net.LocalSocketAddress r2 = new android.net.LocalSocketAddress     // Catch:{ IOException -> 0x0030, all -> 0x002e }
            java.lang.String r3 = "com.yandex.metrica.configuration.MetricaConfigurationService"
            r2.<init>(r3)     // Catch:{ IOException -> 0x0030, all -> 0x002e }
            r1.connect(r2)     // Catch:{ IOException -> 0x0030, all -> 0x002e }
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch:{ IOException -> 0x0030, all -> 0x002e }
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch:{ IOException -> 0x0030, all -> 0x002e }
            java.io.InputStream r4 = r1.getInputStream()     // Catch:{ IOException -> 0x0030, all -> 0x002e }
            r3.<init>(r4)     // Catch:{ IOException -> 0x0030, all -> 0x002e }
            r2.<init>(r3)     // Catch:{ IOException -> 0x0030, all -> 0x002e }
            java.lang.String r0 = r2.readLine()     // Catch:{ IOException -> 0x0042, all -> 0x0029 }
            r1.close()     // Catch:{ IOException -> 0x0028 }
            r2.close()     // Catch:{ IOException -> 0x0028 }
        L_0x0028:
            return r0
        L_0x0029:
            r0 = move-exception
            r5 = r2
            r2 = r0
            r0 = r5
            goto L_0x0035
        L_0x002e:
            r2 = move-exception
            goto L_0x0035
        L_0x0030:
            r2 = r0
            goto L_0x0042
        L_0x0032:
            r1 = move-exception
            r2 = r1
            r1 = r0
        L_0x0035:
            if (r1 == 0) goto L_0x003a
            r1.close()     // Catch:{ IOException -> 0x003f }
        L_0x003a:
            if (r0 == 0) goto L_0x003f
            r0.close()     // Catch:{ IOException -> 0x003f }
        L_0x003f:
            throw r2
        L_0x0040:
            r1 = r0
            r2 = r1
        L_0x0042:
            if (r1 == 0) goto L_0x0047
            r1.close()     // Catch:{ IOException -> 0x004c }
        L_0x0047:
            if (r2 == 0) goto L_0x004c
            r2.close()     // Catch:{ IOException -> 0x004c }
        L_0x004c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.eq.b():java.lang.String");
    }

    private static List<ResolveInfo> a(List<ResolveInfo> list) {
        ArrayList arrayList = new ArrayList();
        int i = Integer.MIN_VALUE;
        for (ResolveInfo next : list) {
            int i2 = next.serviceInfo.metaData.getInt("metrica:configuration:api:level");
            if (i2 > i) {
                arrayList = new ArrayList();
                arrayList.add(next);
                i = i2;
            } else if (i2 == i) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    private static List<ResolveInfo> a(Context context, List<ResolveInfo> list) {
        ArrayList arrayList = new ArrayList();
        long j = Long.MAX_VALUE;
        for (ResolveInfo next : list) {
            long a2 = bo.a(context.getPackageManager(), next.serviceInfo.packageName);
            if (a2 < j) {
                arrayList = new ArrayList();
                arrayList.add(next);
                j = a2;
            } else if (a2 == j) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    private static String b(List<ResolveInfo> list) {
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : list) {
            arrayList.add(resolveInfo.serviceInfo.packageName);
        }
        Collections.sort(arrayList);
        return (String) arrayList.get(0);
    }

    static /* synthetic */ void a(eq eqVar, Intent intent) {
        intent.putExtras(eqVar.d.a());
        try {
            eqVar.f5972a.startService(intent);
        } catch (Exception unused) {
        }
    }
}
