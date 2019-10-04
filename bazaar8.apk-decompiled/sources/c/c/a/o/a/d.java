package c.c.a.o.a;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import b.i.b.a;
import c.c.a.d.b.i;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.page.CommonItemType;
import com.farsitel.bazaar.common.model.page.PageItemType;
import h.f.b.f;
import h.f.b.j;

/* compiled from: PageItemDecoration.kt */
public final class d extends RecyclerView.h {

    /* renamed from: a  reason: collision with root package name */
    public final Paint f7123a;

    /* renamed from: b  reason: collision with root package name */
    public final int f7124b;

    /* renamed from: c  reason: collision with root package name */
    public final int f7125c;

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ d(Context context, int i2, int i3, int i4, int i5, f fVar) {
        this(context, (i5 & 2) != 0 ? R.color.c_list_divider : i2, (i5 & 4) != 0 ? 1 : i3, (i5 & 8) != 0 ? 16 : i4);
    }

    public void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.t tVar) {
        j.b(rect, "outRect");
        j.b(view, "view");
        j.b(recyclerView, "parent");
        j.b(tVar, "state");
        int a2 = tVar.a();
        int f2 = recyclerView.f(view);
        if (f2 >= 0) {
            RecyclerView.a adapter = recyclerView.getAdapter();
            if (adapter != null) {
                if (a(adapter.b(f2), f2, a2)) {
                    rect.setEmpty();
                } else {
                    rect.set(0, 0, 0, this.f7124b);
                }
                return;
            }
            j.a();
            throw null;
        }
    }

    public d(Context context, int i2, int i3, int i4) {
        int i5;
        this.f7123a = new Paint();
        this.f7124b = i.a(i3);
        this.f7125c = i.a(i4);
        this.f7123a.setStyle(Paint.Style.FILL);
        Paint paint = this.f7123a;
        if (context != null) {
            i5 = a.a(context, i2);
        } else {
            i5 = Color.rgb(240, 240, 240);
        }
        paint.setColor(i5);
    }

    public void a(Canvas canvas, RecyclerView recyclerView, RecyclerView.t tVar) {
        j.b(canvas, "c");
        j.b(recyclerView, "parent");
        j.b(tVar, "state");
        RecyclerView.a adapter = recyclerView.getAdapter();
        int i2 = 0;
        int a2 = adapter != null ? adapter.a() : 0;
        while (i2 < a2) {
            View childAt = recyclerView.getChildAt(i2);
            int f2 = recyclerView.f(childAt);
            if (f2 >= 0) {
                RecyclerView.a adapter2 = recyclerView.getAdapter();
                if (adapter2 != null) {
                    if (!a(adapter2.b(f2), f2, a2)) {
                        j.a((Object) childAt, "view");
                        canvas.drawRect(((float) childAt.getLeft()) + ((float) this.f7125c), (float) childAt.getBottom(), ((float) childAt.getRight()) - ((float) this.f7125c), (float) (childAt.getBottom() + this.f7124b), this.f7123a);
                    }
                    i2++;
                } else {
                    j.a();
                    throw null;
                }
            } else {
                return;
            }
        }
    }

    public final boolean a(int i2, int i3, int i4) {
        return i2 == CommonItemType.VITRIN_HAMI_INLINE.getValue() || i2 == PageItemType.LIST_HAMI_APP.ordinal() || i2 == CommonItemType.VITRIN_HAMI_APP.getValue() || i2 == PageItemType.LIST_HAMI_INLINE.ordinal() || i2 == PageItemType.LIST_VIDEO.ordinal() || i2 == PageItemType.LIST_APP.ordinal() || i2 == CommonItemType.LIST_EPISODE.getValue() || i2 == PageItemType.LIST_SERIAL.ordinal() || i2 == CommonItemType.EDITOR_CHOICE_HEADER.getValue() || i3 == i4 - 1;
    }
}
