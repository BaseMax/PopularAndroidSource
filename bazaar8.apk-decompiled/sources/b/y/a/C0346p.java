package b.y.a;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: b.y.a.p  reason: case insensitive filesystem */
/* compiled from: DividerItemDecoration */
public class C0346p extends RecyclerView.h {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f3522a = {16843284};

    /* renamed from: b  reason: collision with root package name */
    public Drawable f3523b;

    /* renamed from: c  reason: collision with root package name */
    public int f3524c;

    /* renamed from: d  reason: collision with root package name */
    public final Rect f3525d = new Rect();

    public C0346p(Context context, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f3522a);
        this.f3523b = obtainStyledAttributes.getDrawable(0);
        if (this.f3523b == null) {
            Log.w("DividerItem", "@android:attr/listDivider was not set in the theme used for this DividerItemDecoration. Please set that attribute all call setDrawable()");
        }
        obtainStyledAttributes.recycle();
        a(i2);
    }

    public void a(int i2) {
        if (i2 == 0 || i2 == 1) {
            this.f3524c = i2;
            return;
        }
        throw new IllegalArgumentException("Invalid orientation. It should be either HORIZONTAL or VERTICAL");
    }

    public final void c(Canvas canvas, RecyclerView recyclerView) {
        int i2;
        int i3;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i3 = recyclerView.getPaddingTop();
            i2 = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            canvas.clipRect(recyclerView.getPaddingLeft(), i3, recyclerView.getWidth() - recyclerView.getPaddingRight(), i2);
        } else {
            i2 = recyclerView.getHeight();
            i3 = 0;
        }
        int childCount = recyclerView.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = recyclerView.getChildAt(i4);
            recyclerView.getLayoutManager().b(childAt, this.f3525d);
            int round = this.f3525d.right + Math.round(childAt.getTranslationX());
            this.f3523b.setBounds(round - this.f3523b.getIntrinsicWidth(), i3, round, i2);
            this.f3523b.draw(canvas);
        }
        canvas.restore();
    }

    public final void d(Canvas canvas, RecyclerView recyclerView) {
        int i2;
        int i3;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i3 = recyclerView.getPaddingLeft();
            i2 = recyclerView.getWidth() - recyclerView.getPaddingRight();
            canvas.clipRect(i3, recyclerView.getPaddingTop(), i2, recyclerView.getHeight() - recyclerView.getPaddingBottom());
        } else {
            i2 = recyclerView.getWidth();
            i3 = 0;
        }
        int childCount = recyclerView.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = recyclerView.getChildAt(i4);
            recyclerView.a(childAt, this.f3525d);
            int round = this.f3525d.bottom + Math.round(childAt.getTranslationY());
            this.f3523b.setBounds(i3, round - this.f3523b.getIntrinsicHeight(), i2, round);
            this.f3523b.draw(canvas);
        }
        canvas.restore();
    }

    public void a(Canvas canvas, RecyclerView recyclerView, RecyclerView.t tVar) {
        if (recyclerView.getLayoutManager() != null && this.f3523b != null) {
            if (this.f3524c == 1) {
                d(canvas, recyclerView);
            } else {
                c(canvas, recyclerView);
            }
        }
    }

    public void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.t tVar) {
        Drawable drawable = this.f3523b;
        if (drawable == null) {
            rect.set(0, 0, 0, 0);
            return;
        }
        if (this.f3524c == 1) {
            rect.set(0, 0, 0, drawable.getIntrinsicHeight());
        } else {
            rect.set(0, 0, drawable.getIntrinsicWidth(), 0);
        }
    }
}
