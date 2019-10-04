package c.e.a.b.h.b;

import android.text.TextUtils;
import b.f.C0243b;
import c.e.a.b.d.d.r;
import c.e.a.b.g.f.I;
import c.e.a.b.g.f.K;
import c.e.a.b.g.f.N;
import c.e.a.b.g.f.T;
import c.e.a.b.g.f.U;
import c.e.a.b.g.f.W;
import c.e.a.b.g.f.X;
import c.e.a.b.g.f.Y;
import com.google.android.gms.internal.measurement.zzbl$zzb$zzb;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

public final class lc extends Sb {
    public lc(Tb tb) {
        super(tb);
    }

    public static void b(Map<Integer, List<Long>> map, int i2, long j2) {
        List list = map.get(Integer.valueOf(i2));
        if (list == null) {
            list = new ArrayList();
            map.put(Integer.valueOf(i2), list);
        }
        list.add(Long.valueOf(j2 / 1000));
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r18v0, resolved type: b.f.b} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r18v4, resolved type: b.f.b} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r19v2, resolved type: b.f.b} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r18v6, resolved type: b.f.b} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r18v7, resolved type: b.f.b} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r18v9, resolved type: b.f.b} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r18v10, resolved type: b.f.b} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r19v9, resolved type: b.f.b} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v50, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v51, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r37v4, resolved type: java.util.ArrayList} */
    /* JADX WARNING: type inference failed for: r8v28, types: [java.util.List] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:103:0x0313  */
    /* JADX WARNING: Removed duplicated region for block: B:108:0x032e  */
    /* JADX WARNING: Removed duplicated region for block: B:112:0x0366  */
    /* JADX WARNING: Removed duplicated region for block: B:127:0x03cd  */
    /* JADX WARNING: Removed duplicated region for block: B:128:0x0429  */
    /* JADX WARNING: Removed duplicated region for block: B:131:0x047f  */
    /* JADX WARNING: Removed duplicated region for block: B:138:0x04a0  */
    /* JADX WARNING: Removed duplicated region for block: B:154:0x0590  */
    /* JADX WARNING: Removed duplicated region for block: B:172:0x0603  */
    /* JADX WARNING: Removed duplicated region for block: B:180:0x061e A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:185:0x066e  */
    /* JADX WARNING: Removed duplicated region for block: B:186:0x0671  */
    /* JADX WARNING: Removed duplicated region for block: B:189:0x0677  */
    /* JADX WARNING: Removed duplicated region for block: B:190:0x0680  */
    /* JADX WARNING: Removed duplicated region for block: B:277:0x09e4  */
    /* JADX WARNING: Removed duplicated region for block: B:278:0x09e9  */
    /* JADX WARNING: Removed duplicated region for block: B:281:0x09f2  */
    /* JADX WARNING: Removed duplicated region for block: B:282:0x09fb  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x021b  */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x02f8  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final c.e.a.b.g.f.H[] a(java.lang.String r67, c.e.a.b.g.f.C0803ba[] r68, c.e.a.b.g.f.N[] r69) {
        /*
            r66 = this;
            r7 = r66
            r15 = r67
            r13 = r68
            r14 = r69
            c.e.a.b.d.d.r.b((java.lang.String) r67)
            java.util.HashSet r11 = new java.util.HashSet
            r11.<init>()
            b.f.b r12 = new b.f.b
            r12.<init>()
            b.f.b r10 = new b.f.b
            r10.<init>()
            b.f.b r9 = new b.f.b
            r9.<init>()
            b.f.b r8 = new b.f.b
            r8.<init>()
            b.f.b r6 = new b.f.b
            r6.<init>()
            c.e.a.b.h.b.pc r0 = r66.i()
            boolean r23 = r0.o(r15)
            c.e.a.b.h.b.pc r0 = r66.i()
            c.e.a.b.h.b.k$a<java.lang.Boolean> r1 = c.e.a.b.h.b.C0931k.Ea
            boolean r24 = r0.d(r15, r1)
            c.e.a.b.h.b.sc r0 = r66.p()
            java.util.Map r0 = r0.e(r15)
            if (r0 == 0) goto L_0x01bb
            java.util.Set r1 = r0.keySet()
            java.util.Iterator r1 = r1.iterator()
        L_0x004d:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x01bb
            java.lang.Object r2 = r1.next()
            java.lang.Integer r2 = (java.lang.Integer) r2
            int r2 = r2.intValue()
            java.lang.Integer r4 = java.lang.Integer.valueOf(r2)
            java.lang.Object r4 = r0.get(r4)
            c.e.a.b.g.f.L r4 = (c.e.a.b.g.f.L) r4
            java.lang.Integer r3 = java.lang.Integer.valueOf(r2)
            java.lang.Object r3 = r10.get(r3)
            java.util.BitSet r3 = (java.util.BitSet) r3
            java.lang.Integer r5 = java.lang.Integer.valueOf(r2)
            java.lang.Object r5 = r9.get(r5)
            java.util.BitSet r5 = (java.util.BitSet) r5
            if (r23 == 0) goto L_0x00e2
            r19 = r0
            b.f.b r0 = new b.f.b
            r0.<init>()
            if (r4 == 0) goto L_0x00d6
            int r20 = r4.v()
            if (r20 != 0) goto L_0x008d
            goto L_0x00d6
        L_0x008d:
            java.util.List r20 = r4.u()
            java.util.Iterator r20 = r20.iterator()
        L_0x0095:
            boolean r21 = r20.hasNext()
            if (r21 == 0) goto L_0x00d6
            java.lang.Object r21 = r20.next()
            c.e.a.b.g.f.I r21 = (c.e.a.b.g.f.I) r21
            boolean r22 = r21.r()
            if (r22 == 0) goto L_0x00cd
            int r22 = r21.q()
            r25 = r1
            java.lang.Integer r1 = java.lang.Integer.valueOf(r22)
            boolean r22 = r21.s()
            if (r22 == 0) goto L_0x00c6
            long r21 = r21.t()
            java.lang.Long r21 = java.lang.Long.valueOf(r21)
            r65 = r21
            r21 = r5
            r5 = r65
            goto L_0x00c9
        L_0x00c6:
            r21 = r5
            r5 = 0
        L_0x00c9:
            r0.put(r1, r5)
            goto L_0x00d1
        L_0x00cd:
            r25 = r1
            r21 = r5
        L_0x00d1:
            r5 = r21
            r1 = r25
            goto L_0x0095
        L_0x00d6:
            r25 = r1
            r21 = r5
            java.lang.Integer r1 = java.lang.Integer.valueOf(r2)
            r8.put(r1, r0)
            goto L_0x00e9
        L_0x00e2:
            r19 = r0
            r25 = r1
            r21 = r5
            r0 = 0
        L_0x00e9:
            if (r3 != 0) goto L_0x0104
            java.util.BitSet r3 = new java.util.BitSet
            r3.<init>()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r2)
            r10.put(r1, r3)
            java.util.BitSet r5 = new java.util.BitSet
            r5.<init>()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r2)
            r9.put(r1, r5)
            goto L_0x0106
        L_0x0104:
            r5 = r21
        L_0x0106:
            r1 = 0
        L_0x0107:
            int r20 = r4.r()
            r21 = r8
            int r8 = r20 << 6
            if (r1 >= r8) goto L_0x0165
            java.util.List r8 = r4.q()
            boolean r8 = c.e.a.b.h.b.Zb.a((java.util.List<java.lang.Long>) r8, (int) r1)
            if (r8 == 0) goto L_0x0148
            c.e.a.b.h.b.t r8 = r66.e()
            c.e.a.b.h.b.v r8 = r8.B()
            r20 = r9
            java.lang.Integer r9 = java.lang.Integer.valueOf(r2)
            r22 = r10
            java.lang.Integer r10 = java.lang.Integer.valueOf(r1)
            r26 = r11
            java.lang.String r11 = "Filter already evaluated. audience ID, filter ID"
            r8.a(r11, r9, r10)
            r5.set(r1)
            java.util.List r8 = r4.s()
            boolean r8 = c.e.a.b.h.b.Zb.a((java.util.List<java.lang.Long>) r8, (int) r1)
            if (r8 == 0) goto L_0x014e
            r3.set(r1)
            r8 = 1
            goto L_0x014f
        L_0x0148:
            r20 = r9
            r22 = r10
            r26 = r11
        L_0x014e:
            r8 = 0
        L_0x014f:
            if (r0 == 0) goto L_0x015a
            if (r8 != 0) goto L_0x015a
            java.lang.Integer r8 = java.lang.Integer.valueOf(r1)
            r0.remove(r8)
        L_0x015a:
            int r1 = r1 + 1
            r9 = r20
            r8 = r21
            r10 = r22
            r11 = r26
            goto L_0x0107
        L_0x0165:
            r20 = r9
            r22 = r10
            r26 = r11
            c.e.a.b.g.f.H$a r1 = c.e.a.b.g.f.H.y()
            r8 = 0
            r1.a((boolean) r8)
            r1.a((c.e.a.b.g.f.L) r4)
            c.e.a.b.g.f.L$a r4 = c.e.a.b.g.f.L.y()
            java.util.List r3 = c.e.a.b.h.b.Zb.a((java.util.BitSet) r3)
            r4.b(r3)
            java.util.List r3 = c.e.a.b.h.b.Zb.a((java.util.BitSet) r5)
            r4.a(r3)
            if (r23 == 0) goto L_0x019d
            java.util.List r0 = a((java.util.Map<java.lang.Integer, java.lang.Long>) r0)
            r4.c(r0)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r2)
            b.f.b r3 = new b.f.b
            r3.<init>()
            r6.put(r0, r3)
        L_0x019d:
            r1.a((c.e.a.b.g.f.L.a) r4)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r2)
            c.e.a.b.g.f.Sb r1 = r1.o()
            c.e.a.b.g.f.H r1 = (c.e.a.b.g.f.H) r1
            r12.put(r0, r1)
            r0 = r19
            r9 = r20
            r8 = r21
            r10 = r22
            r1 = r25
            r11 = r26
            goto L_0x004d
        L_0x01bb:
            r21 = r8
            r20 = r9
            r22 = r10
            r26 = r11
            java.lang.String r10 = "Filter definition"
            java.lang.String r8 = "Skipping failed audience ID"
            java.lang.String r25 = "null"
            if (r13 == 0) goto L_0x07da
            b.f.b r4 = new b.f.b
            r4.<init>()
            int r5 = r13.length
            r27 = 0
            r29 = r27
            r0 = 0
            r1 = 0
            r3 = 0
        L_0x01d8:
            if (r3 >= r5) goto L_0x07da
            r2 = r13[r3]
            java.lang.String r9 = r2.f10345e
            c.e.a.b.g.f.K[] r11 = r2.f10344d
            java.util.List r11 = java.util.Arrays.asList(r11)
            r32 = r3
            c.e.a.b.h.b.pc r3 = r66.i()
            r33 = r4
            c.e.a.b.h.b.k$a<java.lang.Boolean> r4 = c.e.a.b.h.b.C0931k.ca
            boolean r3 = r3.d(r15, r4)
            r34 = 1
            if (r3 == 0) goto L_0x03b3
            r66.n()
            java.lang.String r3 = "_eid"
            java.lang.Object r4 = c.e.a.b.h.b.Zb.b(r2, r3)
            java.lang.Long r4 = (java.lang.Long) r4
            if (r4 == 0) goto L_0x0206
            r36 = 1
            goto L_0x0208
        L_0x0206:
            r36 = 0
        L_0x0208:
            if (r36 == 0) goto L_0x0216
            r37 = r5
            java.lang.String r5 = "_ep"
            boolean r5 = r9.equals(r5)
            if (r5 == 0) goto L_0x0218
            r5 = 1
            goto L_0x0219
        L_0x0216:
            r37 = r5
        L_0x0218:
            r5 = 0
        L_0x0219:
            if (r5 == 0) goto L_0x0366
            r66.n()
            java.lang.String r5 = "_en"
            java.lang.Object r5 = c.e.a.b.h.b.Zb.b(r2, r5)
            r9 = r5
            java.lang.String r9 = (java.lang.String) r9
            boolean r5 = android.text.TextUtils.isEmpty(r9)
            if (r5 == 0) goto L_0x0244
            c.e.a.b.h.b.t r2 = r66.e()
            c.e.a.b.h.b.v r2 = r2.t()
            java.lang.String r3 = "Extra parameter without an event name. eventId"
            r2.a(r3, r4)
            r38 = r0
            r43 = r6
            r42 = r33
            r33 = r37
            goto L_0x0354
        L_0x0244:
            if (r0 == 0) goto L_0x0259
            if (r1 == 0) goto L_0x0259
            long r38 = r4.longValue()
            long r40 = r1.longValue()
            int r5 = (r38 > r40 ? 1 : (r38 == r40 ? 0 : -1))
            if (r5 == 0) goto L_0x0255
            goto L_0x0259
        L_0x0255:
            r5 = r0
            r36 = r1
            goto L_0x027f
        L_0x0259:
            c.e.a.b.h.b.sc r5 = r66.p()
            android.util.Pair r5 = r5.a((java.lang.String) r15, (java.lang.Long) r4)
            if (r5 == 0) goto L_0x033f
            r38 = r0
            java.lang.Object r0 = r5.first
            if (r0 != 0) goto L_0x026b
            goto L_0x0341
        L_0x026b:
            c.e.a.b.g.f.ba r0 = (c.e.a.b.g.f.C0803ba) r0
            java.lang.Object r1 = r5.second
            java.lang.Long r1 = (java.lang.Long) r1
            long r29 = r1.longValue()
            r66.n()
            java.lang.Object r1 = c.e.a.b.h.b.Zb.b(r0, r3)
            java.lang.Long r1 = (java.lang.Long) r1
            goto L_0x0255
        L_0x027f:
            long r29 = r29 - r34
            int r0 = (r29 > r27 ? 1 : (r29 == r27 ? 0 : -1))
            if (r0 > 0) goto L_0x02ce
            c.e.a.b.h.b.sc r1 = r66.p()
            r1.l()
            c.e.a.b.h.b.t r0 = r1.e()
            c.e.a.b.h.b.v r0 = r0.B()
            java.lang.String r3 = "Clearing complex main event info. appId"
            r0.a(r3, r15)
            android.database.sqlite.SQLiteDatabase r0 = r1.x()     // Catch:{ SQLiteException -> 0x02b0 }
            java.lang.String r3 = "delete from main_event_params where app_id=?"
            r17 = r2
            r4 = 1
            java.lang.String[] r2 = new java.lang.String[r4]     // Catch:{ SQLiteException -> 0x02ae }
            r18 = 0
            r2[r18] = r15     // Catch:{ SQLiteException -> 0x02ac }
            r0.execSQL(r3, r2)     // Catch:{ SQLiteException -> 0x02ac }
            goto L_0x02c3
        L_0x02ac:
            r0 = move-exception
            goto L_0x02b6
        L_0x02ae:
            r0 = move-exception
            goto L_0x02b4
        L_0x02b0:
            r0 = move-exception
            r17 = r2
            r4 = 1
        L_0x02b4:
            r18 = 0
        L_0x02b6:
            c.e.a.b.h.b.t r1 = r1.e()
            c.e.a.b.h.b.v r1 = r1.t()
            java.lang.String r2 = "Error clearing complex main event"
            r1.a(r2, r0)
        L_0x02c3:
            r16 = r5
            r43 = r6
            r13 = r17
            r42 = r33
            r33 = r37
            goto L_0x02eb
        L_0x02ce:
            r17 = r2
            r3 = 1
            r18 = 0
            c.e.a.b.h.b.sc r1 = r66.p()
            r13 = r17
            r2 = r67
            r3 = r4
            r16 = r5
            r42 = r33
            r33 = r37
            r4 = r29
            r43 = r6
            r6 = r16
            r1.a(r2, r3, r4, r6)
        L_0x02eb:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = r16
            c.e.a.b.g.f.K[] r2 = r1.f10344d
            int r3 = r2.length
            r4 = 0
        L_0x02f6:
            if (r4 >= r3) goto L_0x030d
            r5 = r2[r4]
            r66.n()
            java.lang.String r6 = r5.q()
            c.e.a.b.g.f.K r6 = c.e.a.b.h.b.Zb.a((c.e.a.b.g.f.C0803ba) r13, (java.lang.String) r6)
            if (r6 != 0) goto L_0x030a
            r0.add(r5)
        L_0x030a:
            int r4 = r4 + 1
            goto L_0x02f6
        L_0x030d:
            boolean r2 = r0.isEmpty()
            if (r2 != 0) goto L_0x032e
            java.util.Iterator r2 = r11.iterator()
        L_0x0317:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L_0x0327
            java.lang.Object r3 = r2.next()
            c.e.a.b.g.f.K r3 = (c.e.a.b.g.f.K) r3
            r0.add(r3)
            goto L_0x0317
        L_0x0327:
            r37 = r0
            r38 = r1
            r0 = r9
            goto L_0x03c1
        L_0x032e:
            c.e.a.b.h.b.t r0 = r66.e()
            c.e.a.b.h.b.v r0 = r0.w()
            java.lang.String r2 = "No unique parameters in main event. eventName"
            r0.a(r2, r9)
            r38 = r1
            goto L_0x03be
        L_0x033f:
            r38 = r0
        L_0x0341:
            r43 = r6
            r42 = r33
            r33 = r37
            c.e.a.b.h.b.t r0 = r66.e()
            c.e.a.b.h.b.v r0 = r0.t()
            java.lang.String r2 = "Extra parameter without existing main event. eventName, eventId"
            r0.a(r2, r9, r4)
        L_0x0354:
            r46 = r8
            r48 = r10
            r16 = r12
            r64 = r20
            r47 = r22
            r11 = r26
            r0 = r38
            r26 = r21
            goto L_0x07ba
        L_0x0366:
            r38 = r0
            r13 = r2
            r43 = r6
            r42 = r33
            r33 = r37
            if (r36 == 0) goto L_0x03bc
            r66.n()
            java.lang.Long r0 = java.lang.Long.valueOf(r27)
            java.lang.String r1 = "_epc"
            java.lang.Object r1 = c.e.a.b.h.b.Zb.b(r13, r1)
            if (r1 != 0) goto L_0x0381
            goto L_0x0382
        L_0x0381:
            r0 = r1
        L_0x0382:
            java.lang.Long r0 = (java.lang.Long) r0
            long r16 = r0.longValue()
            int r0 = (r16 > r27 ? 1 : (r16 == r27 ? 0 : -1))
            if (r0 > 0) goto L_0x039b
            c.e.a.b.h.b.t r0 = r66.e()
            c.e.a.b.h.b.v r0 = r0.w()
            java.lang.String r1 = "Complex event with zero extra param count. eventName"
            r0.a(r1, r9)
            r0 = r4
            goto L_0x03a9
        L_0x039b:
            c.e.a.b.h.b.sc r1 = r66.p()
            r2 = r67
            r3 = r4
            r0 = r4
            r4 = r16
            r6 = r13
            r1.a(r2, r3, r4, r6)
        L_0x03a9:
            r36 = r0
            r0 = r9
            r37 = r11
            r38 = r13
            r29 = r16
            goto L_0x03c1
        L_0x03b3:
            r38 = r0
            r13 = r2
            r43 = r6
            r42 = r33
            r33 = r5
        L_0x03bc:
            r36 = r1
        L_0x03be:
            r0 = r9
            r37 = r11
        L_0x03c1:
            c.e.a.b.h.b.sc r1 = r66.p()
            java.lang.String r2 = r13.f10345e
            c.e.a.b.h.b.g r1 = r1.b((java.lang.String) r15, (java.lang.String) r2)
            if (r1 != 0) goto L_0x0429
            c.e.a.b.h.b.t r1 = r66.e()
            c.e.a.b.h.b.v r1 = r1.w()
            java.lang.Object r2 = c.e.a.b.h.b.C0957t.a((java.lang.String) r67)
            c.e.a.b.h.b.r r3 = r66.f()
            java.lang.String r3 = r3.a((java.lang.String) r0)
            java.lang.String r4 = "Event aggregate wasn't created during raw event logging. appId, event"
            r1.a(r4, r2, r3)
            c.e.a.b.h.b.g r1 = new c.e.a.b.h.b.g
            java.lang.String r2 = r13.f10345e
            r3 = 1
            r5 = 1
            java.lang.Long r9 = r13.f10346f
            long r16 = r9.longValue()
            r34 = 0
            r39 = 0
            r40 = 0
            r41 = 0
            r44 = 0
            r9 = r8
            r11 = r21
            r8 = r1
            r46 = r9
            r45 = r20
            r9 = r67
            r48 = r10
            r47 = r22
            r10 = r2
            r7 = r11
            r2 = r26
            r26 = r12
            r11 = r3
            r3 = r13
            r4 = r14
            r13 = r5
            r5 = r15
            r15 = r16
            r17 = r34
            r19 = r39
            r20 = r40
            r21 = r41
            r22 = r44
            r8.<init>(r9, r10, r11, r13, r15, r17, r19, r20, r21, r22)
            r17 = r3
            goto L_0x046c
        L_0x0429:
            r46 = r8
            r48 = r10
            r3 = r13
            r4 = r14
            r5 = r15
            r45 = r20
            r7 = r21
            r47 = r22
            r2 = r26
            r26 = r12
            c.e.a.b.h.b.g r6 = new c.e.a.b.h.b.g
            java.lang.String r8 = r1.f10888a
            java.lang.String r9 = r1.f10889b
            long r10 = r1.f10890c
            long r52 = r10 + r34
            long r10 = r1.f10891d
            long r54 = r10 + r34
            long r10 = r1.f10892e
            long r12 = r1.f10893f
            java.lang.Long r14 = r1.f10894g
            java.lang.Long r15 = r1.f10895h
            r17 = r3
            java.lang.Long r3 = r1.f10896i
            java.lang.Boolean r1 = r1.f10897j
            r49 = r6
            r50 = r8
            r51 = r9
            r56 = r10
            r58 = r12
            r60 = r14
            r61 = r15
            r62 = r3
            r63 = r1
            r49.<init>(r50, r51, r52, r54, r56, r58, r60, r61, r62, r63)
            r1 = r6
        L_0x046c:
            c.e.a.b.h.b.sc r3 = r66.p()
            r3.a((c.e.a.b.h.b.C0919g) r1)
            long r8 = r1.f10890c
            r10 = r42
            java.lang.Object r1 = r10.get(r0)
            java.util.Map r1 = (java.util.Map) r1
            if (r1 != 0) goto L_0x0491
            c.e.a.b.h.b.sc r1 = r66.p()
            java.util.Map r1 = r1.g(r5, r0)
            if (r1 != 0) goto L_0x048e
            b.f.b r1 = new b.f.b
            r1.<init>()
        L_0x048e:
            r10.put(r0, r1)
        L_0x0491:
            r11 = r1
            java.util.Set r1 = r11.keySet()
            java.util.Iterator r12 = r1.iterator()
        L_0x049a:
            boolean r1 = r12.hasNext()
            if (r1 == 0) goto L_0x07ad
            java.lang.Object r1 = r12.next()
            java.lang.Integer r1 = (java.lang.Integer) r1
            int r13 = r1.intValue()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r13)
            boolean r1 = r2.contains(r1)
            if (r1 == 0) goto L_0x04c6
            c.e.a.b.h.b.t r1 = r66.e()
            c.e.a.b.h.b.v r1 = r1.B()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r13)
            r14 = r46
            r1.a(r14, r3)
            goto L_0x049a
        L_0x04c6:
            r14 = r46
            java.lang.Integer r1 = java.lang.Integer.valueOf(r13)
            r15 = r47
            java.lang.Object r1 = r15.get(r1)
            java.util.BitSet r1 = (java.util.BitSet) r1
            java.lang.Integer r3 = java.lang.Integer.valueOf(r13)
            r6 = r45
            java.lang.Object r3 = r6.get(r3)
            java.util.BitSet r3 = (java.util.BitSet) r3
            if (r23 == 0) goto L_0x0501
            r16 = r1
            java.lang.Integer r1 = java.lang.Integer.valueOf(r13)
            java.lang.Object r1 = r7.get(r1)
            java.util.Map r1 = (java.util.Map) r1
            r18 = r1
            java.lang.Integer r1 = java.lang.Integer.valueOf(r13)
            r42 = r10
            r10 = r43
            java.lang.Object r1 = r10.get(r1)
            java.util.Map r1 = (java.util.Map) r1
            r19 = r1
            goto L_0x050b
        L_0x0501:
            r16 = r1
            r42 = r10
            r10 = r43
            r18 = 0
            r19 = 0
        L_0x050b:
            java.lang.Integer r1 = java.lang.Integer.valueOf(r13)
            r20 = r12
            r12 = r26
            java.lang.Object r1 = r12.get(r1)
            c.e.a.b.g.f.H r1 = (c.e.a.b.g.f.H) r1
            if (r1 != 0) goto L_0x056f
            c.e.a.b.g.f.H$a r1 = c.e.a.b.g.f.H.y()
            r3 = 1
            r1.a((boolean) r3)
            java.lang.Integer r3 = java.lang.Integer.valueOf(r13)
            c.e.a.b.g.f.Sb r1 = r1.o()
            c.e.a.b.g.f.H r1 = (c.e.a.b.g.f.H) r1
            r12.put(r3, r1)
            java.util.BitSet r1 = new java.util.BitSet
            r1.<init>()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r13)
            r15.put(r3, r1)
            java.util.BitSet r3 = new java.util.BitSet
            r3.<init>()
            r16 = r1
            java.lang.Integer r1 = java.lang.Integer.valueOf(r13)
            r6.put(r1, r3)
            if (r23 == 0) goto L_0x056f
            b.f.b r1 = new b.f.b
            r1.<init>()
            r26 = r2
            java.lang.Integer r2 = java.lang.Integer.valueOf(r13)
            r7.put(r2, r1)
            b.f.b r2 = new b.f.b
            r2.<init>()
            r18 = r1
            java.lang.Integer r1 = java.lang.Integer.valueOf(r13)
            r10.put(r1, r2)
            r1 = r3
            r43 = r10
            r3 = r16
            r10 = r2
            goto L_0x0578
        L_0x056f:
            r26 = r2
            r1 = r3
            r43 = r10
            r3 = r16
            r10 = r19
        L_0x0578:
            r16 = r12
            r12 = r18
            java.lang.Integer r2 = java.lang.Integer.valueOf(r13)
            java.lang.Object r2 = r11.get(r2)
            java.util.List r2 = (java.util.List) r2
            java.util.Iterator r18 = r2.iterator()
        L_0x058a:
            boolean r2 = r18.hasNext()
            if (r2 == 0) goto L_0x0792
            java.lang.Object r2 = r18.next()
            c.e.a.b.g.f.T r2 = (c.e.a.b.g.f.T) r2
            r19 = r1
            c.e.a.b.h.b.t r1 = r66.e()
            r21 = r11
            r11 = 2
            boolean r1 = r1.a((int) r11)
            if (r1 == 0) goto L_0x05da
            c.e.a.b.h.b.t r1 = r66.e()
            c.e.a.b.h.b.v r1 = r1.B()
            java.lang.Integer r11 = java.lang.Integer.valueOf(r13)
            java.lang.Integer r4 = r2.f10222d
            c.e.a.b.h.b.r r5 = r66.f()
            r45 = r6
            java.lang.String r6 = r2.f10223e
            java.lang.String r5 = r5.a((java.lang.String) r6)
            java.lang.String r6 = "Evaluating filter. audience, filter, event"
            r1.a(r6, r11, r4, r5)
            c.e.a.b.h.b.t r1 = r66.e()
            c.e.a.b.h.b.v r1 = r1.B()
            c.e.a.b.h.b.Zb r4 = r66.n()
            java.lang.String r4 = r4.a((c.e.a.b.g.f.T) r2)
            r11 = r48
            r1.a(r11, r4)
            goto L_0x05de
        L_0x05da:
            r45 = r6
            r11 = r48
        L_0x05de:
            java.lang.Integer r1 = r2.f10222d
            if (r1 == 0) goto L_0x074f
            int r1 = r1.intValue()
            r5 = 256(0x100, float:3.59E-43)
            if (r1 <= r5) goto L_0x05ec
            goto L_0x074f
        L_0x05ec:
            java.lang.String r6 = "Event filter result"
            if (r23 == 0) goto L_0x06c4
            if (r2 == 0) goto L_0x05ff
            java.lang.Boolean r1 = r2.f10227i
            if (r1 == 0) goto L_0x05ff
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L_0x05ff
            r22 = 1
            goto L_0x0601
        L_0x05ff:
            r22 = 0
        L_0x0601:
            if (r2 == 0) goto L_0x0610
            java.lang.Boolean r1 = r2.f10228j
            if (r1 == 0) goto L_0x0610
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L_0x0610
            r31 = 1
            goto L_0x0612
        L_0x0610:
            r31 = 0
        L_0x0612:
            java.lang.Integer r1 = r2.f10222d
            int r1 = r1.intValue()
            boolean r1 = r3.get(r1)
            if (r1 == 0) goto L_0x0643
            if (r22 != 0) goto L_0x0643
            if (r31 != 0) goto L_0x0643
            c.e.a.b.h.b.t r1 = r66.e()
            c.e.a.b.h.b.v r1 = r1.B()
            java.lang.Integer r4 = java.lang.Integer.valueOf(r13)
            java.lang.Integer r2 = r2.f10222d
            java.lang.String r6 = "Event filter already evaluated true and it is not associated with a dynamic audience. audience ID, filter ID"
            r1.a(r6, r4, r2)
            r5 = r67
            r4 = r69
            r48 = r11
            r1 = r19
            r11 = r21
            r6 = r45
            goto L_0x058a
        L_0x0643:
            r4 = r19
            r1 = r66
            r19 = r2
            r48 = r11
            r11 = r26
            r26 = r7
            r47 = r15
            r7 = r17
            r15 = r3
            r3 = r0
            r46 = r14
            r14 = r4
            r4 = r37
            r17 = r0
            r0 = r6
            r64 = r45
            r5 = r8
            java.lang.Boolean r1 = r1.a(r2, r3, r4, r5)
            c.e.a.b.h.b.t r2 = r66.e()
            c.e.a.b.h.b.v r2 = r2.B()
            if (r1 != 0) goto L_0x0671
            r3 = r25
            goto L_0x0672
        L_0x0671:
            r3 = r1
        L_0x0672:
            r2.a(r0, r3)
            if (r1 != 0) goto L_0x0680
            java.lang.Integer r0 = java.lang.Integer.valueOf(r13)
            r11.add(r0)
            goto L_0x06f8
        L_0x0680:
            r5 = r19
            java.lang.Integer r0 = r5.f10222d
            int r0 = r0.intValue()
            r14.set(r0)
            boolean r0 = r1.booleanValue()
            if (r0 == 0) goto L_0x06f8
            java.lang.Integer r0 = r5.f10222d
            int r0 = r0.intValue()
            r15.set(r0)
            if (r22 != 0) goto L_0x069e
            if (r31 == 0) goto L_0x06f8
        L_0x069e:
            java.lang.Long r0 = r7.f10346f
            if (r0 == 0) goto L_0x06f8
            if (r31 == 0) goto L_0x06b4
            java.lang.Integer r0 = r5.f10222d
            int r0 = r0.intValue()
            java.lang.Long r1 = r7.f10346f
            long r1 = r1.longValue()
            b(r10, r0, r1)
            goto L_0x06f8
        L_0x06b4:
            java.lang.Integer r0 = r5.f10222d
            int r0 = r0.intValue()
            java.lang.Long r1 = r7.f10346f
            long r1 = r1.longValue()
            a((java.util.Map<java.lang.Integer, java.lang.Long>) r12, (int) r0, (long) r1)
            goto L_0x06f8
        L_0x06c4:
            r5 = r2
            r48 = r11
            r46 = r14
            r47 = r15
            r14 = r19
            r11 = r26
            r64 = r45
            r15 = r3
            r26 = r7
            r7 = r17
            r17 = r0
            r0 = r6
            java.lang.Integer r1 = r5.f10222d
            int r1 = r1.intValue()
            boolean r1 = r15.get(r1)
            if (r1 == 0) goto L_0x070c
            c.e.a.b.h.b.t r0 = r66.e()
            c.e.a.b.h.b.v r0 = r0.B()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r13)
            java.lang.Integer r2 = r5.f10222d
            java.lang.String r3 = "Event filter already evaluated true. audience ID, filter ID"
            r0.a(r3, r1, r2)
        L_0x06f8:
            r5 = r67
            r4 = r69
            r1 = r14
            r3 = r15
            r0 = r17
            r14 = r46
            r15 = r47
            r6 = r64
            r17 = r7
            r7 = r26
            goto L_0x078c
        L_0x070c:
            r1 = r66
            r2 = r5
            r3 = r17
            r4 = r37
            r19 = r7
            r7 = r5
            r5 = r8
            java.lang.Boolean r1 = r1.a(r2, r3, r4, r5)
            c.e.a.b.h.b.t r2 = r66.e()
            c.e.a.b.h.b.v r2 = r2.B()
            if (r1 != 0) goto L_0x0728
            r3 = r25
            goto L_0x0729
        L_0x0728:
            r3 = r1
        L_0x0729:
            r2.a(r0, r3)
            if (r1 != 0) goto L_0x0736
            java.lang.Integer r0 = java.lang.Integer.valueOf(r13)
            r11.add(r0)
            goto L_0x077a
        L_0x0736:
            java.lang.Integer r0 = r7.f10222d
            int r0 = r0.intValue()
            r14.set(r0)
            boolean r0 = r1.booleanValue()
            if (r0 == 0) goto L_0x077a
            java.lang.Integer r0 = r7.f10222d
            int r0 = r0.intValue()
            r15.set(r0)
            goto L_0x077a
        L_0x074f:
            r48 = r11
            r46 = r14
            r47 = r15
            r14 = r19
            r11 = r26
            r64 = r45
            r15 = r3
            r26 = r7
            r19 = r17
            r17 = r0
            r7 = r2
            c.e.a.b.h.b.t r0 = r66.e()
            c.e.a.b.h.b.v r0 = r0.w()
            java.lang.Object r1 = c.e.a.b.h.b.C0957t.a((java.lang.String) r67)
            java.lang.Integer r2 = r7.f10222d
            java.lang.String r2 = java.lang.String.valueOf(r2)
            java.lang.String r3 = "Invalid event filter ID. appId, id"
            r0.a(r3, r1, r2)
        L_0x077a:
            r5 = r67
            r4 = r69
            r1 = r14
            r3 = r15
            r0 = r17
            r17 = r19
            r7 = r26
            r14 = r46
            r15 = r47
            r6 = r64
        L_0x078c:
            r26 = r11
            r11 = r21
            goto L_0x058a
        L_0x0792:
            r21 = r11
            r19 = r17
            r11 = r26
            r5 = r67
            r4 = r69
            r45 = r6
            r2 = r11
            r46 = r14
            r47 = r15
            r26 = r16
            r12 = r20
            r11 = r21
            r10 = r42
            goto L_0x049a
        L_0x07ad:
            r11 = r2
            r42 = r10
            r16 = r26
            r64 = r45
            r26 = r7
            r1 = r36
            r0 = r38
        L_0x07ba:
            int r3 = r32 + 1
            r7 = r66
            r15 = r67
            r13 = r68
            r14 = r69
            r12 = r16
            r21 = r26
            r5 = r33
            r4 = r42
            r6 = r43
            r8 = r46
            r22 = r47
            r10 = r48
            r20 = r64
            r26 = r11
            goto L_0x01d8
        L_0x07da:
            r43 = r6
            r46 = r8
            r48 = r10
            r16 = r12
            r64 = r20
            r47 = r22
            r11 = r26
            r26 = r21
            r1 = r69
            if (r1 == 0) goto L_0x0b3e
            b.f.b r0 = new b.f.b
            r0.<init>()
            int r2 = r1.length
            r3 = 0
        L_0x07f5:
            if (r3 >= r2) goto L_0x0b3e
            r4 = r1[r3]
            java.lang.String r5 = r4.q()
            java.lang.Object r5 = r0.get(r5)
            java.util.Map r5 = (java.util.Map) r5
            if (r5 != 0) goto L_0x0822
            c.e.a.b.h.b.sc r5 = r66.p()
            java.lang.String r6 = r4.q()
            r7 = r67
            java.util.Map r5 = r5.h(r7, r6)
            if (r5 != 0) goto L_0x081a
            b.f.b r5 = new b.f.b
            r5.<init>()
        L_0x081a:
            java.lang.String r6 = r4.q()
            r0.put(r6, r5)
            goto L_0x0824
        L_0x0822:
            r7 = r67
        L_0x0824:
            java.util.Set r6 = r5.keySet()
            java.util.Iterator r6 = r6.iterator()
        L_0x082c:
            boolean r8 = r6.hasNext()
            if (r8 == 0) goto L_0x0b22
            java.lang.Object r8 = r6.next()
            java.lang.Integer r8 = (java.lang.Integer) r8
            int r8 = r8.intValue()
            java.lang.Integer r9 = java.lang.Integer.valueOf(r8)
            boolean r9 = r11.contains(r9)
            if (r9 == 0) goto L_0x0858
            c.e.a.b.h.b.t r9 = r66.e()
            c.e.a.b.h.b.v r9 = r9.B()
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
            r10 = r46
            r9.a(r10, r8)
            goto L_0x082c
        L_0x0858:
            r10 = r46
            java.lang.Integer r9 = java.lang.Integer.valueOf(r8)
            r12 = r47
            java.lang.Object r9 = r12.get(r9)
            java.util.BitSet r9 = (java.util.BitSet) r9
            java.lang.Integer r13 = java.lang.Integer.valueOf(r8)
            r14 = r64
            java.lang.Object r13 = r14.get(r13)
            java.util.BitSet r13 = (java.util.BitSet) r13
            if (r23 == 0) goto L_0x0893
            java.lang.Integer r15 = java.lang.Integer.valueOf(r8)
            r1 = r26
            java.lang.Object r15 = r1.get(r15)
            java.util.Map r15 = (java.util.Map) r15
            r68 = r0
            java.lang.Integer r0 = java.lang.Integer.valueOf(r8)
            r17 = r2
            r2 = r43
            java.lang.Object r0 = r2.get(r0)
            java.util.Map r0 = (java.util.Map) r0
            r18 = r0
            goto L_0x089e
        L_0x0893:
            r68 = r0
            r17 = r2
            r1 = r26
            r2 = r43
            r15 = 0
            r18 = 0
        L_0x089e:
            java.lang.Integer r0 = java.lang.Integer.valueOf(r8)
            r19 = r6
            r6 = r16
            java.lang.Object r0 = r6.get(r0)
            c.e.a.b.g.f.H r0 = (c.e.a.b.g.f.H) r0
            if (r0 != 0) goto L_0x0908
            c.e.a.b.g.f.H$a r0 = c.e.a.b.g.f.H.y()
            r9 = 1
            r0.a((boolean) r9)
            java.lang.Integer r13 = java.lang.Integer.valueOf(r8)
            c.e.a.b.g.f.Sb r0 = r0.o()
            c.e.a.b.g.f.H r0 = (c.e.a.b.g.f.H) r0
            r6.put(r13, r0)
            java.util.BitSet r0 = new java.util.BitSet
            r0.<init>()
            java.lang.Integer r13 = java.lang.Integer.valueOf(r8)
            r12.put(r13, r0)
            java.util.BitSet r13 = new java.util.BitSet
            r13.<init>()
            java.lang.Integer r9 = java.lang.Integer.valueOf(r8)
            r14.put(r9, r13)
            if (r23 == 0) goto L_0x08fd
            b.f.b r15 = new b.f.b
            r15.<init>()
            java.lang.Integer r9 = java.lang.Integer.valueOf(r8)
            r1.put(r9, r15)
            b.f.b r9 = new b.f.b
            r9.<init>()
            r16 = r0
            java.lang.Integer r0 = java.lang.Integer.valueOf(r8)
            r2.put(r0, r9)
            r26 = r6
            r0 = r9
            r9 = r16
            goto L_0x0905
        L_0x08fd:
            r16 = r0
            r26 = r6
            r9 = r16
            r0 = r18
        L_0x0905:
            r16 = 1
            goto L_0x090e
        L_0x0908:
            r16 = 1
            r26 = r6
            r0 = r18
        L_0x090e:
            java.lang.Integer r6 = java.lang.Integer.valueOf(r8)
            java.lang.Object r6 = r5.get(r6)
            java.util.List r6 = (java.util.List) r6
            java.util.Iterator r6 = r6.iterator()
        L_0x091c:
            boolean r18 = r6.hasNext()
            if (r18 == 0) goto L_0x0b08
            java.lang.Object r18 = r6.next()
            r20 = r5
            r5 = r18
            c.e.a.b.g.f.X r5 = (c.e.a.b.g.f.X) r5
            r18 = r6
            c.e.a.b.h.b.t r6 = r66.e()
            r46 = r10
            r10 = 2
            boolean r6 = r6.a((int) r10)
            if (r6 == 0) goto L_0x0972
            c.e.a.b.h.b.t r6 = r66.e()
            c.e.a.b.h.b.v r6 = r6.B()
            java.lang.Integer r10 = java.lang.Integer.valueOf(r8)
            java.lang.Integer r7 = r5.f10277d
            r43 = r2
            c.e.a.b.h.b.r r2 = r66.f()
            r21 = r1
            java.lang.String r1 = r5.f10278e
            java.lang.String r1 = r2.c(r1)
            java.lang.String r2 = "Evaluating filter. audience, filter, property"
            r6.a(r2, r10, r7, r1)
            c.e.a.b.h.b.t r1 = r66.e()
            c.e.a.b.h.b.v r1 = r1.B()
            c.e.a.b.h.b.Zb r2 = r66.n()
            java.lang.String r2 = r2.a((c.e.a.b.g.f.X) r5)
            r6 = r48
            r1.a(r6, r2)
            goto L_0x0978
        L_0x0972:
            r21 = r1
            r43 = r2
            r6 = r48
        L_0x0978:
            java.lang.Integer r1 = r5.f10277d
            if (r1 == 0) goto L_0x0ace
            int r1 = r1.intValue()
            r2 = 256(0x100, float:3.59E-43)
            if (r1 <= r2) goto L_0x0986
            goto L_0x0ace
        L_0x0986:
            java.lang.String r1 = "Property filter result"
            if (r23 == 0) goto L_0x0a61
            boolean r7 = a((c.e.a.b.g.f.X) r5)
            if (r5 == 0) goto L_0x099c
            java.lang.Boolean r10 = r5.f10281h
            if (r10 == 0) goto L_0x099c
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto L_0x099c
            r10 = 1
            goto L_0x099d
        L_0x099c:
            r10 = 0
        L_0x099d:
            java.lang.Integer r2 = r5.f10277d
            int r2 = r2.intValue()
            boolean r2 = r9.get(r2)
            if (r2 == 0) goto L_0x09ce
            if (r7 != 0) goto L_0x09ce
            if (r10 != 0) goto L_0x09ce
            c.e.a.b.h.b.t r1 = r66.e()
            c.e.a.b.h.b.v r1 = r1.B()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r8)
            java.lang.Integer r5 = r5.f10277d
            java.lang.String r7 = "Property filter already evaluated true and it is not associated with a dynamic audience. audience ID, filter ID"
            r1.a(r7, r2, r5)
            r7 = r67
            r48 = r6
            r6 = r18
            r5 = r20
            r1 = r21
            r2 = r43
            goto L_0x0a92
        L_0x09ce:
            r2 = r66
            r48 = r6
            r6 = r26
            java.lang.Boolean r22 = r2.a((c.e.a.b.g.f.X) r5, (c.e.a.b.g.f.N) r4)
            c.e.a.b.h.b.t r26 = r66.e()
            r45 = r14
            c.e.a.b.h.b.v r14 = r26.B()
            if (r22 != 0) goto L_0x09e9
            r26 = r6
            r6 = r25
            goto L_0x09ed
        L_0x09e9:
            r26 = r6
            r6 = r22
        L_0x09ed:
            r14.a(r1, r6)
            if (r22 != 0) goto L_0x09fb
            java.lang.Integer r1 = java.lang.Integer.valueOf(r8)
            r11.add(r1)
            goto L_0x0a86
        L_0x09fb:
            java.lang.Integer r1 = r5.f10277d
            int r1 = r1.intValue()
            r13.set(r1)
            if (r24 == 0) goto L_0x0a26
            java.lang.Integer r1 = r5.f10277d
            int r1 = r1.intValue()
            boolean r1 = r9.get(r1)
            if (r1 == 0) goto L_0x0a18
            boolean r1 = a((c.e.a.b.g.f.X) r5)
            if (r1 == 0) goto L_0x0a33
        L_0x0a18:
            java.lang.Integer r1 = r5.f10277d
            int r1 = r1.intValue()
            boolean r6 = r22.booleanValue()
            r9.set(r1, r6)
            goto L_0x0a33
        L_0x0a26:
            java.lang.Integer r1 = r5.f10277d
            int r1 = r1.intValue()
            boolean r6 = r22.booleanValue()
            r9.set(r1, r6)
        L_0x0a33:
            boolean r1 = r22.booleanValue()
            if (r1 == 0) goto L_0x0a86
            if (r7 != 0) goto L_0x0a3d
            if (r10 == 0) goto L_0x0a86
        L_0x0a3d:
            boolean r1 = r4.B()
            if (r1 == 0) goto L_0x0a86
            if (r10 == 0) goto L_0x0a53
            java.lang.Integer r1 = r5.f10277d
            int r1 = r1.intValue()
            long r5 = r4.C()
            b(r0, r1, r5)
            goto L_0x0a86
        L_0x0a53:
            java.lang.Integer r1 = r5.f10277d
            int r1 = r1.intValue()
            long r5 = r4.C()
            a((java.util.Map<java.lang.Integer, java.lang.Long>) r15, (int) r1, (long) r5)
            goto L_0x0a86
        L_0x0a61:
            r2 = r66
            r48 = r6
            r45 = r14
            java.lang.Integer r6 = r5.f10277d
            int r6 = r6.intValue()
            boolean r6 = r9.get(r6)
            if (r6 == 0) goto L_0x0a96
            c.e.a.b.h.b.t r1 = r66.e()
            c.e.a.b.h.b.v r1 = r1.B()
            java.lang.Integer r6 = java.lang.Integer.valueOf(r8)
            java.lang.Integer r5 = r5.f10277d
            java.lang.String r7 = "Property filter already evaluated true. audience ID, filter ID"
            r1.a(r7, r6, r5)
        L_0x0a86:
            r7 = r67
            r6 = r18
            r5 = r20
            r1 = r21
            r2 = r43
            r14 = r45
        L_0x0a92:
            r10 = r46
            goto L_0x091c
        L_0x0a96:
            java.lang.Boolean r6 = r2.a((c.e.a.b.g.f.X) r5, (c.e.a.b.g.f.N) r4)
            c.e.a.b.h.b.t r7 = r66.e()
            c.e.a.b.h.b.v r7 = r7.B()
            if (r6 != 0) goto L_0x0aa7
            r10 = r25
            goto L_0x0aa8
        L_0x0aa7:
            r10 = r6
        L_0x0aa8:
            r7.a(r1, r10)
            if (r6 != 0) goto L_0x0ab5
            java.lang.Integer r1 = java.lang.Integer.valueOf(r8)
            r11.add(r1)
            goto L_0x0a86
        L_0x0ab5:
            java.lang.Integer r1 = r5.f10277d
            int r1 = r1.intValue()
            r13.set(r1)
            boolean r1 = r6.booleanValue()
            if (r1 == 0) goto L_0x0a86
            java.lang.Integer r1 = r5.f10277d
            int r1 = r1.intValue()
            r9.set(r1)
            goto L_0x0a86
        L_0x0ace:
            r2 = r66
            r48 = r6
            r45 = r14
            c.e.a.b.h.b.t r0 = r66.e()
            c.e.a.b.h.b.v r0 = r0.w()
            java.lang.Object r1 = c.e.a.b.h.b.C0957t.a((java.lang.String) r67)
            java.lang.Integer r5 = r5.f10277d
            java.lang.String r5 = java.lang.String.valueOf(r5)
            java.lang.String r6 = "Invalid property filter ID. appId, id"
            r0.a(r6, r1, r5)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r8)
            r11.add(r0)
            r7 = r67
            r0 = r68
            r1 = r69
            r47 = r12
            r2 = r17
            r6 = r19
            r5 = r20
            r16 = r26
            r64 = r45
            r26 = r21
            goto L_0x082c
        L_0x0b08:
            r43 = r2
            r2 = r66
            r7 = r67
            r0 = r68
            r46 = r10
            r47 = r12
            r64 = r14
            r2 = r17
            r6 = r19
            r16 = r26
            r26 = r1
            r1 = r69
            goto L_0x082c
        L_0x0b22:
            r68 = r0
            r17 = r2
            r21 = r26
            r12 = r47
            r45 = r64
            r2 = r66
            r26 = r16
            r16 = 1
            int r3 = r3 + 1
            r1 = r69
            r2 = r17
            r16 = r26
            r26 = r21
            goto L_0x07f5
        L_0x0b3e:
            r2 = r66
            r21 = r26
            r12 = r47
            r45 = r64
            r26 = r16
            r16 = 1
            int r0 = r12.size()
            c.e.a.b.g.f.H[] r1 = new c.e.a.b.g.f.H[r0]
            java.util.Set r0 = r12.keySet()
            java.util.Iterator r3 = r0.iterator()
            r5 = 0
        L_0x0b59:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L_0x0df3
            java.lang.Object r0 = r3.next()
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r0 = r0.intValue()
            java.lang.Integer r4 = java.lang.Integer.valueOf(r0)
            boolean r4 = r11.contains(r4)
            if (r4 != 0) goto L_0x0ded
            java.lang.Integer r4 = java.lang.Integer.valueOf(r0)
            r6 = r26
            java.lang.Object r4 = r6.get(r4)
            c.e.a.b.g.f.H r4 = (c.e.a.b.g.f.H) r4
            if (r4 != 0) goto L_0x0b86
            c.e.a.b.g.f.H$a r4 = c.e.a.b.g.f.H.y()
            goto L_0x0b8c
        L_0x0b86:
            c.e.a.b.g.f.nb$a r4 = r4.k()
            c.e.a.b.g.f.H$a r4 = (c.e.a.b.g.f.H.a) r4
        L_0x0b8c:
            r4.a((int) r0)
            c.e.a.b.g.f.L$a r7 = c.e.a.b.g.f.L.y()
            java.lang.Integer r8 = java.lang.Integer.valueOf(r0)
            java.lang.Object r8 = r12.get(r8)
            java.util.BitSet r8 = (java.util.BitSet) r8
            java.util.List r8 = c.e.a.b.h.b.Zb.a((java.util.BitSet) r8)
            r7.b(r8)
            java.lang.Integer r8 = java.lang.Integer.valueOf(r0)
            r9 = r45
            java.lang.Object r8 = r9.get(r8)
            java.util.BitSet r8 = (java.util.BitSet) r8
            java.util.List r8 = c.e.a.b.h.b.Zb.a((java.util.BitSet) r8)
            r7.a(r8)
            if (r23 == 0) goto L_0x0d53
            java.lang.Integer r8 = java.lang.Integer.valueOf(r0)
            r10 = r21
            java.lang.Object r8 = r10.get(r8)
            java.util.Map r8 = (java.util.Map) r8
            java.util.List r8 = a((java.util.Map<java.lang.Integer, java.lang.Long>) r8)
            r7.c(r8)
            java.lang.Integer r8 = java.lang.Integer.valueOf(r0)
            r13 = r43
            java.lang.Object r8 = r13.get(r8)
            java.util.Map r8 = (java.util.Map) r8
            if (r8 != 0) goto L_0x0be5
            java.util.List r8 = java.util.Collections.emptyList()
            r68 = r3
            r14 = r8
        L_0x0be1:
            r45 = r9
            goto L_0x0c51
        L_0x0be5:
            java.util.ArrayList r14 = new java.util.ArrayList
            int r15 = r8.size()
            r14.<init>(r15)
            java.util.Set r15 = r8.keySet()
            java.util.Iterator r15 = r15.iterator()
        L_0x0bf6:
            boolean r17 = r15.hasNext()
            if (r17 == 0) goto L_0x0c4e
            java.lang.Object r17 = r15.next()
            r2 = r17
            java.lang.Integer r2 = (java.lang.Integer) r2
            r68 = r3
            c.e.a.b.g.f.M$a r3 = c.e.a.b.g.f.M.w()
            r45 = r9
            int r9 = r2.intValue()
            r3.a((int) r9)
            java.lang.Object r2 = r8.get(r2)
            java.util.List r2 = (java.util.List) r2
            if (r2 == 0) goto L_0x0c3a
            java.util.Collections.sort(r2)
            java.util.Iterator r2 = r2.iterator()
        L_0x0c22:
            boolean r9 = r2.hasNext()
            if (r9 == 0) goto L_0x0c3a
            java.lang.Object r9 = r2.next()
            java.lang.Long r9 = (java.lang.Long) r9
            r69 = r8
            long r8 = r9.longValue()
            r3.a((long) r8)
            r8 = r69
            goto L_0x0c22
        L_0x0c3a:
            r69 = r8
            c.e.a.b.g.f.Sb r2 = r3.o()
            c.e.a.b.g.f.M r2 = (c.e.a.b.g.f.M) r2
            r14.add(r2)
            r2 = r66
            r3 = r68
            r8 = r69
            r9 = r45
            goto L_0x0bf6
        L_0x0c4e:
            r68 = r3
            goto L_0x0be1
        L_0x0c51:
            if (r24 == 0) goto L_0x0c67
            boolean r2 = r4.k()
            if (r2 == 0) goto L_0x0c67
            c.e.a.b.g.f.L r2 = r4.m()
            java.util.List r2 = r2.w()
            boolean r3 = r2.isEmpty()
            if (r3 == 0) goto L_0x0c6d
        L_0x0c67:
            r21 = r10
            r26 = r11
            goto L_0x0d4f
        L_0x0c6d:
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>(r14)
            b.f.b r8 = new b.f.b
            r8.<init>()
            java.util.Iterator r2 = r2.iterator()
        L_0x0c7b:
            boolean r9 = r2.hasNext()
            if (r9 == 0) goto L_0x0cad
            java.lang.Object r9 = r2.next()
            c.e.a.b.g.f.M r9 = (c.e.a.b.g.f.M) r9
            boolean r14 = r9.r()
            if (r14 == 0) goto L_0x0c7b
            int r14 = r9.t()
            if (r14 <= 0) goto L_0x0c7b
            int r14 = r9.q()
            java.lang.Integer r14 = java.lang.Integer.valueOf(r14)
            int r15 = r9.t()
            int r15 = r15 + -1
            long r17 = r9.c(r15)
            java.lang.Long r9 = java.lang.Long.valueOf(r17)
            r8.put(r14, r9)
            goto L_0x0c7b
        L_0x0cad:
            r2 = 0
        L_0x0cae:
            int r9 = r3.size()
            if (r2 >= r9) goto L_0x0d0e
            java.lang.Object r9 = r3.get(r2)
            c.e.a.b.g.f.M r9 = (c.e.a.b.g.f.M) r9
            boolean r14 = r9.r()
            if (r14 == 0) goto L_0x0cc9
            int r14 = r9.q()
            java.lang.Integer r14 = java.lang.Integer.valueOf(r14)
            goto L_0x0cca
        L_0x0cc9:
            r14 = 0
        L_0x0cca:
            java.lang.Object r14 = r8.remove(r14)
            java.lang.Long r14 = (java.lang.Long) r14
            if (r14 == 0) goto L_0x0d06
            java.util.ArrayList r15 = new java.util.ArrayList
            r15.<init>()
            long r17 = r14.longValue()
            r21 = r10
            r10 = 0
            long r19 = r9.c(r10)
            int r22 = (r17 > r19 ? 1 : (r17 == r19 ? 0 : -1))
            if (r22 >= 0) goto L_0x0ce9
            r15.add(r14)
        L_0x0ce9:
            java.util.List r14 = r9.s()
            r15.addAll(r14)
            c.e.a.b.g.f.nb$a r9 = r9.k()
            c.e.a.b.g.f.M$a r9 = (c.e.a.b.g.f.M.a) r9
            r9.j()
            r9.a((java.lang.Iterable<? extends java.lang.Long>) r15)
            c.e.a.b.g.f.Sb r9 = r9.o()
            c.e.a.b.g.f.M r9 = (c.e.a.b.g.f.M) r9
            r3.set(r2, r9)
            goto L_0x0d09
        L_0x0d06:
            r21 = r10
            r10 = 0
        L_0x0d09:
            int r2 = r2 + 1
            r10 = r21
            goto L_0x0cae
        L_0x0d0e:
            r21 = r10
            r10 = 0
            java.util.Set r2 = r8.keySet()
            java.util.Iterator r2 = r2.iterator()
        L_0x0d19:
            boolean r9 = r2.hasNext()
            if (r9 == 0) goto L_0x0d4c
            java.lang.Object r9 = r2.next()
            java.lang.Integer r9 = (java.lang.Integer) r9
            c.e.a.b.g.f.M$a r14 = c.e.a.b.g.f.M.w()
            int r15 = r9.intValue()
            r14.a((int) r15)
            java.lang.Object r9 = r8.get(r9)
            java.lang.Long r9 = (java.lang.Long) r9
            r26 = r11
            long r10 = r9.longValue()
            r14.a((long) r10)
            c.e.a.b.g.f.Sb r9 = r14.o()
            c.e.a.b.g.f.M r9 = (c.e.a.b.g.f.M) r9
            r3.add(r9)
            r11 = r26
            r10 = 0
            goto L_0x0d19
        L_0x0d4c:
            r26 = r11
            r14 = r3
        L_0x0d4f:
            r7.d(r14)
            goto L_0x0d5b
        L_0x0d53:
            r68 = r3
            r45 = r9
            r26 = r11
            r13 = r43
        L_0x0d5b:
            r4.a((c.e.a.b.g.f.L.a) r7)
            java.lang.Integer r2 = java.lang.Integer.valueOf(r0)
            c.e.a.b.g.f.Sb r3 = r4.o()
            c.e.a.b.g.f.H r3 = (c.e.a.b.g.f.H) r3
            r6.put(r2, r3)
            int r2 = r5 + 1
            c.e.a.b.g.f.Sb r3 = r4.o()
            c.e.a.b.g.f.H r3 = (c.e.a.b.g.f.H) r3
            r1[r5] = r3
            c.e.a.b.h.b.sc r3 = r66.p()
            c.e.a.b.g.f.L r4 = r4.j()
            r3.s()
            r3.l()
            c.e.a.b.d.d.r.b((java.lang.String) r67)
            c.e.a.b.d.d.r.a(r4)
            byte[] r4 = r4.g()
            android.content.ContentValues r5 = new android.content.ContentValues
            r5.<init>()
            java.lang.String r7 = "app_id"
            r8 = r67
            r5.put(r7, r8)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            java.lang.String r7 = "audience_id"
            r5.put(r7, r0)
            java.lang.String r0 = "current_results"
            r5.put(r0, r4)
            android.database.sqlite.SQLiteDatabase r0 = r3.x()     // Catch:{ SQLiteException -> 0x0dcd }
            java.lang.String r4 = "audience_filter_values"
            r7 = 5
            r9 = 0
            long r4 = r0.insertWithOnConflict(r4, r9, r5, r7)     // Catch:{ SQLiteException -> 0x0dcb }
            r10 = -1
            int r0 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r0 != 0) goto L_0x0de0
            c.e.a.b.h.b.t r0 = r3.e()     // Catch:{ SQLiteException -> 0x0dcb }
            c.e.a.b.h.b.v r0 = r0.t()     // Catch:{ SQLiteException -> 0x0dcb }
            java.lang.String r4 = "Failed to insert filter results (got -1). appId"
            java.lang.Object r5 = c.e.a.b.h.b.C0957t.a((java.lang.String) r67)     // Catch:{ SQLiteException -> 0x0dcb }
            r0.a(r4, r5)     // Catch:{ SQLiteException -> 0x0dcb }
            goto L_0x0de0
        L_0x0dcb:
            r0 = move-exception
            goto L_0x0dcf
        L_0x0dcd:
            r0 = move-exception
            r9 = 0
        L_0x0dcf:
            c.e.a.b.h.b.t r3 = r3.e()
            c.e.a.b.h.b.v r3 = r3.t()
            java.lang.Object r4 = c.e.a.b.h.b.C0957t.a((java.lang.String) r67)
            java.lang.String r5 = "Error storing filter results. appId"
            r3.a(r5, r4, r0)
        L_0x0de0:
            r3 = r68
            r5 = r2
            r43 = r13
            r11 = r26
            r2 = r66
            r26 = r6
            goto L_0x0b59
        L_0x0ded:
            r8 = r67
            r2 = r66
            goto L_0x0b59
        L_0x0df3:
            java.lang.Object[] r0 = java.util.Arrays.copyOf(r1, r5)
            c.e.a.b.g.f.H[] r0 = (c.e.a.b.g.f.H[]) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.lc.a(java.lang.String, c.e.a.b.g.f.ba[], c.e.a.b.g.f.N[]):c.e.a.b.g.f.H[]");
    }

    public final boolean u() {
        return false;
    }

    public final Boolean a(T t, String str, List<K> list, long j2) {
        Boolean bool;
        W w = t.f10226h;
        if (w != null) {
            Boolean a2 = a(j2, w);
            if (a2 == null) {
                return null;
            }
            if (!a2.booleanValue()) {
                return false;
            }
        }
        HashSet hashSet = new HashSet();
        for (U u : t.f10224f) {
            if (TextUtils.isEmpty(u.f10238g)) {
                e().w().a("null or empty param name in filter. event", f().a(str));
                return null;
            }
            hashSet.add(u.f10238g);
        }
        C0243b bVar = new C0243b();
        for (K next : list) {
            if (hashSet.contains(next.q())) {
                if (next.v()) {
                    bVar.put(next.q(), next.v() ? Long.valueOf(next.w()) : null);
                } else if (next.y()) {
                    bVar.put(next.q(), next.y() ? Double.valueOf(next.z()) : null);
                } else if (next.s()) {
                    bVar.put(next.q(), next.t());
                } else {
                    e().w().a("Unknown value for param. event, param", f().a(str), f().b(next.q()));
                    return null;
                }
            }
        }
        for (U u2 : t.f10224f) {
            boolean equals = Boolean.TRUE.equals(u2.f10237f);
            String str2 = u2.f10238g;
            if (TextUtils.isEmpty(str2)) {
                e().w().a("Event has empty param name. event", f().a(str));
                return null;
            }
            Object obj = bVar.get(str2);
            if (obj instanceof Long) {
                if (u2.f10236e == null) {
                    e().w().a("No number filter for long param. event, param", f().a(str), f().b(str2));
                    return null;
                }
                Boolean a3 = a(((Long) obj).longValue(), u2.f10236e);
                if (a3 == null) {
                    return null;
                }
                if ((true ^ a3.booleanValue()) ^ equals) {
                    return false;
                }
            } else if (obj instanceof Double) {
                if (u2.f10236e == null) {
                    e().w().a("No number filter for double param. event, param", f().a(str), f().b(str2));
                    return null;
                }
                Boolean a4 = a(((Double) obj).doubleValue(), u2.f10236e);
                if (a4 == null) {
                    return null;
                }
                if ((true ^ a4.booleanValue()) ^ equals) {
                    return false;
                }
            } else if (obj instanceof String) {
                Y y = u2.f10235d;
                if (y != null) {
                    bool = a((String) obj, y);
                } else if (u2.f10236e != null) {
                    String str3 = (String) obj;
                    if (Zb.a(str3)) {
                        bool = a(str3, u2.f10236e);
                    } else {
                        e().w().a("Invalid param value for number filter. event, param", f().a(str), f().b(str2));
                        return null;
                    }
                } else {
                    e().w().a("No filter for String param. event, param", f().a(str), f().b(str2));
                    return null;
                }
                if (bool == null) {
                    return null;
                }
                if ((true ^ bool.booleanValue()) ^ equals) {
                    return false;
                }
            } else if (obj == null) {
                e().B().a("Missing param for filter. event, param", f().a(str), f().b(str2));
                return false;
            } else {
                e().w().a("Unknown param type. event, param", f().a(str), f().b(str2));
                return null;
            }
        }
        return true;
    }

    public final Boolean a(X x, N n) {
        U u = x.f10279f;
        if (u == null) {
            e().w().a("Missing property filter. property", f().c(n.q()));
            return null;
        }
        boolean equals = Boolean.TRUE.equals(u.f10237f);
        if (n.v()) {
            if (u.f10236e != null) {
                return a(a(n.w(), u.f10236e), equals);
            }
            e().w().a("No number filter for long property. property", f().c(n.q()));
            return null;
        } else if (n.y()) {
            if (u.f10236e != null) {
                return a(a(n.z(), u.f10236e), equals);
            }
            e().w().a("No number filter for double property. property", f().c(n.q()));
            return null;
        } else if (!n.s()) {
            e().w().a("User property has no value, property", f().c(n.q()));
            return null;
        } else if (u.f10235d != null) {
            return a(a(n.t(), u.f10235d), equals);
        } else {
            if (u.f10236e == null) {
                e().w().a("No string or number filter defined. property", f().c(n.q()));
            } else if (Zb.a(n.t())) {
                return a(a(n.t(), u.f10236e), equals);
            } else {
                e().w().a("Invalid user property value for Numeric number filter. property, value", f().c(n.q()), n.t());
            }
            return null;
        }
    }

    public static Boolean a(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() ^ z);
    }

    public final Boolean a(String str, Y y) {
        String str2;
        ArrayList arrayList;
        r.a(y);
        if (str == null) {
            return null;
        }
        zzbl$zzb$zzb zzbl_zzb_zzb = y.f10290c;
        if (zzbl_zzb_zzb == null || zzbl_zzb_zzb == zzbl$zzb$zzb.UNKNOWN_MATCH_TYPE) {
            return null;
        }
        if (zzbl_zzb_zzb == zzbl$zzb$zzb.IN_LIST) {
            String[] strArr = y.f10293f;
            if (strArr == null || strArr.length == 0) {
                return null;
            }
        } else if (y.f10291d == null) {
            return null;
        }
        zzbl$zzb$zzb zzbl_zzb_zzb2 = y.f10290c;
        Boolean bool = y.f10292e;
        boolean z = bool != null && bool.booleanValue();
        if (z || zzbl_zzb_zzb2 == zzbl$zzb$zzb.REGEXP || zzbl_zzb_zzb2 == zzbl$zzb$zzb.IN_LIST) {
            str2 = y.f10291d;
        } else {
            str2 = y.f10291d.toUpperCase(Locale.ENGLISH);
        }
        String str3 = str2;
        String[] strArr2 = y.f10293f;
        if (strArr2 == null) {
            arrayList = null;
        } else if (z) {
            arrayList = Arrays.asList(strArr2);
        } else {
            ArrayList arrayList2 = new ArrayList();
            for (String upperCase : strArr2) {
                arrayList2.add(upperCase.toUpperCase(Locale.ENGLISH));
            }
            arrayList = arrayList2;
        }
        return a(str, zzbl_zzb_zzb2, z, str3, arrayList, zzbl_zzb_zzb2 == zzbl$zzb$zzb.REGEXP ? str3 : null);
    }

    public final Boolean a(String str, zzbl$zzb$zzb zzbl_zzb_zzb, boolean z, String str2, List<String> list, String str3) {
        if (str == null) {
            return null;
        }
        if (zzbl_zzb_zzb == zzbl$zzb$zzb.IN_LIST) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        if (!z && zzbl_zzb_zzb != zzbl$zzb$zzb.REGEXP) {
            str = str.toUpperCase(Locale.ENGLISH);
        }
        switch (mc.f10977a[zzbl_zzb_zzb.ordinal()]) {
            case 1:
                try {
                    return Boolean.valueOf(Pattern.compile(str3, z ? 0 : 66).matcher(str).matches());
                } catch (PatternSyntaxException unused) {
                    e().w().a("Invalid regular expression in REGEXP audience filter. expression", str3);
                    return null;
                }
            case 2:
                return Boolean.valueOf(str.startsWith(str2));
            case 3:
                return Boolean.valueOf(str.endsWith(str2));
            case 4:
                return Boolean.valueOf(str.contains(str2));
            case 5:
                return Boolean.valueOf(str.equals(str2));
            case 6:
                return Boolean.valueOf(list.contains(str));
            default:
                return null;
        }
    }

    public final Boolean a(long j2, W w) {
        try {
            return a(new BigDecimal(j2), w, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public final Boolean a(double d2, W w) {
        try {
            return a(new BigDecimal(d2), w, Math.ulp(d2));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public final Boolean a(String str, W w) {
        if (!Zb.a(str)) {
            return null;
        }
        try {
            return a(new BigDecimal(str), w, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:35:0x0063, code lost:
        if (r2 != null) goto L_0x0065;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.Boolean a(java.math.BigDecimal r9, c.e.a.b.g.f.W r10, double r11) {
        /*
            c.e.a.b.d.d.r.a(r10)
            com.google.android.gms.internal.measurement.zzbl$zza$zzb r0 = r10.f10251c
            r1 = 0
            if (r0 == 0) goto L_0x00ee
            com.google.android.gms.internal.measurement.zzbl$zza$zzb r2 = com.google.android.gms.internal.measurement.zzbl$zza$zzb.UNKNOWN_COMPARISON_TYPE
            if (r0 != r2) goto L_0x000e
            goto L_0x00ee
        L_0x000e:
            com.google.android.gms.internal.measurement.zzbl$zza$zzb r2 = com.google.android.gms.internal.measurement.zzbl$zza$zzb.BETWEEN
            if (r0 != r2) goto L_0x001b
            java.lang.String r0 = r10.f10254f
            if (r0 == 0) goto L_0x001a
            java.lang.String r0 = r10.f10255g
            if (r0 != 0) goto L_0x0020
        L_0x001a:
            return r1
        L_0x001b:
            java.lang.String r0 = r10.f10253e
            if (r0 != 0) goto L_0x0020
            return r1
        L_0x0020:
            com.google.android.gms.internal.measurement.zzbl$zza$zzb r0 = r10.f10251c
            com.google.android.gms.internal.measurement.zzbl$zza$zzb r2 = com.google.android.gms.internal.measurement.zzbl$zza$zzb.BETWEEN
            if (r0 != r2) goto L_0x0049
            java.lang.String r2 = r10.f10254f
            boolean r2 = c.e.a.b.h.b.Zb.a((java.lang.String) r2)
            if (r2 == 0) goto L_0x0048
            java.lang.String r2 = r10.f10255g
            boolean r2 = c.e.a.b.h.b.Zb.a((java.lang.String) r2)
            if (r2 != 0) goto L_0x0037
            goto L_0x0048
        L_0x0037:
            java.math.BigDecimal r2 = new java.math.BigDecimal     // Catch:{ NumberFormatException -> 0x0048 }
            java.lang.String r3 = r10.f10254f     // Catch:{ NumberFormatException -> 0x0048 }
            r2.<init>(r3)     // Catch:{ NumberFormatException -> 0x0048 }
            java.math.BigDecimal r3 = new java.math.BigDecimal     // Catch:{ NumberFormatException -> 0x0048 }
            java.lang.String r10 = r10.f10255g     // Catch:{ NumberFormatException -> 0x0048 }
            r3.<init>(r10)     // Catch:{ NumberFormatException -> 0x0048 }
            r10 = r2
            r2 = r1
            goto L_0x005b
        L_0x0048:
            return r1
        L_0x0049:
            java.lang.String r2 = r10.f10253e
            boolean r2 = c.e.a.b.h.b.Zb.a((java.lang.String) r2)
            if (r2 != 0) goto L_0x0052
            return r1
        L_0x0052:
            java.math.BigDecimal r2 = new java.math.BigDecimal     // Catch:{ NumberFormatException -> 0x00ee }
            java.lang.String r10 = r10.f10253e     // Catch:{ NumberFormatException -> 0x00ee }
            r2.<init>(r10)     // Catch:{ NumberFormatException -> 0x00ee }
            r10 = r1
            r3 = r10
        L_0x005b:
            com.google.android.gms.internal.measurement.zzbl$zza$zzb r4 = com.google.android.gms.internal.measurement.zzbl$zza$zzb.BETWEEN
            if (r0 != r4) goto L_0x0063
            if (r10 == 0) goto L_0x0062
            goto L_0x0065
        L_0x0062:
            return r1
        L_0x0063:
            if (r2 == 0) goto L_0x00ee
        L_0x0065:
            int[] r4 = c.e.a.b.h.b.mc.f10978b
            int r0 = r0.ordinal()
            r0 = r4[r0]
            r4 = -1
            r5 = 0
            r6 = 1
            if (r0 == r6) goto L_0x00e2
            r7 = 2
            if (r0 == r7) goto L_0x00d6
            r8 = 3
            if (r0 == r8) goto L_0x008e
            r11 = 4
            if (r0 == r11) goto L_0x007c
            goto L_0x00ee
        L_0x007c:
            int r10 = r9.compareTo(r10)
            if (r10 == r4) goto L_0x0089
            int r9 = r9.compareTo(r3)
            if (r9 == r6) goto L_0x0089
            r5 = 1
        L_0x0089:
            java.lang.Boolean r9 = java.lang.Boolean.valueOf(r5)
            return r9
        L_0x008e:
            r0 = 0
            int r10 = (r11 > r0 ? 1 : (r11 == r0 ? 0 : -1))
            if (r10 == 0) goto L_0x00ca
            java.math.BigDecimal r10 = new java.math.BigDecimal
            r10.<init>(r11)
            java.math.BigDecimal r0 = new java.math.BigDecimal
            r0.<init>(r7)
            java.math.BigDecimal r10 = r10.multiply(r0)
            java.math.BigDecimal r10 = r2.subtract(r10)
            int r10 = r9.compareTo(r10)
            if (r10 != r6) goto L_0x00c5
            java.math.BigDecimal r10 = new java.math.BigDecimal
            r10.<init>(r11)
            java.math.BigDecimal r11 = new java.math.BigDecimal
            r11.<init>(r7)
            java.math.BigDecimal r10 = r10.multiply(r11)
            java.math.BigDecimal r10 = r2.add(r10)
            int r9 = r9.compareTo(r10)
            if (r9 != r4) goto L_0x00c5
            r5 = 1
        L_0x00c5:
            java.lang.Boolean r9 = java.lang.Boolean.valueOf(r5)
            return r9
        L_0x00ca:
            int r9 = r9.compareTo(r2)
            if (r9 != 0) goto L_0x00d1
            r5 = 1
        L_0x00d1:
            java.lang.Boolean r9 = java.lang.Boolean.valueOf(r5)
            return r9
        L_0x00d6:
            int r9 = r9.compareTo(r2)
            if (r9 != r6) goto L_0x00dd
            r5 = 1
        L_0x00dd:
            java.lang.Boolean r9 = java.lang.Boolean.valueOf(r5)
            return r9
        L_0x00e2:
            int r9 = r9.compareTo(r2)
            if (r9 != r4) goto L_0x00e9
            r5 = 1
        L_0x00e9:
            java.lang.Boolean r9 = java.lang.Boolean.valueOf(r5)
            return r9
        L_0x00ee:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.lc.a(java.math.BigDecimal, c.e.a.b.g.f.W, double):java.lang.Boolean");
    }

    public static List<I> a(Map<Integer, Long> map) {
        if (map == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(map.size());
        for (Integer intValue : map.keySet()) {
            int intValue2 = intValue.intValue();
            I.a u = I.u();
            u.a(intValue2);
            u.a(map.get(Integer.valueOf(intValue2)).longValue());
            arrayList.add((I) u.o());
        }
        return arrayList;
    }

    public static boolean a(X x) {
        if (x != null) {
            Boolean bool = x.f10280g;
            if (bool != null && bool.booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public static void a(Map<Integer, Long> map, int i2, long j2) {
        Long l2 = map.get(Integer.valueOf(i2));
        long j3 = j2 / 1000;
        if (l2 == null || j3 > l2.longValue()) {
            map.put(Integer.valueOf(i2), Long.valueOf(j3));
        }
    }
}
