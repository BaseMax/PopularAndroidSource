package c.c.a.n.b.d;

import android.view.View;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.appdetail.AppInfoItem;

/* compiled from: AppInfoViewHolder.kt */
final class c implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ d f6243a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ RecyclerData f6244b;

    public c(d dVar, RecyclerData recyclerData) {
        this.f6243a = dVar;
        this.f6244b = recyclerData;
    }

    public final void onClick(View view) {
        switch (b.f6241a[((AppInfoItem) this.f6244b).getAppState().ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                if (((AppInfoItem) this.f6244b).isInlineOnly()) {
                    this.f6243a.w.b((AppInfoItem) this.f6244b);
                    return;
                } else {
                    this.f6243a.w.d((AppInfoItem) this.f6244b);
                    return;
                }
            case 5:
                this.f6243a.w.c((AppInfoItem) this.f6244b);
                return;
            case 6:
                this.f6243a.w.a((AppInfoItem) this.f6244b);
                return;
            default:
                return;
        }
    }
}
