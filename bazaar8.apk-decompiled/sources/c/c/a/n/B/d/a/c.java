package c.c.a.n.b.d.a;

import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.ViewDataBinding;
import c.c.a.d.g.a.i;
import c.c.a.f.C0456qb;
import com.farsitel.bazaar.common.model.appdetail.AppScreenshotItem;
import h.f.b.j;

/* compiled from: ScreenshotImageItemViewHolder.kt */
public final class c extends d {
    public final ViewDataBinding v;
    public final a w;

    /* compiled from: ScreenshotImageItemViewHolder.kt */
    public interface a {
        void a(int i2);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public c(ViewDataBinding viewDataBinding, a aVar) {
        super(viewDataBinding);
        j.b(viewDataBinding, "dataBinding");
        j.b(aVar, "screenshotImageItemClickListener");
        this.v = viewDataBinding;
        this.w = aVar;
    }

    public void C() {
        ViewDataBinding viewDataBinding = this.v;
        if (viewDataBinding instanceof C0456qb) {
            i iVar = i.f4812a;
            AppCompatImageView appCompatImageView = ((C0456qb) viewDataBinding).A;
            j.a((Object) appCompatImageView, "dataBinding.ivRowScreenshotImage");
            iVar.a(appCompatImageView);
            ((C0456qb) this.v).A.setImageDrawable(null);
            super.C();
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    public void D() {
        super.D();
        this.v.a(43, (Object) null);
    }

    /* renamed from: a */
    public void b(AppScreenshotItem appScreenshotItem) {
        j.b(appScreenshotItem, "item");
        this.v.a(29, (Object) Integer.valueOf(g()));
        this.v.a(43, (Object) this.w);
    }
}
