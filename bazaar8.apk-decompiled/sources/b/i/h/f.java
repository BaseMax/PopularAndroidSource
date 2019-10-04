package b.i.h;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import b.f.g;
import b.f.i;
import b.i.h.k;
import b.i.j.h;
import e.a.a.a.a.b.C1046a;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: FontsContractCompat */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public static final g<String, Typeface> f2673a = new g<>(16);

    /* renamed from: b  reason: collision with root package name */
    public static final k f2674b = new k("fonts", 10, C1046a.DEFAULT_TIMEOUT);

    /* renamed from: c  reason: collision with root package name */
    public static final Object f2675c = new Object();

    /* renamed from: d  reason: collision with root package name */
    public static final i<String, ArrayList<k.a<c>>> f2676d = new i<>();

    /* renamed from: e  reason: collision with root package name */
    public static final Comparator<byte[]> f2677e = new e();

    /* compiled from: FontsContractCompat */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f2678a;

        /* renamed from: b  reason: collision with root package name */
        public final b[] f2679b;

        public a(int i2, b[] bVarArr) {
            this.f2678a = i2;
            this.f2679b = bVarArr;
        }

        public b[] a() {
            return this.f2679b;
        }

        public int b() {
            return this.f2678a;
        }
    }

    /* compiled from: FontsContractCompat */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f2680a;

        /* renamed from: b  reason: collision with root package name */
        public final int f2681b;

        /* renamed from: c  reason: collision with root package name */
        public final int f2682c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f2683d;

        /* renamed from: e  reason: collision with root package name */
        public final int f2684e;

        public b(Uri uri, int i2, int i3, boolean z, int i4) {
            h.a(uri);
            this.f2680a = uri;
            this.f2681b = i2;
            this.f2682c = i3;
            this.f2683d = z;
            this.f2684e = i4;
        }

        public int a() {
            return this.f2684e;
        }

        public int b() {
            return this.f2681b;
        }

        public Uri c() {
            return this.f2680a;
        }

        public int d() {
            return this.f2682c;
        }

        public boolean e() {
            return this.f2683d;
        }
    }

    /* compiled from: FontsContractCompat */
    private static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final Typeface f2685a;

        /* renamed from: b  reason: collision with root package name */
        public final int f2686b;

        public c(Typeface typeface, int i2) {
            this.f2685a = typeface;
            this.f2686b = i2;
        }
    }

    public static c a(Context context, a aVar, int i2) {
        try {
            a a2 = a(context, (CancellationSignal) null, aVar);
            int i3 = -3;
            if (a2.b() == 0) {
                Typeface a3 = b.i.c.c.a(context, null, a2.a(), i2);
                if (a3 != null) {
                    i3 = 0;
                }
                return new c(a3, i3);
            }
            if (a2.b() == 1) {
                i3 = -2;
            }
            return new c(null, i3);
        } catch (PackageManager.NameNotFoundException unused) {
            return new c(null, -1);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:33:0x0072, code lost:
        return r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x0083, code lost:
        f2674b.a(r1, new b.i.h.d(r0));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x008d, code lost:
        return r2;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.graphics.Typeface a(android.content.Context r2, b.i.h.a r3, b.i.b.a.h.a r4, android.os.Handler r5, boolean r6, int r7, int r8) {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = r3.c()
            r0.append(r1)
            java.lang.String r1 = "-"
            r0.append(r1)
            r0.append(r8)
            java.lang.String r0 = r0.toString()
            b.f.g<java.lang.String, android.graphics.Typeface> r1 = f2673a
            java.lang.Object r1 = r1.b(r0)
            android.graphics.Typeface r1 = (android.graphics.Typeface) r1
            if (r1 == 0) goto L_0x0028
            if (r4 == 0) goto L_0x0027
            r4.a((android.graphics.Typeface) r1)
        L_0x0027:
            return r1
        L_0x0028:
            if (r6 == 0) goto L_0x0043
            r1 = -1
            if (r7 != r1) goto L_0x0043
            b.i.h.f$c r2 = a((android.content.Context) r2, (b.i.h.a) r3, (int) r8)
            if (r4 == 0) goto L_0x0040
            int r3 = r2.f2686b
            if (r3 != 0) goto L_0x003d
            android.graphics.Typeface r3 = r2.f2685a
            r4.a((android.graphics.Typeface) r3, (android.os.Handler) r5)
            goto L_0x0040
        L_0x003d:
            r4.a((int) r3, (android.os.Handler) r5)
        L_0x0040:
            android.graphics.Typeface r2 = r2.f2685a
            return r2
        L_0x0043:
            b.i.h.b r1 = new b.i.h.b
            r1.<init>(r2, r3, r8, r0)
            r2 = 0
            if (r6 == 0) goto L_0x0056
            b.i.h.k r3 = f2674b     // Catch:{ InterruptedException -> 0x0055 }
            java.lang.Object r3 = r3.a(r1, (int) r7)     // Catch:{ InterruptedException -> 0x0055 }
            b.i.h.f$c r3 = (b.i.h.f.c) r3     // Catch:{ InterruptedException -> 0x0055 }
            android.graphics.Typeface r2 = r3.f2685a     // Catch:{ InterruptedException -> 0x0055 }
        L_0x0055:
            return r2
        L_0x0056:
            if (r4 != 0) goto L_0x005a
            r3 = r2
            goto L_0x005f
        L_0x005a:
            b.i.h.c r3 = new b.i.h.c
            r3.<init>(r4, r5)
        L_0x005f:
            java.lang.Object r4 = f2675c
            monitor-enter(r4)
            b.f.i<java.lang.String, java.util.ArrayList<b.i.h.k$a<b.i.h.f$c>>> r5 = f2676d     // Catch:{ all -> 0x008e }
            java.lang.Object r5 = r5.get(r0)     // Catch:{ all -> 0x008e }
            java.util.ArrayList r5 = (java.util.ArrayList) r5     // Catch:{ all -> 0x008e }
            if (r5 == 0) goto L_0x0073
            if (r3 == 0) goto L_0x0071
            r5.add(r3)     // Catch:{ all -> 0x008e }
        L_0x0071:
            monitor-exit(r4)     // Catch:{ all -> 0x008e }
            return r2
        L_0x0073:
            if (r3 == 0) goto L_0x0082
            java.util.ArrayList r5 = new java.util.ArrayList     // Catch:{ all -> 0x008e }
            r5.<init>()     // Catch:{ all -> 0x008e }
            r5.add(r3)     // Catch:{ all -> 0x008e }
            b.f.i<java.lang.String, java.util.ArrayList<b.i.h.k$a<b.i.h.f$c>>> r3 = f2676d     // Catch:{ all -> 0x008e }
            r3.put(r0, r5)     // Catch:{ all -> 0x008e }
        L_0x0082:
            monitor-exit(r4)     // Catch:{ all -> 0x008e }
            b.i.h.k r3 = f2674b
            b.i.h.d r4 = new b.i.h.d
            r4.<init>(r0)
            r3.a(r1, r4)
            return r2
        L_0x008e:
            r2 = move-exception
            monitor-exit(r4)     // Catch:{ all -> 0x008e }
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: b.i.h.f.a(android.content.Context, b.i.h.a, b.i.b.a.h$a, android.os.Handler, boolean, int, int):android.graphics.Typeface");
    }

    public static Map<Uri, ByteBuffer> a(Context context, b[] bVarArr, CancellationSignal cancellationSignal) {
        HashMap hashMap = new HashMap();
        for (b bVar : bVarArr) {
            if (bVar.a() == 0) {
                Uri c2 = bVar.c();
                if (!hashMap.containsKey(c2)) {
                    hashMap.put(c2, b.i.c.k.a(context, cancellationSignal, c2));
                }
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    public static a a(Context context, CancellationSignal cancellationSignal, a aVar) {
        ProviderInfo a2 = a(context.getPackageManager(), aVar, context.getResources());
        if (a2 == null) {
            return new a(1, null);
        }
        return new a(0, a(context, aVar, a2.authority, cancellationSignal));
    }

    public static ProviderInfo a(PackageManager packageManager, a aVar, Resources resources) {
        String d2 = aVar.d();
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(d2, 0);
        if (resolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException("No package found for authority: " + d2);
        } else if (resolveContentProvider.packageName.equals(aVar.e())) {
            List<byte[]> a2 = a(packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures);
            Collections.sort(a2, f2677e);
            List<List<byte[]>> a3 = a(aVar, resources);
            for (int i2 = 0; i2 < a3.size(); i2++) {
                ArrayList arrayList = new ArrayList(a3.get(i2));
                Collections.sort(arrayList, f2677e);
                if (a(a2, (List<byte[]>) arrayList)) {
                    return resolveContentProvider;
                }
            }
            return null;
        } else {
            throw new PackageManager.NameNotFoundException("Found content provider " + d2 + ", but package was not " + aVar.e());
        }
    }

    public static List<List<byte[]>> a(a aVar, Resources resources) {
        if (aVar.a() != null) {
            return aVar.a();
        }
        return b.i.b.a.c.a(resources, aVar.b());
    }

    public static boolean a(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (!Arrays.equals(list.get(i2), list2.get(i2))) {
                return false;
            }
        }
        return true;
    }

    public static List<byte[]> a(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature byteArray : signatureArr) {
            arrayList.add(byteArray.toByteArray());
        }
        return arrayList;
    }

    /* JADX WARNING: Removed duplicated region for block: B:39:0x012b  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x013b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static b.i.h.f.b[] a(android.content.Context r19, b.i.h.a r20, java.lang.String r21, android.os.CancellationSignal r22) {
        /*
            r0 = r21
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            android.net.Uri$Builder r2 = new android.net.Uri$Builder
            r2.<init>()
            java.lang.String r3 = "content"
            android.net.Uri$Builder r2 = r2.scheme(r3)
            android.net.Uri$Builder r2 = r2.authority(r0)
            android.net.Uri r2 = r2.build()
            android.net.Uri$Builder r4 = new android.net.Uri$Builder
            r4.<init>()
            android.net.Uri$Builder r3 = r4.scheme(r3)
            android.net.Uri$Builder r0 = r3.authority(r0)
            java.lang.String r3 = "file"
            android.net.Uri$Builder r0 = r0.appendPath(r3)
            android.net.Uri r0 = r0.build()
            int r4 = android.os.Build.VERSION.SDK_INT     // Catch:{ all -> 0x0137 }
            r5 = 16
            java.lang.String r7 = "font_variation_settings"
            r9 = 2
            r10 = 7
            java.lang.String r11 = "result_code"
            java.lang.String r12 = "font_italic"
            java.lang.String r13 = "font_weight"
            java.lang.String r14 = "font_ttc_index"
            java.lang.String r15 = "file_id"
            java.lang.String r3 = "_id"
            r6 = 1
            r8 = 0
            if (r4 <= r5) goto L_0x007e
            android.content.ContentResolver r4 = r19.getContentResolver()     // Catch:{ all -> 0x0137 }
            java.lang.String[] r10 = new java.lang.String[r10]     // Catch:{ all -> 0x0137 }
            r10[r8] = r3     // Catch:{ all -> 0x0137 }
            r10[r6] = r15     // Catch:{ all -> 0x0137 }
            r10[r9] = r14     // Catch:{ all -> 0x0137 }
            r5 = 3
            r10[r5] = r7     // Catch:{ all -> 0x0137 }
            r5 = 4
            r10[r5] = r13     // Catch:{ all -> 0x0137 }
            r5 = 5
            r10[r5] = r12     // Catch:{ all -> 0x0137 }
            r5 = 6
            r10[r5] = r11     // Catch:{ all -> 0x0137 }
            java.lang.String r7 = "query = ?"
            java.lang.String[] r9 = new java.lang.String[r6]     // Catch:{ all -> 0x0137 }
            java.lang.String r5 = r20.f()     // Catch:{ all -> 0x0137 }
            r9[r8] = r5     // Catch:{ all -> 0x0137 }
            r16 = 0
            r5 = r2
            r18 = r1
            r1 = 1
            r6 = r10
            r10 = 0
            r8 = r9
            r9 = r16
            r1 = 0
            r10 = r22
            android.database.Cursor r4 = r4.query(r5, r6, r7, r8, r9, r10)     // Catch:{ all -> 0x0137 }
            goto L_0x00ab
        L_0x007e:
            r18 = r1
            r1 = 0
            android.content.ContentResolver r4 = r19.getContentResolver()     // Catch:{ all -> 0x0137 }
            java.lang.String[] r6 = new java.lang.String[r10]     // Catch:{ all -> 0x0137 }
            r6[r1] = r3     // Catch:{ all -> 0x0137 }
            r5 = 1
            r6[r5] = r15     // Catch:{ all -> 0x0137 }
            r6[r9] = r14     // Catch:{ all -> 0x0137 }
            r5 = 3
            r6[r5] = r7     // Catch:{ all -> 0x0137 }
            r5 = 4
            r6[r5] = r13     // Catch:{ all -> 0x0137 }
            r5 = 5
            r6[r5] = r12     // Catch:{ all -> 0x0137 }
            r5 = 6
            r6[r5] = r11     // Catch:{ all -> 0x0137 }
            java.lang.String r7 = "query = ?"
            r5 = 1
            java.lang.String[] r8 = new java.lang.String[r5]     // Catch:{ all -> 0x0137 }
            java.lang.String r5 = r20.f()     // Catch:{ all -> 0x0137 }
            r8[r1] = r5     // Catch:{ all -> 0x0137 }
            r9 = 0
            r5 = r2
            android.database.Cursor r4 = r4.query(r5, r6, r7, r8, r9)     // Catch:{ all -> 0x0137 }
        L_0x00ab:
            if (r4 == 0) goto L_0x0127
            int r5 = r4.getCount()     // Catch:{ all -> 0x0125 }
            if (r5 <= 0) goto L_0x0127
            int r5 = r4.getColumnIndex(r11)     // Catch:{ all -> 0x0125 }
            java.util.ArrayList r6 = new java.util.ArrayList     // Catch:{ all -> 0x0125 }
            r6.<init>()     // Catch:{ all -> 0x0125 }
            int r3 = r4.getColumnIndex(r3)     // Catch:{ all -> 0x0125 }
            int r7 = r4.getColumnIndex(r15)     // Catch:{ all -> 0x0125 }
            int r8 = r4.getColumnIndex(r14)     // Catch:{ all -> 0x0125 }
            int r9 = r4.getColumnIndex(r13)     // Catch:{ all -> 0x0125 }
            int r10 = r4.getColumnIndex(r12)     // Catch:{ all -> 0x0125 }
        L_0x00d0:
            boolean r11 = r4.moveToNext()     // Catch:{ all -> 0x0125 }
            if (r11 == 0) goto L_0x0129
            r11 = -1
            if (r5 == r11) goto L_0x00e0
            int r12 = r4.getInt(r5)     // Catch:{ all -> 0x0125 }
            r18 = r12
            goto L_0x00e2
        L_0x00e0:
            r18 = 0
        L_0x00e2:
            if (r8 == r11) goto L_0x00ea
            int r12 = r4.getInt(r8)     // Catch:{ all -> 0x0125 }
            r15 = r12
            goto L_0x00eb
        L_0x00ea:
            r15 = 0
        L_0x00eb:
            if (r7 != r11) goto L_0x00f6
            long r12 = r4.getLong(r3)     // Catch:{ all -> 0x0125 }
            android.net.Uri r12 = android.content.ContentUris.withAppendedId(r2, r12)     // Catch:{ all -> 0x0125 }
            goto L_0x00fe
        L_0x00f6:
            long r12 = r4.getLong(r7)     // Catch:{ all -> 0x0125 }
            android.net.Uri r12 = android.content.ContentUris.withAppendedId(r0, r12)     // Catch:{ all -> 0x0125 }
        L_0x00fe:
            r14 = r12
            if (r9 == r11) goto L_0x0108
            int r12 = r4.getInt(r9)     // Catch:{ all -> 0x0125 }
            r16 = r12
            goto L_0x010c
        L_0x0108:
            r12 = 400(0x190, float:5.6E-43)
            r16 = 400(0x190, float:5.6E-43)
        L_0x010c:
            if (r10 == r11) goto L_0x0118
            int r11 = r4.getInt(r10)     // Catch:{ all -> 0x0125 }
            r12 = 1
            if (r11 != r12) goto L_0x0119
            r17 = 1
            goto L_0x011b
        L_0x0118:
            r12 = 1
        L_0x0119:
            r17 = 0
        L_0x011b:
            b.i.h.f$b r11 = new b.i.h.f$b     // Catch:{ all -> 0x0125 }
            r13 = r11
            r13.<init>(r14, r15, r16, r17, r18)     // Catch:{ all -> 0x0125 }
            r6.add(r11)     // Catch:{ all -> 0x0125 }
            goto L_0x00d0
        L_0x0125:
            r0 = move-exception
            goto L_0x0139
        L_0x0127:
            r6 = r18
        L_0x0129:
            if (r4 == 0) goto L_0x012e
            r4.close()
        L_0x012e:
            b.i.h.f$b[] r0 = new b.i.h.f.b[r1]
            java.lang.Object[] r0 = r6.toArray(r0)
            b.i.h.f$b[] r0 = (b.i.h.f.b[]) r0
            return r0
        L_0x0137:
            r0 = move-exception
            r4 = 0
        L_0x0139:
            if (r4 == 0) goto L_0x013e
            r4.close()
        L_0x013e:
            goto L_0x0140
        L_0x013f:
            throw r0
        L_0x0140:
            goto L_0x013f
        */
        throw new UnsupportedOperationException("Method not decompiled: b.i.h.f.a(android.content.Context, b.i.h.a, java.lang.String, android.os.CancellationSignal):b.i.h.f$b[]");
    }
}
