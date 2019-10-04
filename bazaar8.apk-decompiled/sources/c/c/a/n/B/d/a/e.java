package c.c.a.n.b.d.a;

import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.ViewDataBinding;
import c.c.a.d.g.a.i;
import c.c.a.f.C0461sb;
import com.farsitel.bazaar.common.model.appdetail.AppScreenshotItem;
import h.f.b.j;

/* compiled from: ScreenshotVideoItemViewHolder.kt */
public final class e extends d {
    public final ViewDataBinding v;
    public final a w;

    /* compiled from: ScreenshotVideoItemViewHolder.kt */
    public interface a {
        void a(AppScreenshotItem appScreenshotItem);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public e(ViewDataBinding viewDataBinding, a aVar) {
        super(viewDataBinding);
        j.b(viewDataBinding, "viewDataBinding");
        this.v = viewDataBinding;
        this.w = aVar;
    }

    public void C() {
        ViewDataBinding viewDataBinding = this.v;
        if (viewDataBinding instanceof C0461sb) {
            i iVar = i.f4812a;
            AppCompatImageView appCompatImageView = ((C0461sb) viewDataBinding).C;
            j.a((Object) appCompatImageView, "viewDataBinding.ivThumbRowScreenshotVideo");
            iVar.a(appCompatImageView);
            ((C0461sb) this.v).C.setImageDrawable(null);
            super.C();
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    public void D() {
        super.D();
        this.v.a(13, (Object) null);
    }

    /* renamed from: a */
    public void b(AppScreenshotItem appScreenshotItem) {
        j.b(appScreenshotItem, "item");
        super.b(appScreenshotItem);
        this.v.a(13, (Object) this.w);
    }
}
