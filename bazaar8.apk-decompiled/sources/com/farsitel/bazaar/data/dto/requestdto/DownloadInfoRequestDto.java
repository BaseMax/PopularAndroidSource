package com.farsitel.bazaar.data.dto.requestdto;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import c.e.d.m;
import h.f.b.j;

@h("singleRequest.appDownloadInfoRequest")
/* compiled from: DownloadInfoRequestDto.kt */
public final class DownloadInfoRequestDto {
    @c("packageName")
    public final String packageName;
    @c("referrers")
    public final m referrers;

    public DownloadInfoRequestDto(String str, m mVar) {
        j.b(str, "packageName");
        j.b(mVar, "referrers");
        this.packageName = str;
        this.referrers = mVar;
    }

    public static /* synthetic */ DownloadInfoRequestDto copy$default(DownloadInfoRequestDto downloadInfoRequestDto, String str, m mVar, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = downloadInfoRequestDto.packageName;
        }
        if ((i2 & 2) != 0) {
            mVar = downloadInfoRequestDto.referrers;
        }
        return downloadInfoRequestDto.copy(str, mVar);
    }

    public final String component1() {
        return this.packageName;
    }

    public final m component2() {
        return this.referrers;
    }

    public final DownloadInfoRequestDto copy(String str, m mVar) {
        j.b(str, "packageName");
        j.b(mVar, "referrers");
        return new DownloadInfoRequestDto(str, mVar);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.referrers, (java.lang.Object) r3.referrers) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.dto.requestdto.DownloadInfoRequestDto
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.data.dto.requestdto.DownloadInfoRequestDto r3 = (com.farsitel.bazaar.data.dto.requestdto.DownloadInfoRequestDto) r3
            java.lang.String r0 = r2.packageName
            java.lang.String r1 = r3.packageName
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            c.e.d.m r0 = r2.referrers
            c.e.d.m r3 = r3.referrers
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x001d
            goto L_0x001f
        L_0x001d:
            r3 = 0
            return r3
        L_0x001f:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.dto.requestdto.DownloadInfoRequestDto.equals(java.lang.Object):boolean");
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final m getReferrers() {
        return this.referrers;
    }

    public int hashCode() {
        String str = this.packageName;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        m mVar = this.referrers;
        if (mVar != null) {
            i2 = mVar.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "DownloadInfoRequestDto(packageName=" + this.packageName + ", referrers=" + this.referrers + ")";
    }
}
