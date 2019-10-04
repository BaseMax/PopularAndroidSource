package c.c.a.o.a;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import h.f.b.f;
import h.f.b.j;

/* compiled from: EqualSpacingItemDecoration.kt */
public final class c extends RecyclerView.h {

    /* renamed from: a  reason: collision with root package name */
    public static final a f7120a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final int f7121b;

    /* renamed from: c  reason: collision with root package name */
    public Integer f7122c;

    /* compiled from: EqualSpacingItemDecoration.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public c(int i2, Integer num) {
        this.f7121b = i2;
        this.f7122c = num;
    }

    public void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.t tVar) {
        j.b(rect, "outRect");
        j.b(view, "view");
        j.b(recyclerView, "parent");
        j.b(tVar, "state");
        RecyclerView.w h2 = recyclerView.h(view);
        j.a((Object) h2, "parent.getChildViewHolder(view)");
        a(rect, recyclerView.getLayoutManager(), h2.g(), tVar.a());
    }

    public final void a(Rect rect, RecyclerView.i iVar, int i2, int i3) {
        if (this.f7122c == null) {
            this.f7122c = Integer.valueOf(a(iVar));
        }
        Integer num = this.f7122c;
        if (num != null && num.intValue() == 0) {
            int i4 = this.f7121b;
            rect.left = i4;
            if (i2 != i3 - 1) {
                i4 = 0;
            }
            rect.right = i4;
            int i5 = this.f7121b;
            rect.top = i5;
            rect.bottom = i5;
        } else if (num != null && num.intValue() == 1) {
            int i6 = this.f7121b;
            rect.left = i6;
            rect.right = i6;
            rect.top = i6;
            if (i2 != i3 - 1) {
                i6 = 0;
            }
            rect.bottom = i6;
        } else if (num != null && num.intValue() == 2 && (iVar instanceof GridLayoutManager)) {
            int S = ((GridLayoutManager) iVar).S();
            int i7 = i3 / S;
            int i8 = this.f7121b;
            rect.left = i8;
            if (i2 % S != S - 1) {
                i8 = 0;
            }
            rect.right = i8;
            int i9 = this.f7121b;
            rect.top = i9;
            if (i2 / S != i7 - 1) {
                i9 = 0;
            }
            rect.bottom = i9;
        }
    }

    public final int a(RecyclerView.i iVar) {
        if (iVar instanceof GridLayoutManager) {
            return 2;
        }
        if (iVar != null) {
            return iVar.a() ^ true ? 1 : 0;
        }
        j.a();
        throw null;
    }
}
