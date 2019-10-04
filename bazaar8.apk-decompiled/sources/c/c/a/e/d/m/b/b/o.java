package c.c.a.e.d.m.b.b;

import c.c.a.e.d.m.f;
import c.c.a.e.j.b;
import c.e.d.a.c;
import com.crashlytics.android.core.MetaDataStore;
import h.f.b.j;

/* compiled from: GetPurchasesResponseDto.kt */
public final class o {
    @c("isConsumed")
    public final boolean isConsumed;
    @c("paymentData")
    public final String paymentData;
    @c("sign")
    public final String sign;
    @c("type")
    public final String type;

    public final f a(String str) {
        j.b(str, MetaDataStore.KEY_USER_ID);
        b bVar = b.f5549b;
        c.c.a.e.d.m.c cVar = (c.c.a.e.d.m.c) bVar.a().a(this.paymentData, new n().b());
        String str2 = str;
        f fVar = new f(cVar.e(), str2, cVar.d(), cVar.c(), cVar.a(), cVar.b(), this.type, this.paymentData, this.sign, this.isConsumed);
        return fVar;
    }
}
