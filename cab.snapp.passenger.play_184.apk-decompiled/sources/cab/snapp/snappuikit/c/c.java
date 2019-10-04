package cab.snapp.snappuikit.c;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

public final class c extends RecyclerView.ItemDecoration {

    /* renamed from: a  reason: collision with root package name */
    private int f1631a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f1632b;
    private boolean c;

    public c(int i) {
        this(i, false, false);
    }

    public c(int i, boolean z, boolean z2) {
        this.f1631a = i;
        this.f1632b = z;
        this.c = z2;
    }

    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        super.getItemOffsets(rect, view, recyclerView, state);
        if (this.f1631a > 0) {
            if ((this.f1632b && recyclerView.getChildLayoutPosition(view) <= 0) || recyclerView.getChildLayoutPosition(view) > 0) {
                if (a(recyclerView) == 1) {
                    rect.top = this.f1631a;
                } else {
                    rect.left = this.f1631a;
                }
            }
            if (this.c && recyclerView.getChildAdapterPosition(view) == recyclerView.getAdapter().getItemCount() - 1) {
                if (a(recyclerView) == 1) {
                    rect.bottom = this.f1631a;
                    return;
                }
                rect.right = this.f1631a;
            }
        }
    }

    private static int a(RecyclerView recyclerView) {
        if (recyclerView.getLayoutManager() instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) recyclerView.getLayoutManager()).getOrientation();
        }
        throw new IllegalStateException("SpacingItemDecoration can only be used with a LinearLayoutManager.");
    }
}
