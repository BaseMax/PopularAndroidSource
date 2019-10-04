package c.c.a.e.d.p.a;

import c.c.a.c.f.a.h;
import h.f.b.f;
import h.f.b.j;

@h("singleRequest.reportAppRequest")
/* compiled from: ReportRequest.kt */
public final class c {
    @c.e.d.a.c("description")
    public final String comment;
    @c.e.d.a.c("language")
    public final String language;
    @c.e.d.a.c("package_name")
    public final String packageName;
    @c.e.d.a.c("reason")
    public final String reason;

    public c(String str, String str2, String str3, String str4) {
        j.b(str, "packageName");
        j.b(str2, "reason");
        j.b(str4, "language");
        this.packageName = str;
        this.reason = str2;
        this.comment = str3;
        this.language = str4;
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c(String str, String str2, String str3, String str4, int i2, f fVar) {
        this(str, str2, str3, (i2 & 8) != 0 ? "fa" : str4);
    }
}
