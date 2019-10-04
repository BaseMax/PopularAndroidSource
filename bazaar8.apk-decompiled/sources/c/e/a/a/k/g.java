package c.e.a.a.k;

import com.google.android.exoplayer2.Format;

/* compiled from: SubtitleDecoderFactory */
class g implements h {
    public boolean a(Format format) {
        String str = format.f12514i;
        return "text/vtt".equals(str) || "text/x-ssa".equals(str) || "application/ttml+xml".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-subrip".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/cea-608".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/cea-708".equals(str) || "application/dvbsubs".equals(str) || "application/pgs".equals(str);
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public c.e.a.a.k.f b(com.google.android.exoplayer2.Format r3) {
        /*
            r2 = this;
            java.lang.String r0 = r3.f12514i
            int r1 = r0.hashCode()
            switch(r1) {
                case -1351681404: goto L_0x0072;
                case -1248334819: goto L_0x0067;
                case -1026075066: goto L_0x005d;
                case -1004728940: goto L_0x0053;
                case 691401887: goto L_0x0049;
                case 822864842: goto L_0x003f;
                case 930165504: goto L_0x0035;
                case 1566015601: goto L_0x002b;
                case 1566016562: goto L_0x0020;
                case 1668750253: goto L_0x0016;
                case 1693976202: goto L_0x000b;
                default: goto L_0x0009;
            }
        L_0x0009:
            goto L_0x007d
        L_0x000b:
            java.lang.String r1 = "application/ttml+xml"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x007d
            r0 = 3
            goto L_0x007e
        L_0x0016:
            java.lang.String r1 = "application/x-subrip"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x007d
            r0 = 4
            goto L_0x007e
        L_0x0020:
            java.lang.String r1 = "application/cea-708"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x007d
            r0 = 8
            goto L_0x007e
        L_0x002b:
            java.lang.String r1 = "application/cea-608"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x007d
            r0 = 6
            goto L_0x007e
        L_0x0035:
            java.lang.String r1 = "application/x-mp4-cea-608"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x007d
            r0 = 7
            goto L_0x007e
        L_0x003f:
            java.lang.String r1 = "text/x-ssa"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x007d
            r0 = 1
            goto L_0x007e
        L_0x0049:
            java.lang.String r1 = "application/x-quicktime-tx3g"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x007d
            r0 = 5
            goto L_0x007e
        L_0x0053:
            java.lang.String r1 = "text/vtt"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x007d
            r0 = 0
            goto L_0x007e
        L_0x005d:
            java.lang.String r1 = "application/x-mp4-vtt"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x007d
            r0 = 2
            goto L_0x007e
        L_0x0067:
            java.lang.String r1 = "application/pgs"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x007d
            r0 = 10
            goto L_0x007e
        L_0x0072:
            java.lang.String r1 = "application/dvbsubs"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x007d
            r0 = 9
            goto L_0x007e
        L_0x007d:
            r0 = -1
        L_0x007e:
            switch(r0) {
                case 0: goto L_0x00cd;
                case 1: goto L_0x00c5;
                case 2: goto L_0x00bf;
                case 3: goto L_0x00b9;
                case 4: goto L_0x00b3;
                case 5: goto L_0x00ab;
                case 6: goto L_0x00a1;
                case 7: goto L_0x00a1;
                case 8: goto L_0x0097;
                case 9: goto L_0x008f;
                case 10: goto L_0x0089;
                default: goto L_0x0081;
            }
        L_0x0081:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "Attempted to create decoder for unsupported format"
            r3.<init>(r0)
            throw r3
        L_0x0089:
            c.e.a.a.k.c.a r3 = new c.e.a.a.k.c.a
            r3.<init>()
            return r3
        L_0x008f:
            c.e.a.a.k.b.a r0 = new c.e.a.a.k.b.a
            java.util.List<byte[]> r3 = r3.f12516k
            r0.<init>(r3)
            return r0
        L_0x0097:
            c.e.a.a.k.a.c r0 = new c.e.a.a.k.a.c
            int r1 = r3.B
            java.util.List<byte[]> r3 = r3.f12516k
            r0.<init>(r1, r3)
            return r0
        L_0x00a1:
            c.e.a.a.k.a.a r0 = new c.e.a.a.k.a.a
            java.lang.String r1 = r3.f12514i
            int r3 = r3.B
            r0.<init>(r1, r3)
            return r0
        L_0x00ab:
            c.e.a.a.k.g.a r0 = new c.e.a.a.k.g.a
            java.util.List<byte[]> r3 = r3.f12516k
            r0.<init>(r3)
            return r0
        L_0x00b3:
            c.e.a.a.k.e.a r3 = new c.e.a.a.k.e.a
            r3.<init>()
            return r3
        L_0x00b9:
            c.e.a.a.k.f.a r3 = new c.e.a.a.k.f.a
            r3.<init>()
            return r3
        L_0x00bf:
            c.e.a.a.k.h.b r3 = new c.e.a.a.k.h.b
            r3.<init>()
            return r3
        L_0x00c5:
            c.e.a.a.k.d.a r0 = new c.e.a.a.k.d.a
            java.util.List<byte[]> r3 = r3.f12516k
            r0.<init>(r3)
            return r0
        L_0x00cd:
            c.e.a.a.k.h.h r3 = new c.e.a.a.k.h.h
            r3.<init>()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.k.g.b(com.google.android.exoplayer2.Format):c.e.a.a.k.f");
    }
}
