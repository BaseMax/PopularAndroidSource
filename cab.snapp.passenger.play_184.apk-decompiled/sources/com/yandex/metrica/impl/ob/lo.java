package com.yandex.metrica.impl.ob;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.util.Base64;
import com.yandex.metrica.MetricaService;
import com.yandex.metrica.impl.bv;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;

public class lo implements Runnable {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public final ServiceConnection f6382a = new ServiceConnection() {
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        }

        public void onServiceDisconnected(ComponentName componentName) {
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final Handler f6383b = new Handler(Looper.getMainLooper()) {
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 100) {
                lo.this.e();
                try {
                    lo.this.d.unbindService(lo.this.f6382a);
                } catch (Exception unused) {
                    lm.a(lo.this.d).reportEvent("socket_unbind_has_thrown_exception");
                }
            }
        }
    };
    private HashMap<String, c> c = new HashMap<String, c>() {
        {
            put("p", new c() {
                public b a(Uri uri, Socket socket) {
                    return new a(uri, socket);
                }
            });
        }
    };
    /* access modifiers changed from: private */
    public final Context d;
    private boolean e;
    private ServerSocket f;
    /* access modifiers changed from: private */
    public final ln g = new ln();
    /* access modifiers changed from: private */
    public lr h;
    private Thread i;

    class a extends b {
        /* JADX WARNING: type inference failed for: r3v0, types: [java.net.Socket, java.util.Map<java.lang.String, java.lang.String>] */
        /* JADX WARNING: Unknown variable types count: 1 */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        a(android.net.Uri r2, java.util.Map<java.lang.String, java.lang.String> r3) {
            /*
                r0 = this;
                com.yandex.metrica.impl.ob.lo.this = r1
                r0.<init>(r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.lo.a.<init>(com.yandex.metrica.impl.ob.lo, android.net.Uri, java.net.Socket):void");
        }

        public void a() {
            if (lo.this.h.f6402b.equals(this.f6394b.getQueryParameter("t"))) {
                a("HTTP/1.1 200 OK", (Map<String, String>) new HashMap<String, String>() {
                    {
                        put(io.fabric.sdk.android.services.network.c.HEADER_CONTENT_TYPE, "text/plain; charset=utf-8");
                        put("Access-Control-Allow-Origin", "*");
                        put("Access-Control-Allow-Methods", "GET");
                    }
                }, c());
            } else {
                lm.a(lo.this.d).reportEvent("socket_request_with_wrong_token");
            }
        }

        /* access modifiers changed from: protected */
        public void b() {
            lm.a(lo.this.d).reportEvent("socket_sync_succeed", (Map<String, Object>) lo.c(this.c.getLocalPort()));
        }

        /* access modifiers changed from: protected */
        public void a(Throwable th) {
            lm.a(lo.this.d).reportError("socket_io_exception_during_sync", th);
        }

        /* access modifiers changed from: protected */
        public byte[] c() {
            try {
                return Base64.encode(new ny().a(lo.this.g.a().getBytes()), 0);
            } catch (org.a.b unused) {
                return new byte[0];
            }
        }
    }

    abstract class b {

        /* renamed from: b  reason: collision with root package name */
        Uri f6394b;
        Socket c;

        public abstract void a();

        /* access modifiers changed from: protected */
        public abstract void a(Throwable th);

        /* access modifiers changed from: protected */
        public abstract void b();

        /* JADX WARNING: type inference failed for: r2v0, types: [java.net.Socket, java.util.Map<java.lang.String, java.lang.String>] */
        /* JADX WARNING: Unknown variable types count: 1 */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        b(android.net.Uri r1, java.util.Map<java.lang.String, java.lang.String> r2) {
            /*
                r0 = this;
                r0.<init>()
                r0.f6394b = r1
                r0.c = r2
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.lo.b.<init>(android.net.Uri, java.net.Socket):void");
        }

        private static void a(OutputStream outputStream) throws IOException {
            outputStream.write("\r\n".getBytes());
        }

        /* access modifiers changed from: package-private */
        public void a(String str, Map<String, String> map, byte[] bArr) {
            BufferedOutputStream bufferedOutputStream = null;
            try {
                BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(this.c.getOutputStream());
                try {
                    bufferedOutputStream2.write(str.getBytes());
                    a((OutputStream) bufferedOutputStream2);
                    for (Map.Entry next : map.entrySet()) {
                        a((OutputStream) bufferedOutputStream2, (String) next.getKey(), (String) next.getValue());
                    }
                    a((OutputStream) bufferedOutputStream2, io.fabric.sdk.android.services.network.c.HEADER_CONTENT_LENGTH, String.valueOf(bArr.length));
                    a((OutputStream) bufferedOutputStream2);
                    bufferedOutputStream2.write(bArr);
                    bufferedOutputStream2.flush();
                    b();
                    bv.a((Closeable) bufferedOutputStream2);
                } catch (IOException e) {
                    e = e;
                    bufferedOutputStream = bufferedOutputStream2;
                    try {
                        a((Throwable) e);
                        bv.a((Closeable) bufferedOutputStream);
                    } catch (Throwable th) {
                        th = th;
                        bufferedOutputStream2 = bufferedOutputStream;
                        bv.a((Closeable) bufferedOutputStream2);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bv.a((Closeable) bufferedOutputStream2);
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
                a((Throwable) e);
                bv.a((Closeable) bufferedOutputStream);
            }
        }

        private static void a(OutputStream outputStream, String str, String str2) throws IOException {
            outputStream.write((str + ": " + str2).getBytes());
            a(outputStream);
        }
    }

    static abstract class c {
        public abstract b a(Uri uri, Socket socket);

        c() {
        }
    }

    public lo(Context context) {
        this.d = context;
        h.a().a(this, s.class, l.a(new k<s>() {
            public void a(s sVar) {
                lo.this.g.a(sVar.f6500a);
            }
        }).a(new i<s>() {
            public boolean a(s sVar) {
                return !lo.this.d.getPackageName().equals(sVar.f6501b);
            }
        }).a());
        h.a().a(this, o.class, l.a(new k<o>() {
            public void a(o oVar) {
                lo.this.g.b(oVar.f6470a);
            }
        }).a());
        h.a().a(this, m.class, l.a(new k<m>() {
            public void a(m mVar) {
                lo.this.g.c(mVar.f6415a);
            }
        }).a());
        h.a().a(this, n.class, l.a(new k<n>() {
            public void a(n nVar) {
                lo.this.g.d(nVar.f6446a);
            }
        }).a());
        h.a().a(this, q.class, l.a(new k<q>() {
            public void a(q qVar) {
                lo.this.a(qVar.f6497a);
                lo.this.c();
            }
        }).a());
    }

    public void a() {
        if (this.e) {
            b();
            Handler handler = this.f6383b;
            handler.sendMessageDelayed(handler.obtainMessage(100), TimeUnit.SECONDS.toMillis(this.h.f6401a));
        }
    }

    public void b() {
        this.f6383b.removeMessages(100);
    }

    public synchronized void c() {
        if (!(this.e || this.h == null)) {
            this.e = true;
            d();
            this.i = ni.a("YMM-IB", this);
            this.i.start();
        }
    }

    /* access modifiers changed from: package-private */
    public void a(lr lrVar) {
        this.h = lrVar;
    }

    /* access modifiers changed from: package-private */
    public void d() {
        Intent intent = new Intent(this.d, MetricaService.class);
        intent.setAction("com.yandex.metrica.ACTION_BIND_TO_LOCAL_SERVER");
        try {
            if (!this.d.bindService(intent, this.f6382a, 1)) {
                lm.a(this.d).reportEvent("socket_bind_has_failed");
            }
        } catch (Exception unused) {
            lm.a(this.d).reportEvent("socket_bind_has_thrown_exception");
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0021, code lost:
        return;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void e() {
        /*
            r2 = this;
            monitor-enter(r2)
            r0 = 0
            r2.e = r0     // Catch:{ IOException -> 0x0020, all -> 0x001d }
            java.lang.Thread r0 = r2.i     // Catch:{ IOException -> 0x0020, all -> 0x001d }
            r1 = 0
            if (r0 == 0) goto L_0x0010
            java.lang.Thread r0 = r2.i     // Catch:{ IOException -> 0x0020, all -> 0x001d }
            r0.interrupt()     // Catch:{ IOException -> 0x0020, all -> 0x001d }
            r2.i = r1     // Catch:{ IOException -> 0x0020, all -> 0x001d }
        L_0x0010:
            java.net.ServerSocket r0 = r2.f     // Catch:{ IOException -> 0x0020, all -> 0x001d }
            if (r0 == 0) goto L_0x001b
            java.net.ServerSocket r0 = r2.f     // Catch:{ IOException -> 0x0020, all -> 0x001d }
            r0.close()     // Catch:{ IOException -> 0x0020, all -> 0x001d }
            r2.f = r1     // Catch:{ IOException -> 0x0020, all -> 0x001d }
        L_0x001b:
            monitor-exit(r2)
            return
        L_0x001d:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        L_0x0020:
            monitor-exit(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.lo.e():void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00ca, code lost:
        if (r4 != null) goto L_0x00b2;
     */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00da A[SYNTHETIC, Splitter:B:54:0x00da] */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x00e6 A[SYNTHETIC, Splitter:B:62:0x00e6] */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x00dd A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
            r9 = this;
            java.net.ServerSocket r0 = r9.f()
            r9.f = r0
            r0 = 26
            boolean r1 = com.yandex.metrica.impl.bv.a((int) r0)
            if (r1 == 0) goto L_0x0014
            r1 = 40230(0x9d26, float:5.6374E-41)
            android.net.TrafficStats.setThreadStatsTag(r1)
        L_0x0014:
            java.net.ServerSocket r1 = r9.f
            if (r1 == 0) goto L_0x00f1
        L_0x0018:
            boolean r1 = r9.e
            if (r1 == 0) goto L_0x00f1
            monitor-enter(r9)
            java.net.ServerSocket r1 = r9.f     // Catch:{ all -> 0x00ee }
            monitor-exit(r9)     // Catch:{ all -> 0x00ee }
            if (r1 == 0) goto L_0x0018
            r2 = 0
            java.net.Socket r1 = r1.accept()     // Catch:{ Exception -> 0x00ea, all -> 0x00e2 }
            boolean r3 = com.yandex.metrica.impl.bv.a((int) r0)     // Catch:{ Exception -> 0x00e0, all -> 0x00de }
            if (r3 == 0) goto L_0x0030
            android.net.TrafficStats.tagSocket(r1)     // Catch:{ Exception -> 0x00e0, all -> 0x00de }
        L_0x0030:
            r3 = 1000(0x3e8, float:1.401E-42)
            r1.setSoTimeout(r3)     // Catch:{ Exception -> 0x00bc, all -> 0x00b8 }
            java.util.HashMap r3 = new java.util.HashMap     // Catch:{ Exception -> 0x00bc, all -> 0x00b8 }
            r3.<init>()     // Catch:{ Exception -> 0x00bc, all -> 0x00b8 }
            java.io.BufferedReader r4 = new java.io.BufferedReader     // Catch:{ Exception -> 0x00bc, all -> 0x00b8 }
            java.io.InputStreamReader r5 = new java.io.InputStreamReader     // Catch:{ Exception -> 0x00bc, all -> 0x00b8 }
            java.io.InputStream r6 = r1.getInputStream()     // Catch:{ Exception -> 0x00bc, all -> 0x00b8 }
            r5.<init>(r6)     // Catch:{ Exception -> 0x00bc, all -> 0x00b8 }
            r4.<init>(r5)     // Catch:{ Exception -> 0x00bc, all -> 0x00b8 }
            java.lang.String r2 = r4.readLine()     // Catch:{ Exception -> 0x00b6 }
            boolean r5 = android.text.TextUtils.isEmpty(r2)     // Catch:{ Exception -> 0x00b6 }
            if (r5 != 0) goto L_0x00b2
            java.lang.String r5 = "GET /"
            boolean r5 = r2.startsWith(r5)     // Catch:{ Exception -> 0x00b6 }
            if (r5 == 0) goto L_0x00b2
            r5 = 47
            int r5 = r2.indexOf(r5)     // Catch:{ Exception -> 0x00b6 }
            int r5 = r5 + 1
            r6 = 32
            int r6 = r2.indexOf(r6, r5)     // Catch:{ Exception -> 0x00b6 }
            if (r6 <= 0) goto L_0x00ad
            java.lang.String r2 = r2.substring(r5, r6)     // Catch:{ Exception -> 0x00b6 }
            android.net.Uri r5 = android.net.Uri.parse(r2)     // Catch:{ Exception -> 0x00b6 }
        L_0x0072:
            java.lang.String r6 = r4.readLine()     // Catch:{ Exception -> 0x00b6 }
            boolean r7 = android.text.TextUtils.isEmpty(r6)     // Catch:{ Exception -> 0x00b6 }
            if (r7 != 0) goto L_0x0091
            java.lang.String r7 = ": "
            int r7 = r6.indexOf(r7)     // Catch:{ Exception -> 0x00b6 }
            r8 = 0
            java.lang.String r8 = r6.substring(r8, r7)     // Catch:{ Exception -> 0x00b6 }
            int r7 = r7 + 2
            java.lang.String r6 = r6.substring(r7)     // Catch:{ Exception -> 0x00b6 }
            r3.put(r8, r6)     // Catch:{ Exception -> 0x00b6 }
            goto L_0x0072
        L_0x0091:
            java.util.HashMap<java.lang.String, com.yandex.metrica.impl.ob.lo$c> r3 = r9.c     // Catch:{ Exception -> 0x00b6 }
            java.lang.String r6 = r5.getPath()     // Catch:{ Exception -> 0x00b6 }
            java.lang.Object r3 = r3.get(r6)     // Catch:{ Exception -> 0x00b6 }
            com.yandex.metrica.impl.ob.lo$c r3 = (com.yandex.metrica.impl.ob.lo.c) r3     // Catch:{ Exception -> 0x00b6 }
            if (r3 == 0) goto L_0x00a7
            com.yandex.metrica.impl.ob.lo$b r2 = r3.a(r5, r1)     // Catch:{ Exception -> 0x00b6 }
            r2.a()     // Catch:{ Exception -> 0x00b6 }
            goto L_0x00b2
        L_0x00a7:
            java.lang.String r3 = "request_to_unknown_path"
            r9.a(r3, r2)     // Catch:{ Exception -> 0x00b6 }
            goto L_0x00b2
        L_0x00ad:
            java.lang.String r3 = "invalid_route"
            r9.a(r3, r2)     // Catch:{ Exception -> 0x00b6 }
        L_0x00b2:
            r4.close()     // Catch:{ Exception -> 0x00e0, all -> 0x00de }
            goto L_0x00cd
        L_0x00b6:
            r2 = move-exception
            goto L_0x00bf
        L_0x00b8:
            r3 = move-exception
            r4 = r2
            r2 = r3
            goto L_0x00d8
        L_0x00bc:
            r3 = move-exception
            r4 = r2
            r2 = r3
        L_0x00bf:
            android.content.Context r3 = r9.d     // Catch:{ all -> 0x00d7 }
            com.yandex.metrica.b r3 = com.yandex.metrica.impl.ob.lm.a(r3)     // Catch:{ all -> 0x00d7 }
            java.lang.String r5 = "LocalHttpServer exception"
            r3.reportError(r5, r2)     // Catch:{ all -> 0x00d7 }
            if (r4 == 0) goto L_0x00cd
            goto L_0x00b2
        L_0x00cd:
            if (r1 == 0) goto L_0x0018
        L_0x00cf:
            r1.close()     // Catch:{ IOException -> 0x00d4 }
            goto L_0x0018
        L_0x00d4:
            goto L_0x0018
        L_0x00d7:
            r2 = move-exception
        L_0x00d8:
            if (r4 == 0) goto L_0x00dd
            r4.close()     // Catch:{ Exception -> 0x00e0, all -> 0x00de }
        L_0x00dd:
            throw r2     // Catch:{ Exception -> 0x00e0, all -> 0x00de }
        L_0x00de:
            r0 = move-exception
            goto L_0x00e4
        L_0x00e0:
            goto L_0x00eb
        L_0x00e2:
            r0 = move-exception
            r1 = r2
        L_0x00e4:
            if (r1 == 0) goto L_0x00e9
            r1.close()     // Catch:{ IOException -> 0x00e9 }
        L_0x00e9:
            throw r0
        L_0x00ea:
            r1 = r2
        L_0x00eb:
            if (r1 == 0) goto L_0x0018
            goto L_0x00cf
        L_0x00ee:
            r0 = move-exception
            monitor-exit(r9)     // Catch:{ all -> 0x00ee }
            throw r0
        L_0x00f1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.lo.run():void");
    }

    /* access modifiers changed from: package-private */
    public ServerSocket f() {
        Iterator<Integer> it = this.h.c.iterator();
        ServerSocket serverSocket = null;
        Integer num = null;
        while (serverSocket == null && it.hasNext()) {
            try {
                Integer next = it.next();
                if (next != null) {
                    try {
                        serverSocket = a(next.intValue());
                    } catch (SocketException unused) {
                        num = next;
                        lm.a(this.d).reportEvent("socket_port_already_in_use", (Map<String, Object>) c(num.intValue()));
                    } catch (IOException unused2) {
                    }
                }
                num = next;
            } catch (SocketException unused3) {
                lm.a(this.d).reportEvent("socket_port_already_in_use", (Map<String, Object>) c(num.intValue()));
            } catch (IOException unused4) {
            }
        }
        return serverSocket;
    }

    /* access modifiers changed from: package-private */
    public ServerSocket a(int i2) throws IOException {
        return new ServerSocket(i2);
    }

    /* access modifiers changed from: private */
    public static HashMap<String, Object> c(int i2) {
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("port", String.valueOf(i2));
        return hashMap;
    }

    private void a(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("uri", str2);
        lm.a(this.d).reportEvent("socket_".concat(String.valueOf(str)), (Map<String, Object>) hashMap);
    }
}
