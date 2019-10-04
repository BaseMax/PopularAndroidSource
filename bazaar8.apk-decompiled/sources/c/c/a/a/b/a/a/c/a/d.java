package c.c.a.a.b.a.a.c.a;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import h.f.b.j;

@h("singleRequest.sendActionLogRequest")
/* compiled from: ActionLogRequestDto.kt */
public final class d {
    @c("language")
    public final String language;
    @c("log")
    public final b log;
    @c("nonce")
    public final String nonce;

    public d(String str, String str2, b bVar) {
        j.b(str, "language");
        j.b(str2, "nonce");
        j.b(bVar, "log");
        this.language = str;
        this.nonce = str2;
        this.log = bVar;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.log, (java.lang.Object) r3.log) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof c.c.a.a.b.a.a.c.a.d
            if (r0 == 0) goto L_0x0027
            c.c.a.a.b.a.a.c.a.d r3 = (c.c.a.a.b.a.a.c.a.d) r3
            java.lang.String r0 = r2.language
            java.lang.String r1 = r3.language
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.nonce
            java.lang.String r1 = r3.nonce
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            c.c.a.a.b.a.a.c.a.b r0 = r2.log
            c.c.a.a.b.a.a.c.a.b r3 = r3.log
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0027
            goto L_0x0029
        L_0x0027:
            r3 = 0
            return r3
        L_0x0029:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.a.b.a.a.c.a.d.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.language;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.nonce;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        b bVar = this.log;
        if (bVar != null) {
            i2 = bVar.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "SendActionLogRequestDto(language=" + this.language + ", nonce=" + this.nonce + ", log=" + this.log + ")";
    }
}
