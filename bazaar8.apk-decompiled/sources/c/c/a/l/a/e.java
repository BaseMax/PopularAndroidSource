package c.c.a.l.a;

import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import h.f.b.j;
import java.util.List;

/* compiled from: TrackMapper.kt */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final DefaultTrackSelector f6094a;

    public e(DefaultTrackSelector defaultTrackSelector) {
        j.b(defaultTrackSelector, "trackSelector");
        this.f6094a = defaultTrackSelector;
    }

    public static /* synthetic */ List a(e eVar, int i2, List list, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            list = null;
        }
        return eVar.a(i2, list);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:20:0x005f, code lost:
        if ((!h.f.b.j.a((java.lang.Object) r1.f12514i, (java.lang.Object) "text/vtt")) != false) goto L_0x0061;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.List<c.c.a.l.a.a> a(int r26, java.util.List<java.lang.String> r27) {
        /*
            r25 = this;
            r7 = r26
            r8 = r25
            r9 = r27
            com.google.android.exoplayer2.trackselection.DefaultTrackSelector r0 = r8.f6094a
            c.e.a.a.l.j$a r10 = r0.c()
            if (r10 == 0) goto L_0x0117
            java.lang.String r0 = "trackSelector.currentMap…nfo ?: return emptyList()"
            h.f.b.j.a((java.lang.Object) r10, (java.lang.String) r0)
            android.util.SparseArray r11 = new android.util.SparseArray
            r0 = 5
            r11.<init>(r0)
            int r12 = r10.a()
            r0 = 0
            r14 = 0
        L_0x001f:
            if (r14 >= r12) goto L_0x0101
            int r1 = r10.a(r14)
            if (r7 == r1) goto L_0x002b
        L_0x0027:
            r16 = 0
            goto L_0x00fd
        L_0x002b:
            com.google.android.exoplayer2.source.TrackGroupArray r15 = r10.b(r14)
            int r6 = r15.f12699b
            r5 = 0
        L_0x0032:
            if (r5 >= r6) goto L_0x0027
            com.google.android.exoplayer2.source.TrackGroup r4 = r15.a((int) r5)
            int r3 = r4.f12695a
            r2 = 0
        L_0x003b:
            if (r2 >= r3) goto L_0x00f3
            com.google.android.exoplayer2.Format r1 = r4.a((int) r2)
            r13 = 2
            if (r7 != r13) goto L_0x004e
            int r13 = r1.o
            r17 = r3
            r3 = -1
            if (r13 != r3) goto L_0x0050
            r18 = r4
            goto L_0x0061
        L_0x004e:
            r17 = r3
        L_0x0050:
            r3 = 3
            r13 = 1
            if (r7 != r3) goto L_0x006b
            java.lang.String r3 = r1.f12514i
            r18 = r4
            java.lang.String r4 = "text/vtt"
            boolean r3 = h.f.b.j.a((java.lang.Object) r3, (java.lang.Object) r4)
            r3 = r3 ^ r13
            if (r3 == 0) goto L_0x006d
        L_0x0061:
            r22 = r2
            r23 = r5
            r24 = r6
            r16 = 0
            goto L_0x00e7
        L_0x006b:
            r18 = r4
        L_0x006d:
            if (r9 == 0) goto L_0x0074
            int r3 = r27.size()
            goto L_0x0075
        L_0x0074:
            r3 = 0
        L_0x0075:
            r4 = 0
            if (r0 >= r3) goto L_0x0087
            if (r9 == 0) goto L_0x0087
            int r3 = r0 + 1
            java.lang.Object r0 = r9.get(r0)
            java.lang.String r0 = (java.lang.String) r0
            r19 = r0
            r20 = r3
            goto L_0x008b
        L_0x0087:
            r20 = r0
            r19 = r4
        L_0x008b:
            c.c.a.l.a.a r4 = new c.c.a.l.a.a
            com.google.android.exoplayer2.trackselection.DefaultTrackSelector$SelectionOverride r3 = new com.google.android.exoplayer2.trackselection.DefaultTrackSelector$SelectionOverride
            int[] r0 = new int[r13]
            r16 = 0
            r0[r16] = r2
            r3.<init>(r5, r0)
            java.lang.String r0 = "trackGroups"
            h.f.b.j.a((java.lang.Object) r15, (java.lang.String) r0)
            java.lang.String r0 = "format"
            h.f.b.j.a((java.lang.Object) r1, (java.lang.String) r0)
            r0 = r4
            r21 = r1
            r1 = r3
            r22 = r2
            r2 = r15
            r3 = r21
            r21 = r4
            r4 = r14
            r23 = r5
            r5 = r26
            r24 = r6
            r6 = r19
            r0.<init>(r1, r2, r3, r4, r5, r6)
            java.lang.String r0 = r21.g()
            int r0 = r0.hashCode()
            int r1 = r11.indexOfKey(r0)
            if (r1 < 0) goto L_0x00c8
            goto L_0x00c9
        L_0x00c8:
            r13 = 0
        L_0x00c9:
            if (r13 == 0) goto L_0x00e0
            java.lang.Object r1 = r11.get(r0)
            c.c.a.l.a.a r1 = (c.c.a.l.a.a) r1
            com.google.android.exoplayer2.Format r1 = r1.b()
            int r1 = r1.o
            com.google.android.exoplayer2.Format r2 = r21.b()
            int r2 = r2.o
            if (r1 <= r2) goto L_0x00e0
            goto L_0x00e5
        L_0x00e0:
            r1 = r21
            r11.put(r0, r1)
        L_0x00e5:
            r0 = r20
        L_0x00e7:
            int r2 = r22 + 1
            r3 = r17
            r4 = r18
            r5 = r23
            r6 = r24
            goto L_0x003b
        L_0x00f3:
            r23 = r5
            r24 = r6
            r16 = 0
            int r5 = r23 + 1
            goto L_0x0032
        L_0x00fd:
            int r14 = r14 + 1
            goto L_0x001f
        L_0x0101:
            java.util.Iterator r0 = b.i.j.j.a(r11)
            h.j.d r0 = h.j.k.a(r0)
            c.c.a.l.a.d r1 = new c.c.a.l.a.d
            r1.<init>()
            h.j.d r0 = h.j.o.a(r0, r1)
            java.util.List r0 = h.j.o.c(r0)
            return r0
        L_0x0117:
            java.util.List r0 = h.a.l.a()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.l.a.e.a(int, java.util.List):java.util.List");
    }
}
