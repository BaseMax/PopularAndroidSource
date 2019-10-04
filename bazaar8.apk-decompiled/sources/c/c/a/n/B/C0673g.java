package c.c.a.n.b;

import b.r.u;
import com.farsitel.bazaar.common.model.ui.PackageChangeModel;
import com.farsitel.bazaar.ui.appdetail.AppDetailFragment;
import h.f.b.j;

/* renamed from: c.c.a.n.b.g  reason: case insensitive filesystem */
/* compiled from: AppDetailFragment.kt */
final class C0673g<T> implements u<PackageChangeModel> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ w f6248a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AppDetailFragment f6249b;

    public C0673g(w wVar, AppDetailFragment appDetailFragment) {
        this.f6248a = wVar;
        this.f6249b = appDetailFragment;
    }

    public final void a(PackageChangeModel packageChangeModel) {
        if (j.a((Object) packageChangeModel.getPackageName(), (Object) this.f6248a.t())) {
            w h2 = AppDetailFragment.h(this.f6249b);
            j.a((Object) packageChangeModel, "packageChangeModel");
            h2.a(packageChangeModel);
        }
    }
}
