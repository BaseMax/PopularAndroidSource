package c.c.a.n.s.h;

import android.text.TextUtils;
import c.c.a.n.B.b;
import h.f.b.j;

/* compiled from: PaymentWebClient.kt */
public final class a extends b {

    /* renamed from: b  reason: collision with root package name */
    public final String f6920b;

    /* renamed from: c  reason: collision with root package name */
    public final b f6921c;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public a(String str, b bVar) {
        super(bVar);
        j.b(str, "finishUrl");
        j.b(bVar, "paymentWebClientCallback");
        this.f6920b = str;
        this.f6921c = bVar;
    }

    public boolean a(String str) {
        j.b(str, "url");
        if (!TextUtils.equals(this.f6920b, str)) {
            return super.a(str);
        }
        this.f6921c.b();
        return true;
    }
}
