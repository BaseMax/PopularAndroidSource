package com.a.a.c;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import com.a.a.c.ag;
import com.a.a.c.f;
import com.a.a.c.v;
import com.google.android.gms.measurement.AppMeasurement;
import io.fabric.sdk.android.l;
import io.fabric.sdk.android.services.common.DeliveryMechanism;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.j;
import io.fabric.sdk.android.services.settings.o;
import io.fabric.sdk.android.services.settings.p;
import io.fabric.sdk.android.services.settings.q;
import io.fabric.sdk.android.services.settings.s;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class i {

    /* renamed from: a  reason: collision with root package name */
    static final FilenameFilter f1768a = new FilenameFilter() {
        public final boolean accept(File file, String str) {
            return str.length() == 39 && str.endsWith(d.SESSION_FILE_EXTENSION);
        }
    };

    /* renamed from: b  reason: collision with root package name */
    static final Comparator<File> f1769b = new Comparator<File>() {
        public final int compare(File file, File file2) {
            return file2.getName().compareTo(file.getName());
        }
    };
    static final Comparator<File> c = new Comparator<File>() {
        public final int compare(File file, File file2) {
            return file.getName().compareTo(file2.getName());
        }
    };
    static final FilenameFilter d = new FilenameFilter() {
        public final boolean accept(File file, String str) {
            return i.l.matcher(str).matches();
        }
    };
    /* access modifiers changed from: private */
    public static final Pattern l = Pattern.compile("([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+");
    private static final Map<String, String> m = Collections.singletonMap("X-CRASHLYTICS-SEND-FLAGS", "1");
    private static final String[] n = {"SessionUser", "SessionApp", "SessionOS", "SessionDevice"};
    /* access modifiers changed from: package-private */
    public final j e;
    final h f;
    final ac g;
    final a h;
    final ag.c i;
    final ag.b j;
    n k;
    private final AtomicInteger o = new AtomicInteger(0);
    private final io.fabric.sdk.android.services.network.d p;
    private final IdManager q;
    private final io.fabric.sdk.android.services.c.a r;
    private final d s;
    /* access modifiers changed from: private */
    public final v t;
    private final r u;
    private final aj v;
    private final String w;

    static class a implements FilenameFilter {
        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        public final boolean accept(File file, String str) {
            return !i.f1768a.accept(file, str) && i.l.matcher(str).matches();
        }
    }

    static class b implements FilenameFilter {

        /* renamed from: a  reason: collision with root package name */
        private final String f1789a;

        public b(String str) {
            this.f1789a = str;
        }

        public final boolean accept(File file, String str) {
            return str.contains(this.f1789a) && !str.endsWith(d.IN_PROGRESS_SESSION_FILE_EXTENSION);
        }
    }

    static class c implements FilenameFilter {
        c() {
        }

        public final boolean accept(File file, String str) {
            return d.TEMP_FILENAME_FILTER.accept(file, str) || str.contains("SessionMissingBinaryImages");
        }
    }

    static final class d implements v.a {

        /* renamed from: a  reason: collision with root package name */
        private final io.fabric.sdk.android.services.c.a f1790a;

        public d(io.fabric.sdk.android.services.c.a aVar) {
            this.f1790a = aVar;
        }

        public final File getLogFileDir() {
            File file = new File(this.f1790a.getFilesDir(), "log-files");
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        }
    }

    static final class e implements ag.d {

        /* renamed from: a  reason: collision with root package name */
        final ac f1791a;

        /* renamed from: b  reason: collision with root package name */
        private final io.fabric.sdk.android.i f1792b;
        private final o c;

        public e(io.fabric.sdk.android.i iVar, ac acVar, o oVar) {
            this.f1792b = iVar;
            this.f1791a = acVar;
            this.c = oVar;
        }

        public final boolean canSendReports() {
            Activity currentActivity = this.f1792b.getFabric().getCurrentActivity();
            if (currentActivity == null || currentActivity.isFinishing()) {
                return true;
            }
            final f create = f.create(currentActivity, this.c, new f.a() {
                public final void sendUserReportsWithoutPrompting(boolean z) {
                    ac acVar = e.this.f1791a;
                    acVar.f1727a.save(acVar.f1727a.edit().putBoolean("always_send_reports_opt_in", z));
                }
            });
            currentActivity.runOnUiThread(new Runnable() {
                public final void run() {
                    create.show();
                }
            });
            io.fabric.sdk.android.c.getLogger().d(j.TAG, "Waiting for user opt-in.");
            create.await();
            return create.getOptIn();
        }
    }

    final class f implements ag.c {
        private f() {
        }

        /* synthetic */ f(i iVar, byte b2) {
            this();
        }

        public final File[] getCompleteSessionFiles() {
            return i.this.a();
        }

        public final File[] getInvalidSessionFiles() {
            return i.this.g().listFiles();
        }
    }

    final class g implements ag.b {
        private g() {
        }

        /* synthetic */ g(i iVar, byte b2) {
            this();
        }

        public final boolean isHandlingException() {
            return i.this.c();
        }
    }

    static final class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Context f1798a;

        /* renamed from: b  reason: collision with root package name */
        private final af f1799b;
        private final ag c;

        public h(Context context, af afVar, ag agVar) {
            this.f1798a = context;
            this.f1799b = afVar;
            this.c = agVar;
        }

        public final void run() {
            if (io.fabric.sdk.android.services.common.i.canTryConnection(this.f1798a)) {
                io.fabric.sdk.android.c.getLogger().d(j.TAG, "Attempting to send crash report at time of crash...");
                this.c.a(this.f1799b);
            }
        }
    }

    /* renamed from: com.a.a.c.i$i  reason: collision with other inner class name */
    static class C0030i implements FilenameFilter {

        /* renamed from: a  reason: collision with root package name */
        private final String f1800a;

        public C0030i(String str) {
            this.f1800a = str;
        }

        public final boolean accept(File file, String str) {
            if (!str.equals(this.f1800a + d.SESSION_FILE_EXTENSION) && str.contains(this.f1800a) && !str.endsWith(d.IN_PROGRESS_SESSION_FILE_EXTENSION)) {
                return true;
            }
            return false;
        }
    }

    private static File[] a(File[] fileArr) {
        return fileArr == null ? new File[0] : fileArr;
    }

    i(j jVar, h hVar, io.fabric.sdk.android.services.network.d dVar, IdManager idManager, ac acVar, io.fabric.sdk.android.services.c.a aVar, a aVar2, al alVar) {
        this.e = jVar;
        this.f = hVar;
        this.p = dVar;
        this.q = idManager;
        this.g = acVar;
        this.r = aVar;
        this.h = aVar2;
        this.w = alVar.getUnityVersion();
        Context context = jVar.getContext();
        this.s = new d(aVar);
        this.t = new v(context, this.s);
        this.i = new f(this, (byte) 0);
        this.j = new g(this, (byte) 0);
        this.u = new r(context);
        this.v = new y(1024, new ae(10));
    }

    /* access modifiers changed from: package-private */
    public final synchronized void a(final Thread thread, final Throwable th) {
        l logger = io.fabric.sdk.android.c.getLogger();
        logger.d(j.TAG, "Crashlytics is handling uncaught exception \"" + th + "\" from thread " + thread.getName());
        this.u.dispose();
        final Date date = new Date();
        this.f.a(new Callable<Void>() {
            public final Void call() throws Exception {
                i.this.e.f1802b.create();
                i.a(i.this, date, thread, th);
                s awaitSettingsData = q.getInstance().awaitSettingsData();
                p pVar = awaitSettingsData != null ? awaitSettingsData.sessionData : null;
                i.this.a(pVar, false);
                i.b(i.this);
                if (pVar != null) {
                    i iVar = i.this;
                    int i = pVar.maxCompleteSessionsCount;
                    int a2 = i - an.a(iVar.e(), i, i.c);
                    an.a(iVar.d(), i.f1768a, a2 - an.a(iVar.f(), a2, i.c), i.c);
                }
                if (!i.this.a(awaitSettingsData)) {
                    i.b(i.this, awaitSettingsData);
                }
                return null;
            }
        });
    }

    /* access modifiers changed from: package-private */
    public final void a(final long j2, final String str) {
        this.f.b(new Callable<Void>() {
            public final Void call() throws Exception {
                if (!i.this.c()) {
                    v c2 = i.this.t;
                    c2.f1824a.writeToLog(j2, str);
                }
                return null;
            }
        });
    }

    /* access modifiers changed from: package-private */
    public final void a(final String str, final String str2, final String str3) {
        this.f.b(new Callable<Void>() {
            public final Void call() throws Exception {
                new x(i.this.d()).writeUserData(i.this.i(), new am(str, str2, str3));
                return null;
            }
        });
    }

    /* access modifiers changed from: private */
    public String i() {
        File[] k2 = k();
        if (k2.length > 0) {
            return a(k2[0]);
        }
        return null;
    }

    static String a(File file) {
        return file.getName().substring(0, 35);
    }

    /* JADX WARNING: Removed duplicated region for block: B:51:0x019f A[SYNTHETIC, Splitter:B:51:0x019f] */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x01ae A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(java.io.File[] r20, int r21, int r22) {
        /*
            r19 = this;
            r1 = r19
            r2 = r20
            r3 = r22
            java.lang.String r4 = "Failed to close CLS file"
            java.lang.String r5 = "Error flushing session file stream"
            io.fabric.sdk.android.l r0 = io.fabric.sdk.android.c.getLogger()
            java.lang.String r6 = "CrashlyticsCore"
            java.lang.String r7 = "Closing open sessions."
            r0.d(r6, r7)
            r7 = r21
        L_0x0017:
            int r0 = r2.length
            if (r7 >= r0) goto L_0x01d0
            r0 = r2[r7]
            java.lang.String r8 = a((java.io.File) r0)
            io.fabric.sdk.android.l r9 = io.fabric.sdk.android.c.getLogger()
            java.lang.String r10 = java.lang.String.valueOf(r8)
            java.lang.String r11 = "Closing session: "
            java.lang.String r10 = r11.concat(r10)
            r9.d(r6, r10)
            io.fabric.sdk.android.l r9 = io.fabric.sdk.android.c.getLogger()
            java.lang.String r10 = java.lang.String.valueOf(r8)
            java.lang.String r11 = "Collecting session parts for ID "
            java.lang.String r10 = r11.concat(r10)
            r9.d(r6, r10)
            com.a.a.c.i$b r9 = new com.a.a.c.i$b
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            r10.append(r8)
            java.lang.String r11 = "SessionCrash"
            r10.append(r11)
            java.lang.String r10 = r10.toString()
            r9.<init>(r10)
            java.io.File[] r9 = r1.a((java.io.FilenameFilter) r9)
            r10 = 0
            if (r9 == 0) goto L_0x0064
            int r12 = r9.length
            if (r12 <= 0) goto L_0x0064
            r12 = 1
            goto L_0x0065
        L_0x0064:
            r12 = 0
        L_0x0065:
            io.fabric.sdk.android.l r13 = io.fabric.sdk.android.c.getLogger()
            java.util.Locale r14 = java.util.Locale.US
            r15 = 2
            java.lang.Object[] r11 = new java.lang.Object[r15]
            r11[r10] = r8
            java.lang.Boolean r16 = java.lang.Boolean.valueOf(r12)
            r17 = 1
            r11[r17] = r16
            java.lang.String r10 = "Session %s has fatal exception: %s"
            java.lang.String r10 = java.lang.String.format(r14, r10, r11)
            r13.d(r6, r10)
            com.a.a.c.i$b r10 = new com.a.a.c.i$b
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            r11.append(r8)
            java.lang.String r13 = "SessionEvent"
            r11.append(r13)
            java.lang.String r11 = r11.toString()
            r10.<init>(r11)
            java.io.File[] r10 = r1.a((java.io.FilenameFilter) r10)
            if (r10 == 0) goto L_0x00a2
            int r11 = r10.length
            if (r11 <= 0) goto L_0x00a2
            r11 = 1
            goto L_0x00a3
        L_0x00a2:
            r11 = 0
        L_0x00a3:
            io.fabric.sdk.android.l r14 = io.fabric.sdk.android.c.getLogger()
            java.util.Locale r2 = java.util.Locale.US
            java.lang.Object[] r15 = new java.lang.Object[r15]
            r16 = 0
            r15[r16] = r8
            java.lang.Boolean r17 = java.lang.Boolean.valueOf(r11)
            r18 = 1
            r15[r18] = r17
            r17 = r7
            java.lang.String r7 = "Session %s has non-fatal exceptions: %s"
            java.lang.String r2 = java.lang.String.format(r2, r7, r15)
            r14.d(r6, r2)
            if (r12 != 0) goto L_0x00da
            if (r11 == 0) goto L_0x00c7
            goto L_0x00da
        L_0x00c7:
            io.fabric.sdk.android.l r0 = io.fabric.sdk.android.c.getLogger()
            java.lang.String r2 = java.lang.String.valueOf(r8)
            java.lang.String r7 = "No events present for session ID "
            java.lang.String r2 = r7.concat(r2)
            r0.d(r6, r2)
            goto L_0x01ae
        L_0x00da:
            int r2 = r10.length
            if (r2 <= r3) goto L_0x0111
            io.fabric.sdk.android.l r2 = io.fabric.sdk.android.c.getLogger()
            java.util.Locale r7 = java.util.Locale.US
            r10 = 1
            java.lang.Object[] r11 = new java.lang.Object[r10]
            java.lang.Integer r10 = java.lang.Integer.valueOf(r22)
            r14 = 0
            r11[r14] = r10
            java.lang.String r10 = "Trimming down to %d logged exceptions."
            java.lang.String r7 = java.lang.String.format(r7, r10, r11)
            r2.d(r6, r7)
            r1.a((java.lang.String) r8, (int) r3)
            com.a.a.c.i$b r2 = new com.a.a.c.i$b
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r7.append(r8)
            r7.append(r13)
            java.lang.String r7 = r7.toString()
            r2.<init>(r7)
            java.io.File[] r10 = r1.a((java.io.FilenameFilter) r2)
        L_0x0111:
            r2 = 0
            r16 = 0
            if (r12 == 0) goto L_0x0119
            r7 = r9[r16]
            goto L_0x011a
        L_0x0119:
            r7 = r2
        L_0x011a:
            if (r7 == 0) goto L_0x011e
            r9 = 1
            goto L_0x011f
        L_0x011e:
            r9 = 0
        L_0x011f:
            if (r9 == 0) goto L_0x0126
            java.io.File r11 = r19.e()
            goto L_0x012a
        L_0x0126:
            java.io.File r11 = r19.f()
        L_0x012a:
            boolean r12 = r11.exists()
            if (r12 != 0) goto L_0x0133
            r11.mkdirs()
        L_0x0133:
            com.a.a.c.d r12 = new com.a.a.c.d     // Catch:{ Exception -> 0x0187, all -> 0x0184 }
            r12.<init>((java.io.File) r11, (java.lang.String) r8)     // Catch:{ Exception -> 0x0187, all -> 0x0184 }
            com.a.a.c.e r2 = com.a.a.c.e.newInstance((java.io.OutputStream) r12)     // Catch:{ Exception -> 0x0182 }
            io.fabric.sdk.android.l r11 = io.fabric.sdk.android.c.getLogger()     // Catch:{ Exception -> 0x0182 }
            java.lang.String r13 = "Collecting SessionStart data for session ID "
            java.lang.String r14 = java.lang.String.valueOf(r8)     // Catch:{ Exception -> 0x0182 }
            java.lang.String r13 = r13.concat(r14)     // Catch:{ Exception -> 0x0182 }
            r11.d(r6, r13)     // Catch:{ Exception -> 0x0182 }
            a((com.a.a.c.e) r2, (java.io.File) r0)     // Catch:{ Exception -> 0x0182 }
            r0 = 4
            java.util.Date r11 = new java.util.Date     // Catch:{ Exception -> 0x0182 }
            r11.<init>()     // Catch:{ Exception -> 0x0182 }
            long r13 = r11.getTime()     // Catch:{ Exception -> 0x0182 }
            r15 = 1000(0x3e8, double:4.94E-321)
            long r13 = r13 / r15
            r2.writeUInt64(r0, r13)     // Catch:{ Exception -> 0x0182 }
            r0 = 5
            r2.writeBool(r0, r9)     // Catch:{ Exception -> 0x0182 }
            r0 = 11
            r11 = 1
            r2.writeUInt32(r0, r11)     // Catch:{ Exception -> 0x0182 }
            r0 = 12
            r11 = 3
            r2.writeEnum(r0, r11)     // Catch:{ Exception -> 0x0182 }
            r1.a((com.a.a.c.e) r2, (java.lang.String) r8)     // Catch:{ Exception -> 0x0182 }
            a((com.a.a.c.e) r2, (java.io.File[]) r10, (java.lang.String) r8)     // Catch:{ Exception -> 0x0182 }
            if (r9 == 0) goto L_0x017b
            a((com.a.a.c.e) r2, (java.io.File) r7)     // Catch:{ Exception -> 0x0182 }
        L_0x017b:
            io.fabric.sdk.android.services.common.i.flushOrLog(r2, r5)
            io.fabric.sdk.android.services.common.i.closeOrLog(r12, r4)
            goto L_0x01ae
        L_0x0182:
            r0 = move-exception
            goto L_0x0189
        L_0x0184:
            r0 = move-exception
            r12 = r2
            goto L_0x01c9
        L_0x0187:
            r0 = move-exception
            r12 = r2
        L_0x0189:
            io.fabric.sdk.android.l r7 = io.fabric.sdk.android.c.getLogger()     // Catch:{ all -> 0x01c8 }
            java.lang.String r9 = "Failed to write session file for session ID: "
            java.lang.String r10 = java.lang.String.valueOf(r8)     // Catch:{ all -> 0x01c8 }
            java.lang.String r9 = r9.concat(r10)     // Catch:{ all -> 0x01c8 }
            r7.e(r6, r9, r0)     // Catch:{ all -> 0x01c8 }
            io.fabric.sdk.android.services.common.i.flushOrLog(r2, r5)
            if (r12 == 0) goto L_0x01ae
            r12.closeInProgressStream()     // Catch:{ IOException -> 0x01a3 }
            goto L_0x01ae
        L_0x01a3:
            r0 = move-exception
            r2 = r0
            io.fabric.sdk.android.l r0 = io.fabric.sdk.android.c.getLogger()
            java.lang.String r7 = "Error closing session file stream in the presence of an exception"
            r0.e(r6, r7, r2)
        L_0x01ae:
            io.fabric.sdk.android.l r0 = io.fabric.sdk.android.c.getLogger()
            java.lang.String r2 = java.lang.String.valueOf(r8)
            java.lang.String r7 = "Removing session part files for ID "
            java.lang.String r2 = r7.concat(r2)
            r0.d(r6, r2)
            r1.b((java.lang.String) r8)
            int r7 = r17 + 1
            r2 = r20
            goto L_0x0017
        L_0x01c8:
            r0 = move-exception
        L_0x01c9:
            io.fabric.sdk.android.services.common.i.flushOrLog(r2, r5)
            io.fabric.sdk.android.services.common.i.closeOrLog(r12, r4)
            throw r0
        L_0x01d0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.a.a.c.i.a(java.io.File[], int, int):void");
    }

    /* access modifiers changed from: package-private */
    public final File[] a() {
        LinkedList linkedList = new LinkedList();
        Collections.addAll(linkedList, a(e(), f1768a));
        Collections.addAll(linkedList, a(f(), f1768a));
        Collections.addAll(linkedList, a(d(), f1768a));
        return (File[]) linkedList.toArray(new File[linkedList.size()]);
    }

    private File[] j() {
        return a((FilenameFilter) new b("BeginSession"));
    }

    private File[] k() {
        File[] j2 = j();
        Arrays.sort(j2, f1769b);
        return j2;
    }

    /* access modifiers changed from: package-private */
    public final File[] a(FilenameFilter filenameFilter) {
        return a(d(), filenameFilter);
    }

    private static File[] a(File file, FilenameFilter filenameFilter) {
        return a(file.listFiles(filenameFilter));
    }

    private void a(String str, int i2) {
        File d2 = d();
        an.a(d2, new b(str + "SessionEvent"), i2, c);
    }

    private static void a(File[] fileArr, Set<String> set) {
        for (File file : fileArr) {
            String name = file.getName();
            Matcher matcher = l.matcher(name);
            if (!matcher.matches()) {
                io.fabric.sdk.android.c.getLogger().d(j.TAG, "Deleting unknown file: ".concat(String.valueOf(name)));
                file.delete();
                return;
            }
            if (!set.contains(matcher.group(1))) {
                io.fabric.sdk.android.c.getLogger().d(j.TAG, "Trimming session file: ".concat(String.valueOf(name)));
                file.delete();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        File g2 = g();
        if (g2.exists()) {
            File[] a2 = a(g2, (FilenameFilter) new c());
            Arrays.sort(a2, Collections.reverseOrder());
            HashSet hashSet = new HashSet();
            for (int i2 = 0; i2 < a2.length && hashSet.size() < 4; i2++) {
                hashSet.add(a(a2[i2]));
            }
            a(a(g2.listFiles()), (Set<String>) hashSet);
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v2, resolved type: java.util.TreeMap} */
    /* JADX WARNING: type inference failed for: r6v2, types: [boolean] */
    /* JADX WARNING: type inference failed for: r6v4 */
    /* JADX WARNING: type inference failed for: r6v5 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(com.a.a.c.e r25, java.util.Date r26, java.lang.Thread r27, java.lang.Throwable r28, java.lang.String r29, boolean r30) throws java.lang.Exception {
        /*
            r24 = this;
            r0 = r24
            com.a.a.c.ak r5 = new com.a.a.c.ak
            com.a.a.c.aj r1 = r0.v
            r2 = r28
            r5.<init>(r2, r1)
            com.a.a.c.j r1 = r0.e
            android.content.Context r1 = r1.getContext()
            long r2 = r26.getTime()
            r6 = 1000(0x3e8, double:4.94E-321)
            long r2 = r2 / r6
            java.lang.Float r16 = io.fabric.sdk.android.services.common.i.getBatteryLevel(r1)
            com.a.a.c.r r4 = r0.u
            boolean r4 = r4.isPowerConnected()
            int r17 = io.fabric.sdk.android.services.common.i.getBatteryVelocity(r1, r4)
            boolean r18 = io.fabric.sdk.android.services.common.i.getProximitySensorEnabled(r1)
            android.content.res.Resources r4 = r1.getResources()
            android.content.res.Configuration r4 = r4.getConfiguration()
            int r13 = r4.orientation
            long r6 = io.fabric.sdk.android.services.common.i.getTotalRamInBytes()
            long r8 = io.fabric.sdk.android.services.common.i.calculateFreeRamInBytes(r1)
            long r19 = r6 - r8
            java.io.File r4 = android.os.Environment.getDataDirectory()
            java.lang.String r4 = r4.getPath()
            long r21 = io.fabric.sdk.android.services.common.i.calculateUsedDiskSpaceInBytes(r4)
            java.lang.String r4 = r1.getPackageName()
            android.app.ActivityManager$RunningAppProcessInfo r12 = io.fabric.sdk.android.services.common.i.getAppProcessInfo(r4, r1)
            java.util.LinkedList r9 = new java.util.LinkedList
            r9.<init>()
            java.lang.StackTraceElement[] r7 = r5.stacktrace
            com.a.a.c.a r4 = r0.h
            java.lang.String r15 = r4.buildId
            io.fabric.sdk.android.services.common.IdManager r4 = r0.q
            java.lang.String r14 = r4.getAppIdentifier()
            r4 = 0
            if (r30 == 0) goto L_0x00a1
            java.util.Map r8 = java.lang.Thread.getAllStackTraces()
            int r10 = r8.size()
            java.lang.Thread[] r10 = new java.lang.Thread[r10]
            java.util.Set r8 = r8.entrySet()
            java.util.Iterator r8 = r8.iterator()
        L_0x0078:
            boolean r11 = r8.hasNext()
            if (r11 == 0) goto L_0x009e
            java.lang.Object r11 = r8.next()
            java.util.Map$Entry r11 = (java.util.Map.Entry) r11
            java.lang.Object r23 = r11.getKey()
            java.lang.Thread r23 = (java.lang.Thread) r23
            r10[r4] = r23
            com.a.a.c.aj r6 = r0.v
            java.lang.Object r11 = r11.getValue()
            java.lang.StackTraceElement[] r11 = (java.lang.StackTraceElement[]) r11
            java.lang.StackTraceElement[] r6 = r6.getTrimmedStackTrace(r11)
            r9.add(r6)
            r6 = 1
            int r4 = r4 + r6
            goto L_0x0078
        L_0x009e:
            r6 = 1
            r8 = r10
            goto L_0x00a5
        L_0x00a1:
            r6 = 1
            java.lang.Thread[] r4 = new java.lang.Thread[r4]
            r8 = r4
        L_0x00a5:
            java.lang.String r4 = "com.crashlytics.CollectCustomKeys"
            boolean r1 = io.fabric.sdk.android.services.common.i.getBooleanResourceValue(r1, r4, r6)
            if (r1 != 0) goto L_0x00b3
            java.util.TreeMap r1 = new java.util.TreeMap
            r1.<init>()
            goto L_0x00ca
        L_0x00b3:
            com.a.a.c.j r1 = r0.e
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.String> r1 = r1.f1801a
            java.util.Map r1 = java.util.Collections.unmodifiableMap(r1)
            if (r1 == 0) goto L_0x00ca
            int r4 = r1.size()
            if (r4 <= r6) goto L_0x00ca
            java.util.TreeMap r4 = new java.util.TreeMap
            r4.<init>(r1)
            r10 = r4
            goto L_0x00cb
        L_0x00ca:
            r10 = r1
        L_0x00cb:
            com.a.a.c.v r11 = r0.t
            r1 = r25
            r4 = r29
            r6 = r27
            com.a.a.c.ah.writeSessionEvent(r1, r2, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r21)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.a.a.c.i.a(com.a.a.c.e, java.util.Date, java.lang.Thread, java.lang.Throwable, java.lang.String, boolean):void");
    }

    private static void a(e eVar, File[] fileArr, String str) {
        Arrays.sort(fileArr, io.fabric.sdk.android.services.common.i.FILE_MODIFIED_COMPARATOR);
        for (File file : fileArr) {
            try {
                io.fabric.sdk.android.c.getLogger().d(j.TAG, String.format(Locale.US, "Found Non Fatal for session ID %s in %s ", new Object[]{str, file.getName()}));
                a(eVar, file);
            } catch (Exception e2) {
                io.fabric.sdk.android.c.getLogger().e(j.TAG, "Error writting non-fatal to session.", e2);
            }
        }
    }

    private void a(e eVar, String str) throws IOException {
        for (String str2 : n) {
            File[] a2 = a((FilenameFilter) new b(str + str2));
            if (a2.length == 0) {
                io.fabric.sdk.android.c.getLogger().e(j.TAG, "Can't find " + str2 + " data for session ID " + str, null);
            } else {
                io.fabric.sdk.android.c.getLogger().d(j.TAG, "Collecting " + str2 + " data for session ID " + str);
                a(eVar, a2[0]);
            }
        }
    }

    private static void a(e eVar, File file) throws IOException {
        FileInputStream fileInputStream;
        if (!file.exists()) {
            io.fabric.sdk.android.c.getLogger().e(j.TAG, "Tried to include a file that doesn't exist: " + file.getName(), null);
            return;
        }
        try {
            fileInputStream = new FileInputStream(file);
            try {
                a((InputStream) fileInputStream, eVar, (int) file.length());
                io.fabric.sdk.android.services.common.i.closeOrLog(fileInputStream, "Failed to close file input stream.");
            } catch (Throwable th) {
                th = th;
                io.fabric.sdk.android.services.common.i.closeOrLog(fileInputStream, "Failed to close file input stream.");
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
            io.fabric.sdk.android.services.common.i.closeOrLog(fileInputStream, "Failed to close file input stream.");
            throw th;
        }
    }

    private static void a(InputStream inputStream, e eVar, int i2) throws IOException {
        byte[] bArr = new byte[i2];
        int i3 = 0;
        while (i3 < bArr.length) {
            int read = inputStream.read(bArr, i3, bArr.length - i3);
            if (read < 0) {
                break;
            }
            i3 += read;
        }
        eVar.writeRawBytes(bArr);
    }

    /* access modifiers changed from: package-private */
    public final boolean c() {
        n nVar = this.k;
        return nVar != null && nVar.f1813a.get();
    }

    /* access modifiers changed from: package-private */
    public final File d() {
        return this.r.getFilesDir();
    }

    /* access modifiers changed from: package-private */
    public final File e() {
        return new File(d(), "fatal-sessions");
    }

    /* access modifiers changed from: package-private */
    public final File f() {
        return new File(d(), "nonfatal-sessions");
    }

    /* access modifiers changed from: package-private */
    public final File g() {
        return new File(d(), "invalidClsFiles");
    }

    /* access modifiers changed from: package-private */
    public final boolean a(s sVar) {
        if (sVar != null && sVar.featuresData.promptEnabled && !this.g.f1727a.get().getBoolean("always_send_reports_opt_in", false)) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public final p a(String str) {
        return new q(this.e, io.fabric.sdk.android.services.common.i.getStringsFileValue(this.e.getContext(), "com.crashlytics.ApiEndpoint"), str, this.p);
    }

    private static void a(String str, String str2) {
        com.a.a.a.b bVar = (com.a.a.a.b) io.fabric.sdk.android.c.getKit(com.a.a.a.b.class);
        if (bVar == null) {
            io.fabric.sdk.android.c.getLogger().d(j.TAG, "Answers is not available");
        } else {
            bVar.onException(new j.a(str, str2));
        }
    }

    /* JADX WARNING: type inference failed for: r12v0, types: [boolean, int] */
    /* access modifiers changed from: package-private */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(io.fabric.sdk.android.services.settings.p r11, boolean r12) throws java.lang.Exception {
        /*
            r10 = this;
            java.lang.String r0 = "Failed to close session user file."
            java.lang.String r1 = "Failed to flush session user file."
            int r2 = r12 + 8
            java.util.HashSet r3 = new java.util.HashSet
            r3.<init>()
            java.io.File[] r4 = r10.k()
            int r5 = r4.length
            int r2 = java.lang.Math.min(r2, r5)
            r5 = 0
            r6 = 0
        L_0x0016:
            if (r6 >= r2) goto L_0x0024
            r7 = r4[r6]
            java.lang.String r7 = a((java.io.File) r7)
            r3.add(r7)
            int r6 = r6 + 1
            goto L_0x0016
        L_0x0024:
            com.a.a.c.v r2 = r10.t
            r2.a((java.util.Set<java.lang.String>) r3)
            com.a.a.c.i$a r2 = new com.a.a.c.i$a
            r2.<init>(r5)
            java.io.File[] r2 = r10.a((java.io.FilenameFilter) r2)
            a((java.io.File[]) r2, (java.util.Set<java.lang.String>) r3)
            java.io.File[] r2 = r10.k()
            int r3 = r2.length
            java.lang.String r4 = "CrashlyticsCore"
            if (r3 > r12) goto L_0x0048
            io.fabric.sdk.android.l r11 = io.fabric.sdk.android.c.getLogger()
            java.lang.String r12 = "No open sessions to be closed."
            r11.d(r4, r12)
            return
        L_0x0048:
            r3 = r2[r12]
            java.lang.String r3 = a((java.io.File) r3)
            r5 = 0
            com.a.a.c.d r6 = new com.a.a.c.d     // Catch:{ all -> 0x00c3 }
            java.io.File r7 = r10.d()     // Catch:{ all -> 0x00c3 }
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ all -> 0x00c3 }
            r8.<init>()     // Catch:{ all -> 0x00c3 }
            r8.append(r3)     // Catch:{ all -> 0x00c3 }
            java.lang.String r9 = "SessionUser"
            r8.append(r9)     // Catch:{ all -> 0x00c3 }
            java.lang.String r8 = r8.toString()     // Catch:{ all -> 0x00c3 }
            r6.<init>((java.io.File) r7, (java.lang.String) r8)     // Catch:{ all -> 0x00c3 }
            com.a.a.c.e r5 = com.a.a.c.e.newInstance((java.io.OutputStream) r6)     // Catch:{ all -> 0x00c1 }
            boolean r7 = r10.c()     // Catch:{ all -> 0x00c1 }
            if (r7 == 0) goto L_0x008b
            com.a.a.c.am r3 = new com.a.a.c.am     // Catch:{ all -> 0x00c1 }
            com.a.a.c.j r7 = r10.e     // Catch:{ all -> 0x00c1 }
            java.lang.String r7 = r7.b()     // Catch:{ all -> 0x00c1 }
            com.a.a.c.j r8 = r10.e     // Catch:{ all -> 0x00c1 }
            java.lang.String r8 = r8.d()     // Catch:{ all -> 0x00c1 }
            com.a.a.c.j r9 = r10.e     // Catch:{ all -> 0x00c1 }
            java.lang.String r9 = r9.c()     // Catch:{ all -> 0x00c1 }
            r3.<init>(r7, r8, r9)     // Catch:{ all -> 0x00c1 }
            goto L_0x0098
        L_0x008b:
            com.a.a.c.x r7 = new com.a.a.c.x     // Catch:{ all -> 0x00c1 }
            java.io.File r8 = r10.d()     // Catch:{ all -> 0x00c1 }
            r7.<init>(r8)     // Catch:{ all -> 0x00c1 }
            com.a.a.c.am r3 = r7.readUserData(r3)     // Catch:{ all -> 0x00c1 }
        L_0x0098:
            boolean r7 = r3.isEmpty()     // Catch:{ all -> 0x00c1 }
            if (r7 == 0) goto L_0x00a5
        L_0x009e:
            io.fabric.sdk.android.services.common.i.flushOrLog(r5, r1)
            io.fabric.sdk.android.services.common.i.closeOrLog(r6, r0)
            goto L_0x00af
        L_0x00a5:
            java.lang.String r7 = r3.id     // Catch:{ all -> 0x00c1 }
            java.lang.String r8 = r3.name     // Catch:{ all -> 0x00c1 }
            java.lang.String r3 = r3.email     // Catch:{ all -> 0x00c1 }
            com.a.a.c.ah.writeSessionUser(r5, r7, r8, r3)     // Catch:{ all -> 0x00c1 }
            goto L_0x009e
        L_0x00af:
            if (r11 != 0) goto L_0x00bb
            io.fabric.sdk.android.l r11 = io.fabric.sdk.android.c.getLogger()
            java.lang.String r12 = "Unable to close session. Settings are not loaded."
            r11.d(r4, r12)
            return
        L_0x00bb:
            int r11 = r11.maxCustomExceptionEvents
            r10.a((java.io.File[]) r2, (int) r12, (int) r11)
            return
        L_0x00c1:
            r11 = move-exception
            goto L_0x00c5
        L_0x00c3:
            r11 = move-exception
            r6 = r5
        L_0x00c5:
            io.fabric.sdk.android.services.common.i.flushOrLog(r5, r1)
            io.fabric.sdk.android.services.common.i.closeOrLog(r6, r0)
            goto L_0x00cd
        L_0x00cc:
            throw r11
        L_0x00cd:
            goto L_0x00cc
        */
        throw new UnsupportedOperationException("Method not decompiled: com.a.a.c.i.a(io.fabric.sdk.android.services.settings.p, boolean):void");
    }

    private void b(String str) {
        for (File delete : a((FilenameFilter) new C0030i(str))) {
            delete.delete();
        }
    }

    static /* synthetic */ void a(i iVar, Date date, Thread thread, Throwable th) {
        d dVar;
        e eVar = null;
        try {
            String i2 = iVar.i();
            if (i2 == null) {
                io.fabric.sdk.android.c.getLogger().e(j.TAG, "Tried to write a fatal exception while no session was open.", null);
                io.fabric.sdk.android.services.common.i.flushOrLog(null, "Failed to flush to session begin file.");
                io.fabric.sdk.android.services.common.i.closeOrLog(null, "Failed to close fatal exception file output stream.");
                return;
            }
            a(i2, th.getClass().getName());
            dVar = new d(iVar.d(), i2 + "SessionCrash");
            try {
                eVar = e.newInstance((OutputStream) dVar);
                iVar.a(eVar, date, thread, th, AppMeasurement.CRASH_ORIGIN, true);
                io.fabric.sdk.android.services.common.i.flushOrLog(eVar, "Failed to flush to session begin file.");
                io.fabric.sdk.android.services.common.i.closeOrLog(dVar, "Failed to close fatal exception file output stream.");
            } catch (Exception e2) {
                e = e2;
                try {
                    io.fabric.sdk.android.c.getLogger().e(j.TAG, "An error occurred in the fatal exception logger", e);
                    io.fabric.sdk.android.services.common.i.flushOrLog(eVar, "Failed to flush to session begin file.");
                    io.fabric.sdk.android.services.common.i.closeOrLog(dVar, "Failed to close fatal exception file output stream.");
                } catch (Throwable th2) {
                    th = th2;
                    io.fabric.sdk.android.services.common.i.flushOrLog(eVar, "Failed to flush to session begin file.");
                    io.fabric.sdk.android.services.common.i.closeOrLog(dVar, "Failed to close fatal exception file output stream.");
                    throw th;
                }
            }
        } catch (Exception e3) {
            e = e3;
            dVar = null;
            io.fabric.sdk.android.c.getLogger().e(j.TAG, "An error occurred in the fatal exception logger", e);
            io.fabric.sdk.android.services.common.i.flushOrLog(eVar, "Failed to flush to session begin file.");
            io.fabric.sdk.android.services.common.i.closeOrLog(dVar, "Failed to close fatal exception file output stream.");
        } catch (Throwable th3) {
            th = th3;
            dVar = null;
            io.fabric.sdk.android.services.common.i.flushOrLog(eVar, "Failed to flush to session begin file.");
            io.fabric.sdk.android.services.common.i.closeOrLog(dVar, "Failed to close fatal exception file output stream.");
            throw th;
        }
    }

    static /* synthetic */ void b(i iVar) throws Exception {
        e eVar;
        d dVar;
        d dVar2;
        e eVar2;
        d dVar3;
        e eVar3;
        d dVar4;
        String str;
        e eVar4;
        i iVar2 = iVar;
        Date date = new Date();
        String cVar = new c(iVar2.q).toString();
        io.fabric.sdk.android.c.getLogger().d(j.TAG, "Opening a new session with ID ".concat(String.valueOf(cVar)));
        try {
            File d2 = iVar.d();
            dVar = new d(d2, cVar + "BeginSession");
            try {
                eVar = e.newInstance((OutputStream) dVar);
            } catch (Throwable th) {
                th = th;
                eVar = null;
                io.fabric.sdk.android.services.common.i.flushOrLog(eVar, "Failed to flush to session begin file.");
                io.fabric.sdk.android.services.common.i.closeOrLog(dVar, "Failed to close begin session file.");
                throw th;
            }
            try {
                String str2 = "Failed to close session device file.";
                ah.writeBeginSession(eVar, cVar, String.format(Locale.US, "Crashlytics Android SDK/%s", new Object[]{iVar2.e.getVersion()}), date.getTime() / 1000);
                io.fabric.sdk.android.services.common.i.flushOrLog(eVar, "Failed to flush to session begin file.");
                io.fabric.sdk.android.services.common.i.closeOrLog(dVar, "Failed to close begin session file.");
                try {
                    File d3 = iVar.d();
                    dVar2 = new d(d3, cVar + "SessionApp");
                    try {
                        eVar2 = e.newInstance((OutputStream) dVar2);
                        try {
                            String appIdentifier = iVar2.q.getAppIdentifier();
                            String str3 = iVar2.h.versionCode;
                            String str4 = iVar2.h.versionName;
                            String appInstallIdentifier = iVar2.q.getAppInstallIdentifier();
                            int id = DeliveryMechanism.determineFrom(iVar2.h.installerPackageName).getId();
                            ah.writeSessionApp(eVar2, appIdentifier, iVar2.h.apiKey, str3, str4, appInstallIdentifier, id, iVar2.w);
                            io.fabric.sdk.android.services.common.i.flushOrLog(eVar2, "Failed to flush to session app file.");
                            io.fabric.sdk.android.services.common.i.closeOrLog(dVar2, "Failed to close session app file.");
                            try {
                                File d4 = iVar.d();
                                dVar3 = new d(d4, cVar + "SessionOS");
                                try {
                                    eVar3 = e.newInstance((OutputStream) dVar3);
                                } catch (Throwable th2) {
                                    th = th2;
                                    eVar3 = null;
                                    io.fabric.sdk.android.services.common.i.flushOrLog(eVar3, "Failed to flush to session OS file.");
                                    io.fabric.sdk.android.services.common.i.closeOrLog(dVar3, "Failed to close session OS file.");
                                    throw th;
                                }
                                try {
                                    ah.writeSessionOS(eVar3, io.fabric.sdk.android.services.common.i.isRooted(iVar2.e.getContext()));
                                    io.fabric.sdk.android.services.common.i.flushOrLog(eVar3, "Failed to flush to session OS file.");
                                    io.fabric.sdk.android.services.common.i.closeOrLog(dVar3, "Failed to close session OS file.");
                                    try {
                                        File d5 = iVar.d();
                                        dVar4 = new d(d5, cVar + "SessionDevice");
                                        try {
                                            eVar4 = e.newInstance((OutputStream) dVar4);
                                        } catch (Throwable th3) {
                                            th = th3;
                                            str = str2;
                                            eVar4 = null;
                                            io.fabric.sdk.android.services.common.i.flushOrLog(eVar4, "Failed to flush session device info.");
                                            io.fabric.sdk.android.services.common.i.closeOrLog(dVar4, str);
                                            throw th;
                                        }
                                        try {
                                            Context context = iVar2.e.getContext();
                                            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                                            boolean isEmulator = io.fabric.sdk.android.services.common.i.isEmulator(context);
                                            Map<IdManager.DeviceIdentifierType, String> deviceIdentifiers = iVar2.q.getDeviceIdentifiers();
                                            int deviceState = io.fabric.sdk.android.services.common.i.getDeviceState(context);
                                            e eVar5 = eVar4;
                                            ah.writeSessionDevice(eVar5, iVar2.q.getDeviceUUID(), io.fabric.sdk.android.services.common.i.getCpuArchitectureInt(), Build.MODEL, Runtime.getRuntime().availableProcessors(), io.fabric.sdk.android.services.common.i.getTotalRamInBytes(), ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize()), isEmulator, deviceIdentifiers, deviceState, Build.MANUFACTURER, Build.PRODUCT);
                                            io.fabric.sdk.android.services.common.i.flushOrLog(eVar4, "Failed to flush session device info.");
                                            io.fabric.sdk.android.services.common.i.closeOrLog(dVar4, str2);
                                            iVar2.t.a(cVar);
                                        } catch (Throwable th4) {
                                            th = th4;
                                            str = str2;
                                            io.fabric.sdk.android.services.common.i.flushOrLog(eVar4, "Failed to flush session device info.");
                                            io.fabric.sdk.android.services.common.i.closeOrLog(dVar4, str);
                                            throw th;
                                        }
                                    } catch (Throwable th5) {
                                        th = th5;
                                        str = str2;
                                        eVar4 = null;
                                        dVar4 = null;
                                        io.fabric.sdk.android.services.common.i.flushOrLog(eVar4, "Failed to flush session device info.");
                                        io.fabric.sdk.android.services.common.i.closeOrLog(dVar4, str);
                                        throw th;
                                    }
                                } catch (Throwable th6) {
                                    th = th6;
                                    io.fabric.sdk.android.services.common.i.flushOrLog(eVar3, "Failed to flush to session OS file.");
                                    io.fabric.sdk.android.services.common.i.closeOrLog(dVar3, "Failed to close session OS file.");
                                    throw th;
                                }
                            } catch (Throwable th7) {
                                th = th7;
                                eVar3 = null;
                                dVar3 = null;
                                io.fabric.sdk.android.services.common.i.flushOrLog(eVar3, "Failed to flush to session OS file.");
                                io.fabric.sdk.android.services.common.i.closeOrLog(dVar3, "Failed to close session OS file.");
                                throw th;
                            }
                        } catch (Throwable th8) {
                            th = th8;
                            io.fabric.sdk.android.services.common.i.flushOrLog(eVar2, "Failed to flush to session app file.");
                            io.fabric.sdk.android.services.common.i.closeOrLog(dVar2, "Failed to close session app file.");
                            throw th;
                        }
                    } catch (Throwable th9) {
                        th = th9;
                        eVar2 = null;
                        io.fabric.sdk.android.services.common.i.flushOrLog(eVar2, "Failed to flush to session app file.");
                        io.fabric.sdk.android.services.common.i.closeOrLog(dVar2, "Failed to close session app file.");
                        throw th;
                    }
                } catch (Throwable th10) {
                    th = th10;
                    eVar2 = null;
                    dVar2 = null;
                    io.fabric.sdk.android.services.common.i.flushOrLog(eVar2, "Failed to flush to session app file.");
                    io.fabric.sdk.android.services.common.i.closeOrLog(dVar2, "Failed to close session app file.");
                    throw th;
                }
            } catch (Throwable th11) {
                th = th11;
                io.fabric.sdk.android.services.common.i.flushOrLog(eVar, "Failed to flush to session begin file.");
                io.fabric.sdk.android.services.common.i.closeOrLog(dVar, "Failed to close begin session file.");
                throw th;
            }
        } catch (Throwable th12) {
            th = th12;
            dVar = null;
            eVar = null;
            io.fabric.sdk.android.services.common.i.flushOrLog(eVar, "Failed to flush to session begin file.");
            io.fabric.sdk.android.services.common.i.closeOrLog(dVar, "Failed to close begin session file.");
            throw th;
        }
    }

    static /* synthetic */ void b(i iVar, s sVar) {
        if (sVar == null) {
            io.fabric.sdk.android.c.getLogger().w(j.TAG, "Cannot send reports. Settings are unavailable.");
            return;
        }
        Context context = iVar.e.getContext();
        ag agVar = new ag(iVar.h.apiKey, iVar.a(sVar.appData.reportsUrl), iVar.i, iVar.j);
        for (File aiVar : iVar.a()) {
            iVar.f.a((Runnable) new h(context, new ai(aiVar, m), agVar));
        }
    }

    static /* synthetic */ void b(i iVar, Date date, Thread thread, Throwable th) {
        d dVar;
        e newInstance;
        i iVar2 = iVar;
        String i2 = iVar.i();
        e eVar = null;
        if (i2 == null) {
            io.fabric.sdk.android.c.getLogger().e(j.TAG, "Tried to write a non-fatal exception while no session was open.", null);
            return;
        }
        String name = th.getClass().getName();
        com.a.a.a.b bVar = (com.a.a.a.b) io.fabric.sdk.android.c.getKit(com.a.a.a.b.class);
        if (bVar == null) {
            io.fabric.sdk.android.c.getLogger().d(j.TAG, "Answers is not available");
        } else {
            bVar.onException(new j.b(i2, name));
        }
        try {
            io.fabric.sdk.android.c.getLogger().d(j.TAG, "Crashlytics is logging non-fatal exception \"" + th + "\" from thread " + thread.getName());
            String padWithZerosToMaxIntWidth = io.fabric.sdk.android.services.common.i.padWithZerosToMaxIntWidth(iVar2.o.getAndIncrement());
            dVar = new d(iVar.d(), i2 + "SessionEvent" + padWithZerosToMaxIntWidth);
            try {
                newInstance = e.newInstance((OutputStream) dVar);
            } catch (Exception e2) {
                e = e2;
                try {
                    io.fabric.sdk.android.c.getLogger().e(j.TAG, "An error occurred in the non-fatal exception logger", e);
                    io.fabric.sdk.android.services.common.i.flushOrLog(eVar, "Failed to flush to non-fatal file.");
                    io.fabric.sdk.android.services.common.i.closeOrLog(dVar, "Failed to close non-fatal file output stream.");
                    iVar.a(i2, 64);
                } catch (Throwable th2) {
                    th = th2;
                    io.fabric.sdk.android.services.common.i.flushOrLog(eVar, "Failed to flush to non-fatal file.");
                    io.fabric.sdk.android.services.common.i.closeOrLog(dVar, "Failed to close non-fatal file output stream.");
                    throw th;
                }
            }
            try {
                iVar.a(newInstance, date, thread, th, "error", false);
                io.fabric.sdk.android.services.common.i.flushOrLog(newInstance, "Failed to flush to non-fatal file.");
            } catch (Exception e3) {
                e = e3;
                eVar = newInstance;
                io.fabric.sdk.android.c.getLogger().e(j.TAG, "An error occurred in the non-fatal exception logger", e);
                io.fabric.sdk.android.services.common.i.flushOrLog(eVar, "Failed to flush to non-fatal file.");
                io.fabric.sdk.android.services.common.i.closeOrLog(dVar, "Failed to close non-fatal file output stream.");
                iVar.a(i2, 64);
            } catch (Throwable th3) {
                th = th3;
                eVar = newInstance;
                io.fabric.sdk.android.services.common.i.flushOrLog(eVar, "Failed to flush to non-fatal file.");
                io.fabric.sdk.android.services.common.i.closeOrLog(dVar, "Failed to close non-fatal file output stream.");
                throw th;
            }
        } catch (Exception e4) {
            e = e4;
            dVar = null;
            io.fabric.sdk.android.c.getLogger().e(j.TAG, "An error occurred in the non-fatal exception logger", e);
            io.fabric.sdk.android.services.common.i.flushOrLog(eVar, "Failed to flush to non-fatal file.");
            io.fabric.sdk.android.services.common.i.closeOrLog(dVar, "Failed to close non-fatal file output stream.");
            iVar.a(i2, 64);
        } catch (Throwable th4) {
            th = th4;
            dVar = null;
            io.fabric.sdk.android.services.common.i.flushOrLog(eVar, "Failed to flush to non-fatal file.");
            io.fabric.sdk.android.services.common.i.closeOrLog(dVar, "Failed to close non-fatal file output stream.");
            throw th;
        }
        io.fabric.sdk.android.services.common.i.closeOrLog(dVar, "Failed to close non-fatal file output stream.");
        try {
            iVar.a(i2, 64);
        } catch (Exception e5) {
            io.fabric.sdk.android.c.getLogger().e(j.TAG, "An error occurred when trimming non-fatal files.", e5);
        }
    }

    static /* synthetic */ void a(i iVar, com.a.a.c.a.a.d dVar) throws IOException {
        d dVar2;
        String str;
        e eVar = null;
        try {
            File[] k2 = iVar.k();
            boolean z = true;
            if (k2.length > 1) {
                str = a(k2[1]);
            } else {
                str = null;
            }
            if (str == null) {
                io.fabric.sdk.android.c.getLogger().e(j.TAG, "Tried to write a native crash while no session was open.", null);
                io.fabric.sdk.android.services.common.i.flushOrLog(null, "Failed to flush to session begin file.");
                io.fabric.sdk.android.services.common.i.closeOrLog(null, "Failed to close fatal exception file output stream.");
                return;
            }
            a(str, String.format(Locale.US, "<native-crash [%s (%s)]>", new Object[]{dVar.signal.code, dVar.signal.name}));
            if (dVar.binaryImages == null || dVar.binaryImages.length <= 0) {
                z = false;
            }
            String str2 = z ? "SessionCrash" : "SessionMissingBinaryImages";
            dVar2 = new d(iVar.d(), str + str2);
            try {
                eVar = e.newInstance((OutputStream) dVar2);
                aa.writeNativeCrash(dVar, new v(iVar.e.getContext(), iVar.s, str), new x(iVar.d()).readKeyData(str), eVar);
                io.fabric.sdk.android.services.common.i.flushOrLog(eVar, "Failed to flush to session begin file.");
                io.fabric.sdk.android.services.common.i.closeOrLog(dVar2, "Failed to close fatal exception file output stream.");
            } catch (Exception e2) {
                e = e2;
                try {
                    io.fabric.sdk.android.c.getLogger().e(j.TAG, "An error occurred in the native crash logger", e);
                    io.fabric.sdk.android.services.common.i.flushOrLog(eVar, "Failed to flush to session begin file.");
                    io.fabric.sdk.android.services.common.i.closeOrLog(dVar2, "Failed to close fatal exception file output stream.");
                } catch (Throwable th) {
                    th = th;
                    io.fabric.sdk.android.services.common.i.flushOrLog(eVar, "Failed to flush to session begin file.");
                    io.fabric.sdk.android.services.common.i.closeOrLog(dVar2, "Failed to close fatal exception file output stream.");
                    throw th;
                }
            }
        } catch (Exception e3) {
            e = e3;
            dVar2 = null;
            io.fabric.sdk.android.c.getLogger().e(j.TAG, "An error occurred in the native crash logger", e);
            io.fabric.sdk.android.services.common.i.flushOrLog(eVar, "Failed to flush to session begin file.");
            io.fabric.sdk.android.services.common.i.closeOrLog(dVar2, "Failed to close fatal exception file output stream.");
        } catch (Throwable th2) {
            th = th2;
            dVar2 = null;
            io.fabric.sdk.android.services.common.i.flushOrLog(eVar, "Failed to flush to session begin file.");
            io.fabric.sdk.android.services.common.i.closeOrLog(dVar2, "Failed to close fatal exception file output stream.");
            throw th;
        }
    }
}
