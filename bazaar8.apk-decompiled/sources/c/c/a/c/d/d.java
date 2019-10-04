package c.c.a.c.d;

import c.e.d.r;
import com.crashlytics.android.answers.SessionEventTransform;
import h.f.b.f;

/* compiled from: LocalReferrer.kt */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    public final int f4701a;

    /* renamed from: b  reason: collision with root package name */
    public final String f4702b;

    /* renamed from: c  reason: collision with root package name */
    public final String f4703c;

    /* renamed from: d  reason: collision with root package name */
    public final r f4704d;

    /* renamed from: e  reason: collision with root package name */
    public final r f4705e;

    /* renamed from: f  reason: collision with root package name */
    public final String f4706f;

    /* renamed from: g  reason: collision with root package name */
    public final String f4707g;

    public d(String str, String str2) {
        this.f4706f = str;
        this.f4707g = str2;
        this.f4701a = 10;
        this.f4702b = SessionEventTransform.TYPE_KEY;
        this.f4703c = "extraJson";
        r rVar = new r();
        rVar.a(this.f4707g, this.f4706f);
        this.f4704d = rVar;
        r rVar2 = new r();
        rVar2.a(this.f4702b, (Number) Integer.valueOf(this.f4701a));
        rVar2.a(this.f4703c, this.f4704d.toString());
        this.f4705e = rVar2;
    }

    public static /* synthetic */ String a(d dVar, String str, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 1) != 0) {
                str = null;
            }
            return dVar.a(str);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getReferrer");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:3:0x0008, code lost:
        if (r9 != null) goto L_0x0010;
     */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0059 A[Catch:{ Exception -> 0x00e3 }, LOOP:0: B:7:0x0016->B:21:0x0059, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0058 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String a(java.lang.String r9) {
        /*
            r8 = this;
            java.lang.String r0 = " and Value: "
            if (r9 == 0) goto L_0x000b
            c.e.d.m r9 = c.c.a.c.b.i.g(r9)
            if (r9 == 0) goto L_0x000b
            goto L_0x0010
        L_0x000b:
            c.e.d.m r9 = new c.e.d.m
            r9.<init>()
        L_0x0010:
            java.util.Iterator r1 = r9.iterator()     // Catch:{ Exception -> 0x00e3 }
            r2 = 0
            r3 = 0
        L_0x0016:
            boolean r4 = r1.hasNext()     // Catch:{ Exception -> 0x00e3 }
            r5 = -1
            if (r4 == 0) goto L_0x0061
            java.lang.Object r4 = r1.next()     // Catch:{ Exception -> 0x00e3 }
            if (r3 < 0) goto L_0x005c
            c.e.d.p r4 = (c.e.d.p) r4     // Catch:{ Exception -> 0x00e3 }
            java.lang.String r6 = "it"
            h.f.b.j.a((java.lang.Object) r4, (java.lang.String) r6)     // Catch:{ Exception -> 0x00e3 }
            boolean r6 = r4.h()     // Catch:{ Exception -> 0x00e3 }
            if (r6 == 0) goto L_0x0055
            c.e.d.r r6 = r4.c()     // Catch:{ Exception -> 0x00e3 }
            java.lang.String r7 = r8.f4702b     // Catch:{ Exception -> 0x00e3 }
            boolean r6 = r6.c(r7)     // Catch:{ Exception -> 0x00e3 }
            if (r6 == 0) goto L_0x0055
            c.e.d.r r4 = r4.c()     // Catch:{ Exception -> 0x00e3 }
            java.lang.String r6 = r8.f4702b     // Catch:{ Exception -> 0x00e3 }
            c.e.d.p r4 = r4.a((java.lang.String) r6)     // Catch:{ Exception -> 0x00e3 }
            java.lang.String r6 = "it.asJsonObject.get(localTypeKey)"
            h.f.b.j.a((java.lang.Object) r4, (java.lang.String) r6)     // Catch:{ Exception -> 0x00e3 }
            int r4 = r4.a()     // Catch:{ Exception -> 0x00e3 }
            int r6 = r8.f4701a     // Catch:{ Exception -> 0x00e3 }
            if (r4 != r6) goto L_0x0055
            r4 = 1
            goto L_0x0056
        L_0x0055:
            r4 = 0
        L_0x0056:
            if (r4 == 0) goto L_0x0059
            goto L_0x0062
        L_0x0059:
            int r3 = r3 + 1
            goto L_0x0016
        L_0x005c:
            h.a.l.b()     // Catch:{ Exception -> 0x00e3 }
            r9 = 0
            throw r9
        L_0x0061:
            r3 = -1
        L_0x0062:
            if (r3 == r5) goto L_0x00dd
            c.e.d.p r1 = r9.get(r3)     // Catch:{ Exception -> 0x00e3 }
            java.lang.String r2 = "jsonArray[existedLocalJsonIndex]"
            h.f.b.j.a((java.lang.Object) r1, (java.lang.String) r2)     // Catch:{ Exception -> 0x00e3 }
            c.e.d.r r1 = r1.c()     // Catch:{ Exception -> 0x00e3 }
            java.lang.String r2 = r8.f4703c     // Catch:{ Exception -> 0x00e3 }
            boolean r2 = r1.c(r2)     // Catch:{ Exception -> 0x00e3 }
            if (r2 == 0) goto L_0x00b7
            c.e.d.s r2 = new c.e.d.s     // Catch:{ Exception -> 0x00e3 }
            r2.<init>()     // Catch:{ Exception -> 0x00e3 }
            java.lang.String r4 = "existedLocalJson"
            h.f.b.j.a((java.lang.Object) r1, (java.lang.String) r4)     // Catch:{ Exception -> 0x00e3 }
            c.e.d.r r4 = r1.c()     // Catch:{ Exception -> 0x00e3 }
            java.lang.String r5 = r8.f4703c     // Catch:{ Exception -> 0x00e3 }
            c.e.d.p r4 = r4.a((java.lang.String) r5)     // Catch:{ Exception -> 0x00e3 }
            java.lang.String r5 = "existedLocalJson.asJsonO…ct.get(localExtraJsonKey)"
            h.f.b.j.a((java.lang.Object) r4, (java.lang.String) r5)     // Catch:{ Exception -> 0x00e3 }
            java.lang.String r4 = r4.e()     // Catch:{ Exception -> 0x00e3 }
            c.e.d.p r2 = r2.a((java.lang.String) r4)     // Catch:{ Exception -> 0x00e3 }
            java.lang.String r4 = "JsonParser().parse(exist…alExtraJsonKey).asString)"
            h.f.b.j.a((java.lang.Object) r2, (java.lang.String) r4)     // Catch:{ Exception -> 0x00e3 }
            c.e.d.r r2 = r2.c()     // Catch:{ Exception -> 0x00e3 }
            java.lang.String r4 = r8.f4707g     // Catch:{ Exception -> 0x00e3 }
            java.lang.String r5 = r8.f4706f     // Catch:{ Exception -> 0x00e3 }
            r2.a((java.lang.String) r4, (java.lang.String) r5)     // Catch:{ Exception -> 0x00e3 }
            java.lang.String r4 = r8.f4703c     // Catch:{ Exception -> 0x00e3 }
            java.lang.String r2 = r2.toString()     // Catch:{ Exception -> 0x00e3 }
            r1.a((java.lang.String) r4, (java.lang.String) r2)     // Catch:{ Exception -> 0x00e3 }
            r9.a(r3, r1)     // Catch:{ Exception -> 0x00e3 }
            goto L_0x0109
        L_0x00b7:
            c.c.a.c.c.a r1 = c.c.a.c.c.a.f4699b     // Catch:{ Exception -> 0x00e3 }
            java.lang.Throwable r2 = new java.lang.Throwable     // Catch:{ Exception -> 0x00e3 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00e3 }
            r3.<init>()     // Catch:{ Exception -> 0x00e3 }
            java.lang.String r4 = "Wrong extra json key in Local Referrer With Key: "
            r3.append(r4)     // Catch:{ Exception -> 0x00e3 }
            java.lang.String r4 = r8.f4707g     // Catch:{ Exception -> 0x00e3 }
            r3.append(r4)     // Catch:{ Exception -> 0x00e3 }
            r3.append(r0)     // Catch:{ Exception -> 0x00e3 }
            java.lang.String r4 = r8.f4706f     // Catch:{ Exception -> 0x00e3 }
            r3.append(r4)     // Catch:{ Exception -> 0x00e3 }
            java.lang.String r3 = r3.toString()     // Catch:{ Exception -> 0x00e3 }
            r2.<init>(r3)     // Catch:{ Exception -> 0x00e3 }
            r1.a((java.lang.Throwable) r2)     // Catch:{ Exception -> 0x00e3 }
            goto L_0x0109
        L_0x00dd:
            c.e.d.r r1 = r8.f4705e     // Catch:{ Exception -> 0x00e3 }
            r9.a(r1)     // Catch:{ Exception -> 0x00e3 }
            goto L_0x0109
        L_0x00e3:
            r1 = move-exception
            c.c.a.c.c.a r2 = c.c.a.c.c.a.f4699b
            java.lang.Throwable r3 = new java.lang.Throwable
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "Error in making Local Referrer With Key: "
            r4.append(r5)
            java.lang.String r5 = r8.f4707g
            r4.append(r5)
            r4.append(r0)
            java.lang.String r0 = r8.f4706f
            r4.append(r0)
            java.lang.String r0 = r4.toString()
            r3.<init>(r0, r1)
            r2.a((java.lang.Throwable) r3)
        L_0x0109:
            java.lang.String r9 = r9.toString()
            java.lang.String r0 = "jsonArray.toString()"
            h.f.b.j.a((java.lang.Object) r9, (java.lang.String) r0)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.c.d.d.a(java.lang.String):java.lang.String");
    }

    public /* synthetic */ d(String str, String str2, f fVar) {
        this(str, str2);
    }
}
