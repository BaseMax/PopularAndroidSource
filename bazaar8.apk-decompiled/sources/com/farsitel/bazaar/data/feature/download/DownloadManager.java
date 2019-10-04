package com.farsitel.bazaar.data.feature.download;

import c.c.a.c.c.a;
import c.c.a.c.h.d;
import c.c.a.e.d.i.f;
import c.c.a.e.d.i.g;
import c.c.a.e.d.i.q;
import c.c.a.e.d.i.r;
import c.c.a.e.g.b;
import c.c.a.e.g.c;
import c.c.a.e.g.e;
import com.crashlytics.android.answers.SessionEventTransform;
import com.farsitel.bazaar.common.model.DownloadStatus;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import com.farsitel.bazaar.data.entity.EntityType;
import com.farsitel.bazaar.data.model.ObservableList;
import com.usf.research.AppPatcherActivity;
import h.a.l;
import h.h;
import i.a.C1103g;
import i.a.C1125ra;
import i.a.H;
import i.a.b.j;
import i.a.b.p;
import i.a.b.t;
import i.a.b.x;
import i.a.va;
import java.io.File;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import javax.crypto.Cipher;
import kotlin.Pair;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* compiled from: DownloadManager.kt */
public class DownloadManager implements H {

    /* renamed from: a  reason: collision with root package name */
    public final C1125ra f12236a = va.a(null, 1, null);

    /* renamed from: b  reason: collision with root package name */
    public ObservableList<c> f12237b = new ObservableList<>();

    /* renamed from: c  reason: collision with root package name */
    public final HashMap<String, c> f12238c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    public final HashMap<String, c> f12239d = new HashMap<>();

    /* renamed from: e  reason: collision with root package name */
    public final HashMap<String, j<DownloaderDownloadStatus>> f12240e = new HashMap<>();

    /* renamed from: f  reason: collision with root package name */
    public final ReentrantLock f12241f = new ReentrantLock(true);

    /* renamed from: g  reason: collision with root package name */
    public final b f12242g;

    /* renamed from: h  reason: collision with root package name */
    public final q f12243h;

    /* renamed from: i  reason: collision with root package name */
    public final Downloader f12244i;

