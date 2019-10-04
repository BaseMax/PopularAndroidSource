package c.c.a.e.d.m.b.a;

import c.e.d.a.c;
import com.crashlytics.android.answers.SessionEventTransform;
import h.f.b.j;
import java.util.List;

@c.c.a.c.f.a.h("singleRequest.productFinancialDetailsRequest")
/* compiled from: GetSKUDetailsRequestDto.kt */
public final class h {
    @c("apiVersion")
    public final int apiVersion;
    @c("dealerPackageName")
    public final String dealerPackageName;
    @c("language")
    public final String language;
    @c("skus")
    public final List<String> skus;
    @c("type")
    public final String type;

    public h(String str, int i2, String str2, String str3, List<String> list) {
        j.b(str, "language");
        j.b(str2, "dealerPackageName");
        j.b(str3, SessionEventTransform.TYPE_KEY);
        this.language = str;
        this.apiVersion = i2;
        this.dealerPackageName = str2;
        this.type = str3;
        this.skus = list;
    }
}
