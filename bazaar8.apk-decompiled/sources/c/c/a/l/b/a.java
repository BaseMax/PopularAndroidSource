package c.c.a.l.b;

import com.farsitel.bazaar.data.entity.ErrorModel;
import h.f.b.f;
import h.f.b.j;

/* compiled from: VendorData.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public String f6098a;

    /* renamed from: b  reason: collision with root package name */
    public String f6099b;

    /* renamed from: c  reason: collision with root package name */
    public int f6100c;

    public a() {
        this(null, null, 0, 7, null);
    }

    public a(String str, String str2, int i2) {
        this.f6098a = str;
        this.f6099b = str2;
        this.f6100c = i2;
    }

    public final int a() {
        return this.f6100c;
    }

    public final String b() {
        return this.f6099b;
    }

    public final String c() {
        return this.f6098a;
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a(String str, String str2, int i2, int i3, f fVar) {
        this((i3 & 1) != 0 ? null : str, (i3 & 2) != 0 ? null : str2, (i3 & 4) != 0 ? 200 : i2);
    }

    public final void a(String str) {
        j.b(str, "vendorData");
        this.f6099b = null;
        this.f6098a = str;
        this.f6100c = 200;
    }

    public final void a(ErrorModel errorModel) {
        j.b(errorModel, "it");
        this.f6099b = errorModel.getMessage();
        this.f6100c = 500;
    }
}
