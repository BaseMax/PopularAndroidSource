package com.koushikdutta.async;

import android.os.Build;
import android.os.Handler;
import com.koushikdutta.async.b.i;
import com.koushikdutta.async.b.j;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.Arrays;
import java.util.Comparator;
import java.util.PriorityQueue;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class h {
    public static final String LOGTAG = "NIO";

    /* renamed from: a  reason: collision with root package name */
    static h f4535a = new h();
    static final WeakHashMap<Thread, h> e = new WeakHashMap<>();
    static final /* synthetic */ boolean g = (!h.class.desiredAssertionStatus());
    private static ExecutorService i = a("AsyncServer-worker-");
    /* access modifiers changed from: private */
    public static final Comparator<InetAddress> j = new Comparator<InetAddress>() {
        public final int compare(InetAddress inetAddress, InetAddress inetAddress2) {
            boolean z = inetAddress instanceof Inet4Address;
            if (z && (inetAddress2 instanceof Inet4Address)) {
                return 0;
            }
            if (!(inetAddress instanceof Inet6Address) || !(inetAddress2 instanceof Inet6Address)) {
                return (!z || !(inetAddress2 instanceof Inet6Address)) ? 1 : -1;
            }
            return 0;
        }
    };
    private static ExecutorService k = a("AsyncServer-resolver-");

    /* renamed from: b  reason: collision with root package name */
    String f4536b;
    int c;
    PriorityQueue<f> d;
    Thread f;
    /* access modifiers changed from: private */
    public aa h;

    static class a extends IOException {
        public a(Exception exc) {
            super(exc);
        }
    }

    class b extends i<c> {

        /* renamed from: a  reason: collision with root package name */
        SocketChannel f4568a;

        /* renamed from: b  reason: collision with root package name */
        com.koushikdutta.async.a.b f4569b;

        private b() {
        }

        /* synthetic */ b(h hVar, byte b2) {
            this();
        }

        public final void cancelCleanup() {
            super.cancelCleanup();
            try {
                if (this.f4568a != null) {
                    this.f4568a.close();
                }
            } catch (IOException unused) {
            }
        }
    }

    static class c implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private final ThreadGroup f4570a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicInteger f4571b = new AtomicInteger(1);
        private final String c;

        c(String str) {
            ThreadGroup threadGroup;
            SecurityManager securityManager = System.getSecurityManager();
            if (securityManager != null) {
                threadGroup = securityManager.getThreadGroup();
            } else {
                threadGroup = Thread.currentThread().getThreadGroup();
            }
            this.f4570a = threadGroup;
            this.c = str;
        }

        public final Thread newThread(Runnable runnable) {
            ThreadGroup threadGroup = this.f4570a;
            Thread thread = new Thread(threadGroup, runnable, this.c + this.f4571b.getAndIncrement(), 0);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            return thread;
        }
    }

    static class d<T> {

        /* renamed from: a  reason: collision with root package name */
        T f4572a;

        private d() {
        }

        /* synthetic */ d(byte b2) {
            this();
        }
    }

    static class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        boolean f4573a;

        /* renamed from: b  reason: collision with root package name */
        Runnable f4574b;
        ae c;
        Handler d;

        private e() {
        }

        /* synthetic */ e(byte b2) {
            this();
        }

        public final void run() {
            synchronized (this) {
                if (!this.f4573a) {
                    this.f4573a = true;
                    try {
                        this.f4574b.run();
                    } finally {
                        this.c.remove(this);
                        this.d.removeCallbacks(this);
                        this.c = null;
                        this.d = null;
                        this.f4574b = null;
                    }
                }
            }
        }
    }

    static class f {
        public Runnable runnable;
        public long time;

        public f(Runnable runnable2, long j) {
            this.runnable = runnable2;
            this.time = j;
        }
    }

    static class g implements Comparator<f> {
        public static g INSTANCE = new g();

        private g() {
        }

        public final int compare(f fVar, f fVar2) {
            if (fVar.time == fVar2.time) {
                return 0;
            }
            return fVar.time > fVar2.time ? 1 : -1;
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT <= 8) {
                System.setProperty("java.net.preferIPv4Stack", "true");
                System.setProperty("java.net.preferIPv6Addresses", "false");
            }
        } catch (Throwable unused) {
        }
    }

    public static void post(Handler handler, Runnable runnable) {
        e eVar = new e((byte) 0);
        ae a2 = ae.a(handler.getLooper().getThread());
        eVar.c = a2;
        eVar.d = handler;
        eVar.f4574b = runnable;
        a2.add((Runnable) eVar);
        handler.post(eVar);
        a2.f4453b.release();
    }

    public static h getDefault() {
        return f4535a;
    }

    public boolean isRunning() {
        return this.h != null;
    }

    public h() {
        this(null);
    }

    public h(String str) {
        this.c = 0;
        this.d = new PriorityQueue<>(1, g.INSTANCE);
        this.f4536b = str == null ? "AsyncServer" : str;
    }

    public void removeAllCallbacks(Object obj) {
        synchronized (this) {
            this.d.remove(obj);
        }
    }

    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:30:0x0064 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object postDelayed(java.lang.Runnable r5, long r6) {
        /*
            r4 = this;
            monitor-enter(r4)
            r0 = 0
            int r2 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r2 <= 0) goto L_0x0010
            long r0 = java.lang.System.currentTimeMillis()     // Catch:{ all -> 0x000d }
            long r0 = r0 + r6
            goto L_0x0035
        L_0x000d:
            r5 = move-exception
            goto L_0x00b8
        L_0x0010:
            int r2 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r2 != 0) goto L_0x001c
            int r6 = r4.c     // Catch:{ all -> 0x000d }
            int r7 = r6 + 1
            r4.c = r7     // Catch:{ all -> 0x000d }
            long r0 = (long) r6     // Catch:{ all -> 0x000d }
            goto L_0x0035
        L_0x001c:
            java.util.PriorityQueue<com.koushikdutta.async.h$f> r6 = r4.d     // Catch:{ all -> 0x000d }
            int r6 = r6.size()     // Catch:{ all -> 0x000d }
            if (r6 <= 0) goto L_0x0035
            java.util.PriorityQueue<com.koushikdutta.async.h$f> r6 = r4.d     // Catch:{ all -> 0x000d }
            java.lang.Object r6 = r6.peek()     // Catch:{ all -> 0x000d }
            com.koushikdutta.async.h$f r6 = (com.koushikdutta.async.h.f) r6     // Catch:{ all -> 0x000d }
            long r6 = r6.time     // Catch:{ all -> 0x000d }
            r2 = 1
            long r6 = r6 - r2
            long r0 = java.lang.Math.min(r0, r6)     // Catch:{ all -> 0x000d }
        L_0x0035:
            java.util.PriorityQueue<com.koushikdutta.async.h$f> r6 = r4.d     // Catch:{ all -> 0x000d }
            com.koushikdutta.async.h$f r7 = new com.koushikdutta.async.h$f     // Catch:{ all -> 0x000d }
            r7.<init>(r5, r0)     // Catch:{ all -> 0x000d }
            r6.add(r7)     // Catch:{ all -> 0x000d }
            com.koushikdutta.async.aa r5 = r4.h     // Catch:{ all -> 0x000d }
            if (r5 != 0) goto L_0x00a4
            monitor-enter(r4)     // Catch:{ all -> 0x000d }
            com.koushikdutta.async.aa r5 = r4.h     // Catch:{ all -> 0x00a1 }
            if (r5 == 0) goto L_0x006c
            boolean r5 = g     // Catch:{ all -> 0x00a1 }
            if (r5 != 0) goto L_0x005b
            java.lang.Thread r5 = java.lang.Thread.currentThread()     // Catch:{ all -> 0x00a1 }
            java.lang.Thread r6 = r4.f     // Catch:{ all -> 0x00a1 }
            if (r5 != r6) goto L_0x0055
            goto L_0x005b
        L_0x0055:
            java.lang.AssertionError r5 = new java.lang.AssertionError     // Catch:{ all -> 0x00a1 }
            r5.<init>()     // Catch:{ all -> 0x00a1 }
            throw r5     // Catch:{ all -> 0x00a1 }
        L_0x005b:
            com.koushikdutta.async.aa r5 = r4.h     // Catch:{ all -> 0x00a1 }
            java.util.PriorityQueue<com.koushikdutta.async.h$f> r6 = r4.d     // Catch:{ all -> 0x00a1 }
            monitor-exit(r4)     // Catch:{ all -> 0x00a1 }
            b(r4, r5, r6)     // Catch:{ a -> 0x0064 }
            goto L_0x00a4
        L_0x0064:
            java.nio.channels.Selector r5 = r5.getSelector()     // Catch:{ Exception -> 0x00a4 }
            r5.close()     // Catch:{ Exception -> 0x00a4 }
            goto L_0x00a4
        L_0x006c:
            com.koushikdutta.async.aa r5 = new com.koushikdutta.async.aa     // Catch:{ IOException -> 0x009f }
            java.nio.channels.spi.SelectorProvider r6 = java.nio.channels.spi.SelectorProvider.provider()     // Catch:{ IOException -> 0x009f }
            java.nio.channels.spi.AbstractSelector r6 = r6.openSelector()     // Catch:{ IOException -> 0x009f }
            r5.<init>(r6)     // Catch:{ IOException -> 0x009f }
            r4.h = r5     // Catch:{ IOException -> 0x009f }
            java.util.PriorityQueue<com.koushikdutta.async.h$f> r6 = r4.d     // Catch:{ IOException -> 0x009f }
            com.koushikdutta.async.h$6 r0 = new com.koushikdutta.async.h$6     // Catch:{ all -> 0x00a1 }
            java.lang.String r1 = r4.f4536b     // Catch:{ all -> 0x00a1 }
            r0.<init>(r1, r5, r6)     // Catch:{ all -> 0x00a1 }
            r4.f = r0     // Catch:{ all -> 0x00a1 }
            boolean r5 = r4.b()     // Catch:{ all -> 0x00a1 }
            if (r5 != 0) goto L_0x0098
            com.koushikdutta.async.aa r5 = r4.h     // Catch:{ Exception -> 0x0091 }
            r5.close()     // Catch:{ Exception -> 0x0091 }
        L_0x0091:
            r5 = 0
            r4.h = r5     // Catch:{ all -> 0x00a1 }
            r4.f = r5     // Catch:{ all -> 0x00a1 }
            monitor-exit(r4)     // Catch:{ all -> 0x00a1 }
            goto L_0x00a4
        L_0x0098:
            java.lang.Thread r5 = r4.f     // Catch:{ all -> 0x00a1 }
            r5.start()     // Catch:{ all -> 0x00a1 }
            monitor-exit(r4)     // Catch:{ all -> 0x00a1 }
            goto L_0x00a4
        L_0x009f:
            monitor-exit(r4)     // Catch:{ all -> 0x00a1 }
            goto L_0x00a4
        L_0x00a1:
            r5 = move-exception
            monitor-exit(r4)     // Catch:{ all -> 0x00a1 }
            throw r5     // Catch:{ all -> 0x000d }
        L_0x00a4:
            boolean r5 = r4.isAffinityThread()     // Catch:{ all -> 0x000d }
            if (r5 != 0) goto L_0x00b6
            com.koushikdutta.async.aa r5 = r4.h     // Catch:{ all -> 0x000d }
            java.util.concurrent.ExecutorService r6 = i     // Catch:{ all -> 0x000d }
            com.koushikdutta.async.h$1 r0 = new com.koushikdutta.async.h$1     // Catch:{ all -> 0x000d }
            r0.<init>(r5)     // Catch:{ all -> 0x000d }
            r6.execute(r0)     // Catch:{ all -> 0x000d }
        L_0x00b6:
            monitor-exit(r4)     // Catch:{ all -> 0x000d }
            return r7
        L_0x00b8:
            monitor-exit(r4)     // Catch:{ all -> 0x000d }
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.h.postDelayed(java.lang.Runnable, long):java.lang.Object");
    }

    public Object postImmediate(Runnable runnable) {
        if (Thread.currentThread() != getAffinity()) {
            return postDelayed(runnable, -1);
        }
        runnable.run();
        return null;
    }

    public Object post(Runnable runnable) {
        return postDelayed(runnable, 0);
    }

    public Object post(final com.koushikdutta.async.a.a aVar, final Exception exc) {
        return post(new Runnable() {
            public final void run() {
                aVar.onCompleted(exc);
            }
        });
    }

    public void run(final Runnable runnable) {
        if (Thread.currentThread() == this.f) {
            post(runnable);
            a(this, this.d);
            return;
        }
        final Semaphore semaphore = new Semaphore(0);
        post(new Runnable() {
            public final void run() {
                runnable.run();
                semaphore.release();
            }
        });
        try {
            semaphore.acquire();
        } catch (InterruptedException unused) {
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0043, code lost:
        if (r0 != false) goto L_0x0049;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:?, code lost:
        r2.acquire();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void stop() {
        /*
            r8 = this;
            monitor-enter(r8)
            boolean r0 = r8.isAffinityThread()     // Catch:{ all -> 0x004d }
            com.koushikdutta.async.aa r1 = r8.h     // Catch:{ all -> 0x004d }
            if (r1 != 0) goto L_0x000b
            monitor-exit(r8)     // Catch:{ all -> 0x004d }
            return
        L_0x000b:
            java.util.WeakHashMap<java.lang.Thread, com.koushikdutta.async.h> r2 = e     // Catch:{ all -> 0x004d }
            monitor-enter(r2)     // Catch:{ all -> 0x004d }
            java.util.WeakHashMap<java.lang.Thread, com.koushikdutta.async.h> r3 = e     // Catch:{ all -> 0x004a }
            java.lang.Thread r4 = r8.f     // Catch:{ all -> 0x004a }
            r3.remove(r4)     // Catch:{ all -> 0x004a }
            monitor-exit(r2)     // Catch:{ all -> 0x004a }
            java.util.concurrent.Semaphore r2 = new java.util.concurrent.Semaphore     // Catch:{ all -> 0x004d }
            r3 = 0
            r2.<init>(r3)     // Catch:{ all -> 0x004d }
            java.util.PriorityQueue<com.koushikdutta.async.h$f> r3 = r8.d     // Catch:{ all -> 0x004d }
            com.koushikdutta.async.h$f r4 = new com.koushikdutta.async.h$f     // Catch:{ all -> 0x004d }
            com.koushikdutta.async.h$10 r5 = new com.koushikdutta.async.h$10     // Catch:{ all -> 0x004d }
            r5.<init>(r1, r2)     // Catch:{ all -> 0x004d }
            r6 = 0
            r4.<init>(r5, r6)     // Catch:{ all -> 0x004d }
            r3.add(r4)     // Catch:{ all -> 0x004d }
            r1.wakeupOnce()     // Catch:{ all -> 0x004d }
            b(r1)     // Catch:{ all -> 0x004d }
            java.util.PriorityQueue r1 = new java.util.PriorityQueue     // Catch:{ all -> 0x004d }
            r3 = 1
            com.koushikdutta.async.h$g r4 = com.koushikdutta.async.h.g.INSTANCE     // Catch:{ all -> 0x004d }
            r1.<init>(r3, r4)     // Catch:{ all -> 0x004d }
            r8.d = r1     // Catch:{ all -> 0x004d }
            r1 = 0
            r8.h = r1     // Catch:{ all -> 0x004d }
            r8.f = r1     // Catch:{ all -> 0x004d }
            monitor-exit(r8)     // Catch:{ all -> 0x004d }
            if (r0 != 0) goto L_0x0049
            r2.acquire()     // Catch:{ Exception -> 0x0049 }
        L_0x0049:
            return
        L_0x004a:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x004a }
            throw r0     // Catch:{ all -> 0x004d }
        L_0x004d:
            r0 = move-exception
            monitor-exit(r8)     // Catch:{ all -> 0x004d }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.h.stop():void");
    }

    public i listen(InetAddress inetAddress, int i2, com.koushikdutta.async.a.e eVar) {
        d dVar = new d((byte) 0);
        final InetAddress inetAddress2 = inetAddress;
        final int i3 = i2;
        final com.koushikdutta.async.a.e eVar2 = eVar;
        final d dVar2 = dVar;
        AnonymousClass11 r0 = new Runnable() {
            public final void run() {
                final ab abVar;
                final ServerSocketChannel serverSocketChannel;
                IOException e2;
                InetSocketAddress inetSocketAddress;
                try {
                    serverSocketChannel = ServerSocketChannel.open();
                    try {
                        abVar = new ab(serverSocketChannel);
                        try {
                            if (inetAddress2 == null) {
                                inetSocketAddress = new InetSocketAddress(i3);
                            } else {
                                inetSocketAddress = new InetSocketAddress(inetAddress2, i3);
                            }
                            serverSocketChannel.socket().bind(inetSocketAddress);
                            final SelectionKey register = abVar.register(h.this.h.getSelector());
                            register.attach(eVar2);
                            com.koushikdutta.async.a.e eVar = eVar2;
                            d dVar = dVar2;
                            T r5 = new i() {
                                public final int getLocalPort() {
                                    return serverSocketChannel.socket().getLocalPort();
                                }

                                public final void stop() {
                                    com.koushikdutta.async.e.g.closeQuietly(abVar);
                                    try {
                                        register.cancel();
                                    } catch (Exception unused) {
                                    }
                                }
                            };
                            dVar.f4572a = r5;
                            eVar.onListening((i) r5);
                        } catch (IOException e3) {
                            e2 = e3;
                            com.koushikdutta.async.e.g.closeQuietly(abVar, serverSocketChannel);
                            eVar2.onCompleted(e2);
                        }
                    } catch (IOException e4) {
                        IOException iOException = e4;
                        abVar = null;
                        e2 = iOException;
                        com.koushikdutta.async.e.g.closeQuietly(abVar, serverSocketChannel);
                        eVar2.onCompleted(e2);
                    }
                } catch (IOException e5) {
                    abVar = null;
                    e2 = e5;
                    serverSocketChannel = null;
                    com.koushikdutta.async.e.g.closeQuietly(abVar, serverSocketChannel);
                    eVar2.onCompleted(e2);
                }
            }
        };
        run(r0);
        return (i) dVar.f4572a;
    }

    /* access modifiers changed from: private */
    public b a(final InetSocketAddress inetSocketAddress, final com.koushikdutta.async.a.b bVar) {
        final b bVar2 = new b(this, (byte) 0);
        if (g || !inetSocketAddress.isUnresolved()) {
            post(new Runnable() {
                /* JADX WARNING: Removed duplicated region for block: B:13:0x003b  */
                /* Code decompiled incorrectly, please refer to instructions dump. */
                public final void run() {
                    /*
                        r5 = this;
                        com.koushikdutta.async.h$b r0 = r0
                        boolean r0 = r0.isCancelled()
                        if (r0 == 0) goto L_0x0009
                        return
                    L_0x0009:
                        com.koushikdutta.async.h$b r0 = r0
                        com.koushikdutta.async.a.b r1 = r4
                        r0.f4569b = r1
                        r1 = 0
                        r2 = 0
                        java.nio.channels.SocketChannel r3 = java.nio.channels.SocketChannel.open()     // Catch:{ all -> 0x0037 }
                        r0.f4568a = r3     // Catch:{ all -> 0x0037 }
                        r3.configureBlocking(r1)     // Catch:{ all -> 0x0035 }
                        com.koushikdutta.async.h r0 = com.koushikdutta.async.h.this     // Catch:{ all -> 0x0035 }
                        com.koushikdutta.async.aa r0 = r0.h     // Catch:{ all -> 0x0035 }
                        java.nio.channels.Selector r0 = r0.getSelector()     // Catch:{ all -> 0x0035 }
                        r4 = 8
                        java.nio.channels.SelectionKey r2 = r3.register(r0, r4)     // Catch:{ all -> 0x0035 }
                        com.koushikdutta.async.h$b r0 = r0     // Catch:{ all -> 0x0035 }
                        r2.attach(r0)     // Catch:{ all -> 0x0035 }
                        java.net.InetSocketAddress r0 = r3     // Catch:{ all -> 0x0035 }
                        r3.connect(r0)     // Catch:{ all -> 0x0035 }
                        return
                    L_0x0035:
                        r0 = move-exception
                        goto L_0x0039
                    L_0x0037:
                        r0 = move-exception
                        r3 = r2
                    L_0x0039:
                        if (r2 == 0) goto L_0x003e
                        r2.cancel()
                    L_0x003e:
                        r2 = 1
                        java.io.Closeable[] r2 = new java.io.Closeable[r2]
                        r2[r1] = r3
                        com.koushikdutta.async.e.g.closeQuietly(r2)
                        com.koushikdutta.async.h$b r1 = r0
                        java.lang.RuntimeException r2 = new java.lang.RuntimeException
                        r2.<init>(r0)
                        r1.setComplete((java.lang.Exception) r2)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.h.AnonymousClass12.run():void");
                }
            });
            return bVar2;
        }
        throw new AssertionError();
    }

    public com.koushikdutta.async.b.a connectSocket(final InetSocketAddress inetSocketAddress, final com.koushikdutta.async.a.b bVar) {
        if (!inetSocketAddress.isUnresolved()) {
            return a(inetSocketAddress, bVar);
        }
        final i iVar = new i();
        com.koushikdutta.async.b.e<InetAddress> byName = getByName(inetSocketAddress.getHostName());
        iVar.setParent((com.koushikdutta.async.b.a) byName);
        byName.setCallback(new com.koushikdutta.async.b.f<InetAddress>() {
            public final void onCompleted(Exception exc, InetAddress inetAddress) {
                if (exc != null) {
                    bVar.onConnectCompleted(exc, null);
                    iVar.setComplete(exc);
                    return;
                }
                iVar.setComplete(h.this.a(new InetSocketAddress(inetAddress, inetSocketAddress.getPort()), bVar));
            }
        });
        return iVar;
    }

    public com.koushikdutta.async.b.a connectSocket(String str, int i2, com.koushikdutta.async.a.b bVar) {
        return connectSocket(InetSocketAddress.createUnresolved(str, i2), bVar);
    }

    private static ExecutorService a(String str) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 4, 10, TimeUnit.SECONDS, new LinkedBlockingQueue(), new c(str));
        return threadPoolExecutor;
    }

    public com.koushikdutta.async.b.e<InetAddress[]> getAllByName(final String str) {
        final i iVar = new i();
        k.execute(new Runnable() {
            public final void run() {
                try {
                    final InetAddress[] allByName = InetAddress.getAllByName(str);
                    Arrays.sort(allByName, h.j);
                    if (allByName == null || allByName.length == 0) {
                        throw new x("no addresses for host");
                    }
                    h.this.post(new Runnable() {
                        public final void run() {
                            iVar.setComplete(null, allByName);
                        }
                    });
                } catch (Exception e) {
                    h.this.post(new Runnable() {
                        public final void run() {
                            iVar.setComplete(e, null);
                        }
                    });
                }
            }
        });
        return iVar;
    }

    public com.koushikdutta.async.b.e<InetAddress> getByName(String str) {
        return (com.koushikdutta.async.b.e) getAllByName(str).then(new j<InetAddress, InetAddress[]>() {
            public final /* synthetic */ void transform(Object obj) throws Exception {
                setComplete(((InetAddress[]) obj)[0]);
            }
        });
    }

    public b connectDatagram(String str, int i2) throws IOException {
        final DatagramChannel open = DatagramChannel.open();
        b bVar = new b();
        bVar.a(open);
        final String str2 = str;
        final int i3 = i2;
        final b bVar2 = bVar;
        AnonymousClass3 r0 = new Runnable() {
            public final void run() {
                try {
                    InetSocketAddress inetSocketAddress = new InetSocketAddress(str2, i3);
                    h.a(h.this, (c) bVar2);
                    open.connect(inetSocketAddress);
                } catch (IOException unused) {
                    com.koushikdutta.async.e.g.closeQuietly(open);
                }
            }
        };
        run(r0);
        return bVar;
    }

    public b openDatagram() throws IOException {
        return openDatagram(null, false);
    }

    public b openDatagram(SocketAddress socketAddress, boolean z) throws IOException {
        final DatagramChannel open = DatagramChannel.open();
        b bVar = new b();
        bVar.a(open);
        final boolean z2 = z;
        final SocketAddress socketAddress2 = socketAddress;
        final b bVar2 = bVar;
        AnonymousClass4 r0 = new Runnable() {
            public final void run() {
                try {
                    if (z2) {
                        open.socket().setReuseAddress(z2);
                    }
                    open.socket().bind(socketAddress2);
                    h.a(h.this, (c) bVar2);
                } catch (IOException unused) {
                    com.koushikdutta.async.e.g.closeQuietly(open);
                }
            }
        };
        run(r0);
        return bVar;
    }

    public b connectDatagram(final SocketAddress socketAddress) throws IOException {
        final DatagramChannel open = DatagramChannel.open();
        final b bVar = new b();
        bVar.a(open);
        run(new Runnable() {
            public final void run() {
                try {
                    h.a(h.this, (c) bVar);
                    open.connect(socketAddress);
                } catch (IOException unused) {
                    com.koushikdutta.async.e.g.closeQuietly(open);
                }
            }
        });
        return bVar;
    }

    private boolean b() {
        synchronized (e) {
            if (e.get(this.f) != null) {
                return false;
            }
            e.put(this.f, this);
            return true;
        }
    }

    public static h getCurrentThreadServer() {
        return e.get(Thread.currentThread());
    }

    private static void b(aa aaVar) {
        try {
            for (SelectionKey next : aaVar.keys()) {
                com.koushikdutta.async.e.g.closeQuietly(next.channel());
                try {
                    next.cancel();
                } catch (Exception unused) {
                }
            }
        } catch (Exception unused2) {
        }
    }

    /* access modifiers changed from: private */
    public static void c(aa aaVar) {
        b(aaVar);
        try {
            aaVar.close();
        } catch (Exception unused) {
        }
    }

    private static long a(h hVar, PriorityQueue<f> priorityQueue) {
        long j2 = Long.MAX_VALUE;
        while (true) {
            f fVar = null;
            synchronized (hVar) {
                long currentTimeMillis = System.currentTimeMillis();
                if (priorityQueue.size() > 0) {
                    f fVar2 = (f) priorityQueue.remove();
                    if (fVar2.time <= currentTimeMillis) {
                        fVar = fVar2;
                    } else {
                        j2 = fVar2.time - currentTimeMillis;
                        priorityQueue.add(fVar2);
                    }
                }
            }
            if (fVar != null) {
                fVar.runnable.run();
            } else {
                hVar.c = 0;
                return j2;
            }
        }
        while (true) {
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(3:36|37|(2:39|82)(1:81)) */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0026, code lost:
        if (r11 == false) goto L_0x0033;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x002a, code lost:
        if (r0 != Long.MAX_VALUE) goto L_0x0030;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:?, code lost:
        r10.select();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0030, code lost:
        r10.select(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0033, code lost:
        r11 = r10.selectedKeys();
        r0 = r11.iterator();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x003f, code lost:
        if (r0.hasNext() == false) goto L_0x011d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0041, code lost:
        r1 = r0.next();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:?, code lost:
        r3 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x004c, code lost:
        if (r1.isAcceptable() == false) goto L_0x0096;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:?, code lost:
        r2 = ((java.nio.channels.ServerSocketChannel) r1.channel()).accept();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0058, code lost:
        if (r2 != null) goto L_0x005b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:?, code lost:
        r2.configureBlocking(false);
        r3 = r2.register(r10.getSelector(), 1);
        r6 = new com.koushikdutta.async.c();
        r6.a(r2, (java.net.InetSocketAddress) r2.socket().getRemoteSocketAddress());
        r6.a(r9, r3);
        r3.attach(r6);
        ((com.koushikdutta.async.a.e) r1.attachment()).onAccepted(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x0088, code lost:
        r2 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:?, code lost:
        com.koushikdutta.async.e.g.closeQuietly(r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x0090, code lost:
        if (r3 != null) goto L_0x0092;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x0092, code lost:
        r3.cancel();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x009a, code lost:
        if (r1.isReadable() == false) goto L_0x00a6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x009c, code lost:
        ((com.koushikdutta.async.c) r1.attachment()).a();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00aa, code lost:
        if (r1.isWritable() == false) goto L_0x00b6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00ac, code lost:
        ((com.koushikdutta.async.c) r1.attachment()).onDataWritable();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00ba, code lost:
        if (r1.isConnectable() == false) goto L_0x0112;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00bc, code lost:
        r2 = (com.koushikdutta.async.h.b) r1.attachment();
        r6 = (java.nio.channels.SocketChannel) r1.channel();
        r1.interestOps(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:?, code lost:
        r6.finishConnect();
        r7 = new com.koushikdutta.async.c();
        r7.a(r9, r1);
        r7.a(r6, (java.net.InetSocketAddress) r6.socket().getRemoteSocketAddress());
        r1.attach(r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x00ea, code lost:
        if (r2.setComplete(r7) == false) goto L_0x003b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x00ec, code lost:
        r2.f4569b.onConnectCompleted(null, r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x00f3, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x00f9, code lost:
        throw new java.lang.RuntimeException(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x00fa, code lost:
        r7 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x00fb, code lost:
        r1.cancel();
        com.koushikdutta.async.e.g.closeQuietly(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x0109, code lost:
        if (r2.setComplete((java.lang.Exception) r7) != false) goto L_0x010b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x010b, code lost:
        r2.f4569b.onConnectCompleted(r7, null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x0119, code lost:
        throw new java.lang.RuntimeException("Unknown key state.");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x011d, code lost:
        r11.clear();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x0120, code lost:
        return;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:36:0x0089 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void b(com.koushikdutta.async.h r9, com.koushikdutta.async.aa r10, java.util.PriorityQueue<com.koushikdutta.async.h.f> r11) throws com.koushikdutta.async.h.a {
        /*
            long r0 = a((com.koushikdutta.async.h) r9, (java.util.PriorityQueue<com.koushikdutta.async.h.f>) r11)
            monitor-enter(r9)     // Catch:{ Exception -> 0x0124 }
            int r11 = r10.selectNow()     // Catch:{ all -> 0x0121 }
            r2 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r4 = 0
            r5 = 1
            if (r11 != 0) goto L_0x0024
            java.util.Set r11 = r10.keys()     // Catch:{ all -> 0x0121 }
            int r11 = r11.size()     // Catch:{ all -> 0x0121 }
            if (r11 != 0) goto L_0x0022
            int r11 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r11 != 0) goto L_0x0022
            monitor-exit(r9)     // Catch:{ all -> 0x0121 }
            return
        L_0x0022:
            r11 = 1
            goto L_0x0025
        L_0x0024:
            r11 = 0
        L_0x0025:
            monitor-exit(r9)     // Catch:{ all -> 0x0121 }
            if (r11 == 0) goto L_0x0033
            int r11 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r11 != 0) goto L_0x0030
            r10.select()     // Catch:{ Exception -> 0x0124 }
            goto L_0x0033
        L_0x0030:
            r10.select(r0)     // Catch:{ Exception -> 0x0124 }
        L_0x0033:
            java.util.Set r11 = r10.selectedKeys()
            java.util.Iterator r0 = r11.iterator()
        L_0x003b:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L_0x011d
            java.lang.Object r1 = r0.next()
            java.nio.channels.SelectionKey r1 = (java.nio.channels.SelectionKey) r1
            boolean r2 = r1.isAcceptable()     // Catch:{ CancelledKeyException -> 0x011a }
            r3 = 0
            if (r2 == 0) goto L_0x0096
            java.nio.channels.SelectableChannel r2 = r1.channel()     // Catch:{ CancelledKeyException -> 0x011a }
            java.nio.channels.ServerSocketChannel r2 = (java.nio.channels.ServerSocketChannel) r2     // Catch:{ CancelledKeyException -> 0x011a }
            java.nio.channels.SocketChannel r2 = r2.accept()     // Catch:{ IOException -> 0x0088 }
            if (r2 != 0) goto L_0x005b
            goto L_0x003b
        L_0x005b:
            r2.configureBlocking(r4)     // Catch:{ IOException -> 0x0089 }
            java.nio.channels.Selector r6 = r10.getSelector()     // Catch:{ IOException -> 0x0089 }
            java.nio.channels.SelectionKey r3 = r2.register(r6, r5)     // Catch:{ IOException -> 0x0089 }
            java.lang.Object r1 = r1.attachment()     // Catch:{ IOException -> 0x0089 }
            com.koushikdutta.async.a.e r1 = (com.koushikdutta.async.a.e) r1     // Catch:{ IOException -> 0x0089 }
            com.koushikdutta.async.c r6 = new com.koushikdutta.async.c     // Catch:{ IOException -> 0x0089 }
            r6.<init>()     // Catch:{ IOException -> 0x0089 }
            java.net.Socket r7 = r2.socket()     // Catch:{ IOException -> 0x0089 }
            java.net.SocketAddress r7 = r7.getRemoteSocketAddress()     // Catch:{ IOException -> 0x0089 }
            java.net.InetSocketAddress r7 = (java.net.InetSocketAddress) r7     // Catch:{ IOException -> 0x0089 }
            r6.a((java.nio.channels.SocketChannel) r2, (java.net.InetSocketAddress) r7)     // Catch:{ IOException -> 0x0089 }
            r6.a((com.koushikdutta.async.h) r9, (java.nio.channels.SelectionKey) r3)     // Catch:{ IOException -> 0x0089 }
            r3.attach(r6)     // Catch:{ IOException -> 0x0089 }
            r1.onAccepted(r6)     // Catch:{ IOException -> 0x0089 }
            goto L_0x003b
        L_0x0088:
            r2 = r3
        L_0x0089:
            java.io.Closeable[] r1 = new java.io.Closeable[r5]     // Catch:{ CancelledKeyException -> 0x011a }
            r1[r4] = r2     // Catch:{ CancelledKeyException -> 0x011a }
            com.koushikdutta.async.e.g.closeQuietly(r1)     // Catch:{ CancelledKeyException -> 0x011a }
            if (r3 == 0) goto L_0x003b
            r3.cancel()     // Catch:{ CancelledKeyException -> 0x011a }
            goto L_0x003b
        L_0x0096:
            boolean r2 = r1.isReadable()     // Catch:{ CancelledKeyException -> 0x011a }
            if (r2 == 0) goto L_0x00a6
            java.lang.Object r1 = r1.attachment()     // Catch:{ CancelledKeyException -> 0x011a }
            com.koushikdutta.async.c r1 = (com.koushikdutta.async.c) r1     // Catch:{ CancelledKeyException -> 0x011a }
            r1.a()     // Catch:{ CancelledKeyException -> 0x011a }
            goto L_0x003b
        L_0x00a6:
            boolean r2 = r1.isWritable()     // Catch:{ CancelledKeyException -> 0x011a }
            if (r2 == 0) goto L_0x00b6
            java.lang.Object r1 = r1.attachment()     // Catch:{ CancelledKeyException -> 0x011a }
            com.koushikdutta.async.c r1 = (com.koushikdutta.async.c) r1     // Catch:{ CancelledKeyException -> 0x011a }
            r1.onDataWritable()     // Catch:{ CancelledKeyException -> 0x011a }
            goto L_0x003b
        L_0x00b6:
            boolean r2 = r1.isConnectable()     // Catch:{ CancelledKeyException -> 0x011a }
            if (r2 == 0) goto L_0x0112
            java.lang.Object r2 = r1.attachment()     // Catch:{ CancelledKeyException -> 0x011a }
            com.koushikdutta.async.h$b r2 = (com.koushikdutta.async.h.b) r2     // Catch:{ CancelledKeyException -> 0x011a }
            java.nio.channels.SelectableChannel r6 = r1.channel()     // Catch:{ CancelledKeyException -> 0x011a }
            java.nio.channels.SocketChannel r6 = (java.nio.channels.SocketChannel) r6     // Catch:{ CancelledKeyException -> 0x011a }
            r1.interestOps(r5)     // Catch:{ CancelledKeyException -> 0x011a }
            r6.finishConnect()     // Catch:{ IOException -> 0x00fa }
            com.koushikdutta.async.c r7 = new com.koushikdutta.async.c     // Catch:{ IOException -> 0x00fa }
            r7.<init>()     // Catch:{ IOException -> 0x00fa }
            r7.a((com.koushikdutta.async.h) r9, (java.nio.channels.SelectionKey) r1)     // Catch:{ IOException -> 0x00fa }
            java.net.Socket r8 = r6.socket()     // Catch:{ IOException -> 0x00fa }
            java.net.SocketAddress r8 = r8.getRemoteSocketAddress()     // Catch:{ IOException -> 0x00fa }
            java.net.InetSocketAddress r8 = (java.net.InetSocketAddress) r8     // Catch:{ IOException -> 0x00fa }
            r7.a((java.nio.channels.SocketChannel) r6, (java.net.InetSocketAddress) r8)     // Catch:{ IOException -> 0x00fa }
            r1.attach(r7)     // Catch:{ IOException -> 0x00fa }
            boolean r1 = r2.setComplete(r7)     // Catch:{ Exception -> 0x00f3 }
            if (r1 == 0) goto L_0x003b
            com.koushikdutta.async.a.b r1 = r2.f4569b     // Catch:{ Exception -> 0x00f3 }
            r1.onConnectCompleted(r3, r7)     // Catch:{ Exception -> 0x00f3 }
            goto L_0x003b
        L_0x00f3:
            r1 = move-exception
            java.lang.RuntimeException r2 = new java.lang.RuntimeException     // Catch:{ CancelledKeyException -> 0x011a }
            r2.<init>(r1)     // Catch:{ CancelledKeyException -> 0x011a }
            throw r2     // Catch:{ CancelledKeyException -> 0x011a }
        L_0x00fa:
            r7 = move-exception
            r1.cancel()     // Catch:{ CancelledKeyException -> 0x011a }
            java.io.Closeable[] r1 = new java.io.Closeable[r5]     // Catch:{ CancelledKeyException -> 0x011a }
            r1[r4] = r6     // Catch:{ CancelledKeyException -> 0x011a }
            com.koushikdutta.async.e.g.closeQuietly(r1)     // Catch:{ CancelledKeyException -> 0x011a }
            boolean r1 = r2.setComplete((java.lang.Exception) r7)     // Catch:{ CancelledKeyException -> 0x011a }
            if (r1 == 0) goto L_0x003b
            com.koushikdutta.async.a.b r1 = r2.f4569b     // Catch:{ CancelledKeyException -> 0x011a }
            r1.onConnectCompleted(r7, r3)     // Catch:{ CancelledKeyException -> 0x011a }
            goto L_0x003b
        L_0x0112:
            java.lang.RuntimeException r1 = new java.lang.RuntimeException     // Catch:{ CancelledKeyException -> 0x011a }
            java.lang.String r2 = "Unknown key state."
            r1.<init>(r2)     // Catch:{ CancelledKeyException -> 0x011a }
            throw r1     // Catch:{ CancelledKeyException -> 0x011a }
        L_0x011a:
            goto L_0x003b
        L_0x011d:
            r11.clear()
            return
        L_0x0121:
            r10 = move-exception
            monitor-exit(r9)     // Catch:{ all -> 0x0121 }
            throw r10     // Catch:{ Exception -> 0x0124 }
        L_0x0124:
            r9 = move-exception
            com.koushikdutta.async.h$a r10 = new com.koushikdutta.async.h$a
            r10.<init>(r9)
            goto L_0x012c
        L_0x012b:
            throw r10
        L_0x012c:
            goto L_0x012b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.h.b(com.koushikdutta.async.h, com.koushikdutta.async.aa, java.util.PriorityQueue):void");
    }

    public void dump() {
        post(new Runnable() {
            public final void run() {
                if (h.this.h != null) {
                    new StringBuilder("Key Count: ").append(h.this.h.keys().size());
                    for (SelectionKey append : h.this.h.keys()) {
                        new StringBuilder("Key: ").append(append);
                    }
                }
            }
        });
    }

    public Thread getAffinity() {
        return this.f;
    }

    public boolean isAffinityThread() {
        return this.f == Thread.currentThread();
    }

    public boolean isAffinityThreadOrStopped() {
        Thread thread = this.f;
        return thread == null || thread == Thread.currentThread();
    }

    static /* synthetic */ void a(h hVar, c cVar) throws ClosedChannelException {
        SelectionKey register = cVar.f4485b.register(hVar.h.getSelector());
        register.attach(cVar);
        cVar.a(hVar, register);
    }

    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:2:0x0004 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static /* synthetic */ void a(com.koushikdutta.async.h r1, com.koushikdutta.async.aa r2, java.util.PriorityQueue r3) {
        /*
        L_0x0000:
            b(r1, r2, r3)     // Catch:{ a -> 0x0004 }
            goto L_0x000b
        L_0x0004:
            java.nio.channels.Selector r0 = r2.getSelector()     // Catch:{ Exception -> 0x000b }
            r0.close()     // Catch:{ Exception -> 0x000b }
        L_0x000b:
            monitor-enter(r1)
            boolean r0 = r2.isOpen()     // Catch:{ all -> 0x004c }
            if (r0 == 0) goto L_0x0024
            java.util.Set r0 = r2.keys()     // Catch:{ all -> 0x004c }
            int r0 = r0.size()     // Catch:{ all -> 0x004c }
            if (r0 > 0) goto L_0x0022
            int r0 = r3.size()     // Catch:{ all -> 0x004c }
            if (r0 <= 0) goto L_0x0024
        L_0x0022:
            monitor-exit(r1)     // Catch:{ all -> 0x004c }
            goto L_0x0000
        L_0x0024:
            c(r2)     // Catch:{ all -> 0x004c }
            com.koushikdutta.async.aa r3 = r1.h     // Catch:{ all -> 0x004c }
            if (r3 != r2) goto L_0x003a
            java.util.PriorityQueue r2 = new java.util.PriorityQueue     // Catch:{ all -> 0x004c }
            r3 = 1
            com.koushikdutta.async.h$g r0 = com.koushikdutta.async.h.g.INSTANCE     // Catch:{ all -> 0x004c }
            r2.<init>(r3, r0)     // Catch:{ all -> 0x004c }
            r1.d = r2     // Catch:{ all -> 0x004c }
            r2 = 0
            r1.h = r2     // Catch:{ all -> 0x004c }
            r1.f = r2     // Catch:{ all -> 0x004c }
        L_0x003a:
            monitor-exit(r1)     // Catch:{ all -> 0x004c }
            java.util.WeakHashMap<java.lang.Thread, com.koushikdutta.async.h> r2 = e
            monitor-enter(r2)
            java.util.WeakHashMap<java.lang.Thread, com.koushikdutta.async.h> r1 = e     // Catch:{ all -> 0x0049 }
            java.lang.Thread r3 = java.lang.Thread.currentThread()     // Catch:{ all -> 0x0049 }
            r1.remove(r3)     // Catch:{ all -> 0x0049 }
            monitor-exit(r2)     // Catch:{ all -> 0x0049 }
            return
        L_0x0049:
            r1 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0049 }
            throw r1
        L_0x004c:
            r2 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x004c }
            goto L_0x0050
        L_0x004f:
            throw r2
        L_0x0050:
            goto L_0x004f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.h.a(com.koushikdutta.async.h, com.koushikdutta.async.aa, java.util.PriorityQueue):void");
    }
}
