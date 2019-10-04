package f.a.a.g.j;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: RecyclerViewItemDecoration */
public class a extends RecyclerView.h {

    /* renamed from: a  reason: collision with root package name */
    public Paint f14512a = new Paint();

    /* renamed from: b  reason: collision with root package name */
    public boolean f14513b;

    public a(int i2, int i3, boolean z) {
        this.f14513b = z;
        this.f14512a.setColor(i2);
        this.f14512a.setStrokeWidth((float) i3);
    }

    public void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.t tVar) {
        rect.set(0, 0, 0, (int) this.f14512a.getStrokeWidth());
    }

    public void a(Canvas canvas, RecyclerView recyclerView, RecyclerView.t tVar) {
        int strokeWidth = (int) (this.f14512a.getStrokeWidth() / 2.0f);
        int childCount = this.f14513b ? recyclerView.getChildCount() : recyclerView.getChildCount() - 1;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            canvas.drawLine((float) childAt.getLeft(), (float) (childAt.getBottom() + strokeWidth), (float) childAt.getRight(), (float) (childAt.getBottom() + strokeWidth), this.f14512a);
        }
    }
}
