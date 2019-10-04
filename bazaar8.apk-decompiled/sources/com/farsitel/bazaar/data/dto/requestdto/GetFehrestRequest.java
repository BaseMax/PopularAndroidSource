package com.farsitel.bazaar.data.dto.requestdto;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import c.e.d.m;
import h.f.b.j;

@h("singleRequest.getPageByPathRequest")
/* compiled from: GetFehrestRequest.kt */
public final class GetFehrestRequest {
    @c("offset")
    public final int offset;
    @c("path")
    public final String path;
    @c("referrers")
    public final m referrer;

    public GetFehrestRequest(String str, int i2, m mVar) {
        j.b(str, "path");
        j.b(mVar, "referrer");
        this.path = str;
        this.offset = i2;
        this.referrer = mVar;
    }

    public final int getOffset() {
        return this.offset;
    }

    public final String getPath() {
        return this.path;
    }

    public final m getReferrer() {
        return this.referrer;
    }
}