    @h.c.b.a.d(c = "com.farsitel.bazaar.data.feature.download.DownloadManager$2", f = "DownloadManager.kt", l = {449}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.data.feature.download.DownloadManager$2  reason: invalid class name */
    /* compiled from: DownloadManager.kt */
    static final class AnonymousClass2 extends SuspendLambda implements h.f.a.c<H, h.c.b<? super h>, Object> {
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public Object L$5;
        public int label;
        public H p$;
        public final /* synthetic */ DownloadManager this$0;

        {
            this.this$0 = r1;
        }

        public final h.c.b<h> a(Object obj, h.c.b<?> bVar) {
            h.f.b.j.b(bVar, "completion");
            AnonymousClass2 r0 = new AnonymousClass2(this.this$0, rVar, bVar);
            r0.p$ = (H) obj;
            return r0;
        }

        public final Object b(Object obj, Object obj2) {
            return ((AnonymousClass2) a(obj, (h.c.b) obj2)).d(h.f14579a);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:49:0x0137, code lost:
            r0 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:50:0x0139, code lost:
            r0 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:51:0x013a, code lost:
            r5 = r0;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:53:?, code lost:
            throw r5;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:54:0x013c, code lost:
            i.a.b.m.a(r6, r5);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:55:0x0140, code lost:
            throw r0;
         */
        /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
        /* JADX WARNING: Removed duplicated region for block: B:17:0x0069 A[Catch:{ Throwable -> 0x0139 }] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final java.lang.Object d(java.lang.Object r17) {
            /*
                r16 = this;
                r1 = r16
                java.lang.Object r0 = h.c.a.b.a()
                int r2 = r1.label
                r3 = 1
                if (r2 == 0) goto L_0x0037
                if (r2 != r3) goto L_0x002f
                java.lang.Object r2 = r1.L$5
                i.a.b.k r2 = (i.a.b.k) r2
                java.lang.Object r4 = r1.L$4
                i.a.b.t r4 = (i.a.b.t) r4
                java.lang.Object r5 = r1.L$3
                java.lang.Throwable r5 = (java.lang.Throwable) r5
                java.lang.Object r6 = r1.L$2
                i.a.b.t r6 = (i.a.b.t) r6
                java.lang.Object r7 = r1.L$1
                com.farsitel.bazaar.data.feature.download.DownloadManager$2 r7 = (com.farsitel.bazaar.data.feature.download.DownloadManager.AnonymousClass2) r7
                java.lang.Object r8 = r1.L$0
                i.a.b.t r8 = (i.a.b.t) r8
                h.e.a((java.lang.Object) r17)     // Catch:{ Throwable -> 0x0139 }
                r10 = r17
                r9 = r0
                r0 = r7
                r7 = r4
                r4 = r1
                goto L_0x0061
            L_0x002f:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r0.<init>(r2)
                throw r0
            L_0x0037:
                h.e.a((java.lang.Object) r17)
                i.a.H r2 = r1.p$
                c.c.a.e.d.i.r r2 = r10
                i.a.b.t r6 = r2.a()
                r5 = 0
                i.a.b.k r2 = r6.iterator()     // Catch:{ Throwable -> 0x0139 }
                r9 = r0
                r0 = r1
                r4 = r0
                r7 = r6
                r8 = r7
            L_0x004c:
                r4.L$0 = r8     // Catch:{ Throwable -> 0x0139 }
                r4.L$1 = r0     // Catch:{ Throwable -> 0x0139 }
                r4.L$2 = r6     // Catch:{ Throwable -> 0x0139 }
                r4.L$3 = r5     // Catch:{ Throwable -> 0x0139 }
                r4.L$4 = r7     // Catch:{ Throwable -> 0x0139 }
                r4.L$5 = r2     // Catch:{ Throwable -> 0x0139 }
                r4.label = r3     // Catch:{ Throwable -> 0x0139 }
                java.lang.Object r10 = r2.a(r0)     // Catch:{ Throwable -> 0x0139 }
                if (r10 != r9) goto L_0x0061
                return r9
            L_0x0061:
                java.lang.Boolean r10 = (java.lang.Boolean) r10     // Catch:{ Throwable -> 0x0139 }
                boolean r10 = r10.booleanValue()     // Catch:{ Throwable -> 0x0139 }
                if (r10 == 0) goto L_0x012f
                java.lang.Object r10 = r2.next()     // Catch:{ Throwable -> 0x0139 }
                java.lang.Boolean r10 = (java.lang.Boolean) r10     // Catch:{ Throwable -> 0x0139 }
                boolean r10 = r10.booleanValue()     // Catch:{ Throwable -> 0x0139 }
                r11 = 0
                if (r10 == 0) goto L_0x0088
                kotlin.Pair r12 = new kotlin.Pair     // Catch:{ Throwable -> 0x0139 }
                com.farsitel.bazaar.common.model.DownloadStatus[] r13 = new com.farsitel.bazaar.common.model.DownloadStatus[r3]     // Catch:{ Throwable -> 0x0139 }
                com.farsitel.bazaar.common.model.DownloadStatus r14 = com.farsitel.bazaar.common.model.DownloadStatus.PAUSE_BY_SYSTEM     // Catch:{ Throwable -> 0x0139 }
                r13[r11] = r14     // Catch:{ Throwable -> 0x0139 }
                java.util.ArrayList r11 = h.a.l.a((T[]) r13)     // Catch:{ Throwable -> 0x0139 }
                com.farsitel.bazaar.common.model.DownloadStatus r13 = com.farsitel.bazaar.common.model.DownloadStatus.PENDING     // Catch:{ Throwable -> 0x0139 }
                r12.<init>(r11, r13)     // Catch:{ Throwable -> 0x0139 }
                goto L_0x00a3
            L_0x0088:
                kotlin.Pair r12 = new kotlin.Pair     // Catch:{ Throwable -> 0x0139 }
                r13 = 3
                com.farsitel.bazaar.common.model.DownloadStatus[] r13 = new com.farsitel.bazaar.common.model.DownloadStatus[r13]     // Catch:{ Throwable -> 0x0139 }
                com.farsitel.bazaar.common.model.DownloadStatus r14 = com.farsitel.bazaar.common.model.DownloadStatus.PENDING     // Catch:{ Throwable -> 0x0139 }
                r13[r11] = r14     // Catch:{ Throwable -> 0x0139 }
                com.farsitel.bazaar.common.model.DownloadStatus r11 = com.farsitel.bazaar.common.model.DownloadStatus.DOWNLOADING     // Catch:{ Throwable -> 0x0139 }
                r13[r3] = r11     // Catch:{ Throwable -> 0x0139 }
                r11 = 2
                com.farsitel.bazaar.common.model.DownloadStatus r14 = com.farsitel.bazaar.common.model.DownloadStatus.CONTINUING     // Catch:{ Throwable -> 0x0139 }
                r13[r11] = r14     // Catch:{ Throwable -> 0x0139 }
                java.util.ArrayList r11 = h.a.l.a((T[]) r13)     // Catch:{ Throwable -> 0x0139 }
                com.farsitel.bazaar.common.model.DownloadStatus r13 = com.farsitel.bazaar.common.model.DownloadStatus.PAUSE_BY_SYSTEM     // Catch:{ Throwable -> 0x0139 }
                r12.<init>(r11, r13)     // Catch:{ Throwable -> 0x0139 }
            L_0x00a3:
                java.lang.Object r11 = r12.a()     // Catch:{ Throwable -> 0x0139 }
                java.util.ArrayList r11 = (java.util.ArrayList) r11     // Catch:{ Throwable -> 0x0139 }
                java.lang.Object r12 = r12.b()     // Catch:{ Throwable -> 0x0139 }
                com.farsitel.bazaar.common.model.DownloadStatus r12 = (com.farsitel.bazaar.common.model.DownloadStatus) r12     // Catch:{ Throwable -> 0x0139 }
                com.farsitel.bazaar.data.feature.download.DownloadManager r13 = r4.this$0     // Catch:{ Throwable -> 0x0139 }
                java.util.concurrent.locks.ReentrantLock r13 = r13.f12241f     // Catch:{ Throwable -> 0x0139 }
                monitor-enter(r13)     // Catch:{ Throwable -> 0x0139 }
                if (r10 != 0) goto L_0x00f7
                com.farsitel.bazaar.data.feature.download.DownloadManager r14 = r4.this$0     // Catch:{ all -> 0x012c }
                java.util.HashMap r14 = r14.f12239d     // Catch:{ all -> 0x012c }
                java.util.Set r14 = r14.keySet()     // Catch:{ all -> 0x012c }
                java.lang.String r15 = "runningDownloadList.keys"
                h.f.b.j.a((java.lang.Object) r14, (java.lang.String) r15)     // Catch:{ all -> 0x012c }
                java.util.Iterator r14 = r14.iterator()     // Catch:{ all -> 0x012c }
            L_0x00cb:
                boolean r15 = r14.hasNext()     // Catch:{ all -> 0x012c }
                if (r15 == 0) goto L_0x00eb
                java.lang.Object r15 = r14.next()     // Catch:{ all -> 0x012c }
                java.lang.String r15 = (java.lang.String) r15     // Catch:{ all -> 0x012c }
                com.farsitel.bazaar.data.feature.download.DownloadManager r3 = r4.this$0     // Catch:{ all -> 0x012c }
                com.farsitel.bazaar.data.feature.download.Downloader r3 = r3.f12244i     // Catch:{ all -> 0x012c }
                r17 = r0
                java.lang.String r0 = "it"
                h.f.b.j.a((java.lang.Object) r15, (java.lang.String) r0)     // Catch:{ all -> 0x012c }
                r3.b((java.lang.String) r15)     // Catch:{ all -> 0x012c }
                r0 = r17
                r3 = 1
                goto L_0x00cb
            L_0x00eb:
                r17 = r0
                com.farsitel.bazaar.data.feature.download.DownloadManager r0 = r4.this$0     // Catch:{ all -> 0x012c }
                java.util.HashMap r0 = r0.f12239d     // Catch:{ all -> 0x012c }
                r0.clear()     // Catch:{ all -> 0x012c }
                goto L_0x00f9
            L_0x00f7:
                r17 = r0
            L_0x00f9:
                com.farsitel.bazaar.data.feature.download.DownloadManager r0 = r4.this$0     // Catch:{ all -> 0x012c }
                com.farsitel.bazaar.data.model.ObservableList r0 = r0.f12237b     // Catch:{ all -> 0x012c }
                java.util.Iterator r0 = r0.iterator()     // Catch:{ all -> 0x012c }
            L_0x0103:
                boolean r3 = r0.hasNext()     // Catch:{ all -> 0x012c }
                if (r3 == 0) goto L_0x011d
                java.lang.Object r3 = r0.next()     // Catch:{ all -> 0x012c }
                c.c.a.e.g.c r3 = (c.c.a.e.g.c) r3     // Catch:{ all -> 0x012c }
                com.farsitel.bazaar.common.model.DownloadStatus r14 = r3.o()     // Catch:{ all -> 0x012c }
                boolean r14 = r11.contains(r14)     // Catch:{ all -> 0x012c }
                if (r14 == 0) goto L_0x0103
                r3.b(r12)     // Catch:{ all -> 0x012c }
                goto L_0x0103
            L_0x011d:
                if (r10 == 0) goto L_0x0124
                com.farsitel.bazaar.data.feature.download.DownloadManager r0 = r4.this$0     // Catch:{ all -> 0x012c }
                r0.b()     // Catch:{ all -> 0x012c }
            L_0x0124:
                h.h r0 = h.h.f14579a     // Catch:{ all -> 0x012c }
                monitor-exit(r13)     // Catch:{ Throwable -> 0x0139 }
                r0 = r17
                r3 = 1
                goto L_0x004c
            L_0x012c:
                r0 = move-exception
                monitor-exit(r13)     // Catch:{ Throwable -> 0x0139 }
                throw r0     // Catch:{ Throwable -> 0x0139 }
            L_0x012f:
                h.h r0 = h.h.f14579a     // Catch:{ Throwable -> 0x0139 }
                i.a.b.m.a(r6, r5)
                h.h r0 = h.h.f14579a
                return r0
            L_0x0137:
                r0 = move-exception
                goto L_0x013c
            L_0x0139:
                r0 = move-exception
                r5 = r0
                throw r5     // Catch:{ all -> 0x0137 }
            L_0x013c:
                i.a.b.m.a(r6, r5)
                goto L_0x0141
            L_0x0140:
                throw r0
            L_0x0141:
                goto L_0x0140
            */
            throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.feature.download.DownloadManager.AnonymousClass2.d(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: DownloadManager.kt */
    public enum DownloadConnectionType {
        SINGLE_CONNECTION(1),
        PARALLEL_CONNECTION(d.c());
        
        public final int connectionCount;

        /* access modifiers changed from: public */
        DownloadConnectionType(int i2) {
            this.connectionCount = i2;
        }

        public final int f() {
            return this.connectionCount;
        }
    }

    public DownloadManager(b bVar, q qVar, Downloader downloader, final r rVar) {
        h.f.b.j.b(bVar, "downloadConfig");
        h.f.b.j.b(qVar, "fileDownloadHelper");
        h.f.b.j.b(downloader, "downloader");
        h.f.b.j.b(rVar, "networkStateHelper");
        this.f12242g = bVar;
        this.f12243h = qVar;
        this.f12244i = downloader;
        this.f12237b.a((e) new f(this));
        C1125ra unused = C1103g.b(this, null, null, new AnonymousClass2(this, null), 3, null);
    }

    public final void f(String str) {
        synchronized (this.f12241f) {
            c cVar = this.f12239d.get(str);
            if (cVar != null) {
                c a2 = c(str).a();
                if (a2 != null) {
                    a2.c();
                }
                h.f.b.j.a((Object) cVar, "it");
                a(cVar);
                h hVar = h.f14579a;
            }
        }
    }

    public void g(String str) {
        h.f.b.j.b(str, "entityId");
        synchronized (this.f12241f) {
            c a2 = c(str).a();
            if (a2 != null) {
                p<DownloaderProgressInfo> n = a2.n();
                if (n != null) {
                    x.a.a(n, null, 1, null);
                }
            }
            this.f12239d.remove(str);
            this.f12238c.remove(str);
            this.f12244i.b(str);
            j jVar = this.f12240e.get(str);
            if (jVar != null) {
                x.a.a(jVar, null, 1, null);
            }
            h(str);
            h hVar = h.f14579a;
        }
    }

    public final void h(String str) {
        synchronized (this.f12241f) {
            Integer b2 = c(str).b();
            if (b2 != null) {
                c remove = this.f12237b.remove(b2.intValue());
            }
        }
    }

    public final void b() {
        synchronized (this.f12241f) {
            if (this.f12239d.size() < this.f12242g.a().f()) {
                c c2 = c();
                if (c2 != null) {
                    a(c2);
                }
            }
            h hVar = h.f14579a;
        }
    }

    public final c c() {
        synchronized (this.f12241f) {
            int size = this.f12237b.size();
            for (int i2 = 0; i2 < size; i2++) {
                String k2 = this.f12237b.get(i2).k();
                if (this.f12239d.get(k2) == null && this.f12238c.get(k2) == null && this.f12237b.get(i2).o() != DownloadStatus.PAUSE_BY_SYSTEM) {
                    c cVar = this.f12237b.get(i2);
                    return cVar;
                }
            }
            return null;
        }
    }

    public t<DownloaderProgressInfo> d(String str) {
        h.f.b.j.b(str, "entityId");
        synchronized (this.f12241f) {
            c a2 = c(str).a();
            if (a2 == null) {
                return null;
            }
            t<DownloaderProgressInfo> b2 = a2.n().b();
            return b2;
        }
    }

    public t<DownloadStatus> e(String str) {
        h.f.b.j.b(str, "entityId");
        synchronized (this.f12241f) {
            c cVar = this.f12239d.get(str);
            if (cVar != null) {
                t<DownloadStatus> b2 = cVar.p().b();
                return b2;
            }
            c a2 = c(str).a();
            if (a2 == null) {
                return null;
            }
            t<DownloadStatus> b3 = a2.p().b();
            return b3;
        }
    }

    public h.c.e a() {
        return c.c.a.c.a.b.f4693c.a().plus(this.f12236a);
    }

    public static /* synthetic */ void a(DownloadManager downloadManager, String str, EntityType entityType, List list, List list2, BigInteger bigInteger, BigInteger bigInteger2, Cipher cipher, int i2, boolean z, boolean z2, int i3, Object obj) {
        int i4 = i3;
        if (obj == null) {
            downloadManager.a(str, entityType, list, list2, bigInteger, bigInteger2, (i4 & 64) != 0 ? null : cipher, (i4 & 128) != 0 ? 1 : i2, (i4 & 256) != 0 ? true : z, (i4 & 512) != 0 ? false : z2);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addToDownloadQueue");
    }

    public final void d() {
        synchronized (this.f12241f) {
            if (!this.f12237b.isEmpty()) {
                for (int size = this.f12237b.size() - 1; size >= 0; size--) {
                    g(this.f12237b.get(size).k());
                }
            }
            h hVar = h.f14579a;
        }
    }

    public final void a(String str, EntityType entityType, List<String> list, List<String> list2, BigInteger bigInteger, BigInteger bigInteger2, Cipher cipher, int i2, boolean z, boolean z2) {
        h.f.b.j.b(str, "entityId");
        h.f.b.j.b(entityType, "entityType");
        h.f.b.j.b(list, "downloadUrls");
        synchronized (this.f12241f) {
            c cVar = new c(str, entityType, list, list2, bigInteger, bigInteger2, z, cipher, i2, null, 512, null);
            if (z2) {
                this.f12237b.add(Math.min(this.f12237b.size(), this.f12239d.size()), cVar);
                h hVar = h.f14579a;
            } else {
                Boolean.valueOf(this.f12237b.add(cVar));
            }
        }
    }

    public void b(String str) {
        h.f.b.j.b(str, "entityId");
        synchronized (this.f12241f) {
            c a2 = c(str).a();
            if (a2 != null) {
                a2.a(DownloadStatus.FAILED_STORAGE);
            }
            this.f12239d.remove(str);
            this.f12238c.remove(str);
            h(str);
            h hVar = h.f14579a;
        }
    }

    public final Pair<c, Integer> c(String str) {
        Pair<c, Integer> pair;
        synchronized (this.f12241f) {
            c cVar = null;
            Integer num = null;
            int i2 = 0;
            for (T next : this.f12237b) {
                int i3 = i2 + 1;
                if (i2 >= 0) {
                    c cVar2 = (c) next;
                    if (h.f.b.j.a((Object) cVar2.k(), (Object) str)) {
                        num = Integer.valueOf(i2);
                        cVar = cVar2;
                    }
                    i2 = i3;
                } else {
                    l.b();
                    throw null;
                }
            }
            pair = new Pair<>(cVar, num);
        }
        return pair;
    }

    public final void a(DownloadConnectionType downloadConnectionType) {
        h.f.b.j.b(downloadConnectionType, SessionEventTransform.TYPE_KEY);
        this.f12242g.a(downloadConnectionType);
        b();
    }

    public final void a(c cVar) {
        DownloadStatus downloadStatus;
        c cVar2 = cVar;
        this.f12239d.put(cVar.k(), cVar2);
        File a2 = this.f12243h.a(cVar.k(), cVar.q(), cVar.r());
        boolean b2 = this.f12243h.b(cVar.k(), cVar.q());
        if ((!a2.exists() || a2.length() <= 0) && !b2) {
            downloadStatus = DownloadStatus.DOWNLOADING;
        } else {
            downloadStatus = DownloadStatus.CONTINUING;
        }
        cVar2.b(downloadStatus);
        if (b2) {
            File a3 = this.f12243h.a(cVar.k(), cVar.q());
            if (h.f.b.j.a((Object) a3 != null ? c.c.a.c.b.d.b(a3) : null, (Object) cVar.b())) {
                a(cVar.k(), cVar.q());
                return;
            } else if (a3 != null) {
                a3.delete();
            }
        }
        j a4 = i.a.b.l.a(0, 1, null);
        C1125ra unused = C1103g.b(this, null, null, new DownloadManager$startDownloadProcess$1(this, a4, cVar2, null), 3, null);
        String j2 = cVar.j();
        if (j2 != null) {
            DownloadManager$startDownloadProcess$2 downloadManager$startDownloadProcess$2 = new DownloadManager$startDownloadProcess$2(this, cVar2, a2);
            j jVar = this.f12240e.get(cVar.k());
            if (jVar != null) {
                x.a.a(jVar, null, 1, null);
            }
            this.f12240e.put(cVar.k(), a4);
            this.f12244i.a(cVar.k(), j2, a2, cVar.b(), cVar.d(), cVar.n(), a4, new DownloadManager$startDownloadProcess$3(downloadManager$startDownloadProcess$2), cVar.m(), cVar.f());
        } else {
            a aVar = a.f4699b;
            aVar.a(new Throwable("all url are not valid " + cVar.k()));
            a(cVar.k());
        }
    }

    public final boolean a(File file, c cVar, BigInteger bigInteger) {
        File a2 = this.f12243h.a(cVar.k(), EntityType.APP, true);
        File a3 = this.f12243h.a(cVar.k());
        boolean z = false;
        if (a3 != null) {
            boolean z2 = false;
            for (int i2 = 0; i2 <= 2; i2++) {
                z2 = new AppPatcherActivity().a(a3, a2, file);
                if (z2) {
                    break;
                }
            }
            file.delete();
            if (!z2 || !c.c.a.c.b.d.a(a2, bigInteger)) {
                a2.delete();
            } else {
                a2.renameTo(file);
                z = true;
            }
            return z;
        }
        file.delete();
        return false;
    }

    public void a(String str) {
        h.f.b.j.b(str, "entityId");
        synchronized (this.f12241f) {
            c a2 = c(str).a();
            if (a2 != null) {
                if (a2.i().a()) {
                    j jVar = this.f12240e.get(str);
                    if (jVar != null) {
                        x.a.a(jVar, null, 1, null);
                    }
                    a(a2);
                } else {
                    this.f12239d.remove(str);
                    this.f12238c.remove(str);
                    a2.a(DownloadStatus.FAILED);
                    h(str);
                }
                h hVar = h.f14579a;
            }
        }
    }

    public void a(String str, EntityType entityType) {
        boolean z;
        h.f.b.j.b(str, "entityId");
        h.f.b.j.b(entityType, "entityType");
        synchronized (this.f12241f) {
            int i2 = g.f5163b[entityType.ordinal()];
            if (i2 == 1 || i2 == 2) {
                z = this.f12243h.c(str, entityType);
            } else {
                z = true;
            }
            if (!z) {
                if (!this.f12243h.b(str, entityType)) {
                    a(str);
                    h hVar = h.f14579a;
                }
            }
            Pair<c, Integer> c2 = c(str);
            c a2 = c2.a();
            Integer b2 = c2.b();
            this.f12239d.remove(str);
            this.f12238c.remove(str);
            if (a2 != null) {
                a2.b(DownloadStatus.COMPLETED);
                ObservableList<c> observableList = this.f12237b;
                if (b2 != null) {
                    c remove = observableList.remove(b2.intValue());
                } else {
                    h.f.b.j.a();
                    throw null;
                }
            }
            j jVar = this.f12240e.get(str);
            if (jVar != null) {
                Boolean.valueOf(x.a.a(jVar, null, 1, null));
            }
        }
    }
}
