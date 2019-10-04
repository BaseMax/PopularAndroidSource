package c.c.a.n.c.d;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import b.b.g.Da;
import com.farsitel.bazaar.common.model.recycler.AbstractSectionRowData;
import h.f.b.j;
import kotlin.TypeCastException;

/* compiled from: ScrollableViewHolder.kt */
public final class p extends RecyclerView.n {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ScrollableViewHolder$bindData$$inlined$with$lambda$1 f6403a;

    public p(ScrollableViewHolder$bindData$$inlined$with$lambda$1 scrollableViewHolder$bindData$$inlined$with$lambda$1) {
        this.f6403a = scrollableViewHolder$bindData$$inlined$with$lambda$1;
    }

    public void a(RecyclerView recyclerView, int i2) {
        Integer num;
        j.b(recyclerView, "recyclerView");
        if (i2 == 0) {
            RecyclerView.i layoutManager = recyclerView.getLayoutManager();
            if (layoutManager != null) {
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
                int H = linearLayoutManager.H();
                View c2 = linearLayoutManager.c(H);
                AbstractSectionRowData abstractSectionRowData = (AbstractSectionRowData) this.f6403a.$item$inlined;
                int i3 = 0;
                if (Da.a(c2)) {
                    num = Integer.valueOf(this.f6403a.this$0.E - (c2 != null ? c2.getRight() : 0));
                } else {
                    num = c2 != null ? Integer.valueOf(c2.getLeft()) : null;
                }
                if (num != null) {
                    i3 = num.intValue();
                }
                abstractSectionRowData.setCurrentPositionOffset(i3 - recyclerView.getPaddingStart());
                ((AbstractSectionRowData) this.f6403a.$item$inlined).setCurrentPosition(H);
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        }
    }
}
