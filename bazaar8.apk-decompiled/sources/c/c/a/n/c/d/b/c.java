package c.c.a.n.c.d.b;

import android.content.Context;
import android.widget.TextView;
import c.c.a.d.b.d;
import c.c.a.f.La;
import c.c.a.n.c.b.a;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.core.widget.loading.SpinKitView;
import com.farsitel.bazaar.ui.base.recycler.loadmore.MoreItem;
import com.google.android.material.button.MaterialButton;
import h.f.b.j;

/* compiled from: MoreViewHolder.kt */
public final class c extends n<MoreItem> {
    public final La v;
    public final a w;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public c(La la, a aVar) {
        super(la);
        j.b(la, "itemBinding");
        this.v = la;
        this.w = aVar;
    }

    /* renamed from: a */
    public void b(MoreItem moreItem) {
        j.b(moreItem, "item");
        int i2 = a.f6379a[moreItem.b().ordinal()];
        if (i2 == 1) {
            TextView textView = this.v.A;
            j.a((Object) textView, "itemBinding.errorText");
            TextView textView2 = this.v.A;
            j.a((Object) textView2, "itemBinding.errorText");
            Context context = textView2.getContext();
            j.a((Object) context, "itemBinding.errorText.context");
            textView.setText(d.b(context, moreItem.a()));
            TextView textView3 = this.v.A;
            j.a((Object) textView3, "itemBinding.errorText");
            textView3.setVisibility(0);
            SpinKitView spinKitView = this.v.B;
            j.a((Object) spinKitView, "itemBinding.loading");
            spinKitView.setVisibility(8);
            MaterialButton materialButton = this.v.C;
            j.a((Object) materialButton, "itemBinding.refresh");
            materialButton.setVisibility(0);
            this.v.C.setOnClickListener(new b(this));
        } else if (i2 == 2) {
            TextView textView4 = this.v.A;
            j.a((Object) textView4, "itemBinding.errorText");
            textView4.setVisibility(8);
            MaterialButton materialButton2 = this.v.C;
            j.a((Object) materialButton2, "itemBinding.refresh");
            materialButton2.setVisibility(8);
            SpinKitView spinKitView2 = this.v.B;
            j.a((Object) spinKitView2, "itemBinding.loading");
            spinKitView2.setVisibility(0);
        }
    }
}
