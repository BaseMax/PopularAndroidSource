package c.c.a.e.d.f.a;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import c.e.d.m;
import h.f.b.f;
import h.f.b.j;

@h("singleRequest.getBoughtVideosRequestV2")
/* compiled from: BoughtVideoRequest.kt */
public final class d {
    @c("language")
    public final String language;
    @c("offset")
    public final int offset;
    @c("referrers")
    public final m referrers;

    public d(int i2, String str, m mVar) {
        j.b(str, "language");
        j.b(mVar, "referrers");
        this.offset = i2;
        this.language = str;
        this.referrers = mVar;
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ d(int i2, String str, m mVar, int i3, f fVar) {
        this(i2, (i3 & 2) != 0 ? "fa" : str, mVar);
    }
}
