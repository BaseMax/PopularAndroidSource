package c.e.a.a.g;

import com.google.android.exoplayer2.Format;

/* compiled from: MetadataDecoderFactory */
class c implements d {
    public boolean a(Format format) {
        String str = format.f12514i;
        return "application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-icy".equals(str);
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public c.e.a.a.g.b b(com.google.android.exoplayer2.Format r5) {
        /*
            r4 = this;
            java.lang.String r5 = r5.f12514i
            int r0 = r5.hashCode()
            r1 = 3
            r2 = 2
            r3 = 1
            switch(r0) {
                case -1348231605: goto L_0x002b;
                case -1248341703: goto L_0x0021;
                case 1154383568: goto L_0x0017;
                case 1652648887: goto L_0x000d;
                default: goto L_0x000c;
            }
        L_0x000c:
            goto L_0x0035
        L_0x000d:
            java.lang.String r0 = "application/x-scte35"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L_0x0035
            r5 = 2
            goto L_0x0036
        L_0x0017:
            java.lang.String r0 = "application/x-emsg"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L_0x0035
            r5 = 1
            goto L_0x0036
        L_0x0021:
            java.lang.String r0 = "application/id3"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L_0x0035
            r5 = 0
            goto L_0x0036
        L_0x002b:
            java.lang.String r0 = "application/x-icy"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L_0x0035
            r5 = 3
            goto L_0x0036
        L_0x0035:
            r5 = -1
        L_0x0036:
            if (r5 == 0) goto L_0x0058
            if (r5 == r3) goto L_0x0052
            if (r5 == r2) goto L_0x004c
            if (r5 != r1) goto L_0x0044
            c.e.a.a.g.b.a r5 = new c.e.a.a.g.b.a
            r5.<init>()
            return r5
        L_0x0044:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "Attempted to create decoder for unsupported format"
            r5.<init>(r0)
            throw r5
        L_0x004c:
            c.e.a.a.g.d.b r5 = new c.e.a.a.g.d.b
            r5.<init>()
            return r5
        L_0x0052:
            c.e.a.a.g.a.b r5 = new c.e.a.a.g.a.b
            r5.<init>()
            return r5
        L_0x0058:
            c.e.a.a.g.c.h r5 = new c.e.a.a.g.c.h
            r5.<init>()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.g.c.b(com.google.android.exoplayer2.Format):c.e.a.a.g.b");
    }
}
