package com.farsitel.bazaar.ui.base.page;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import androidx.recyclerview.widget.RecyclerView;
import c.c.a.n.c.c.w;
import h.f.b.f;
import h.f.b.j;

/* compiled from: PageRecyclerView.kt */
public final class PageRecyclerView extends RecyclerView {
    public GestureDetector Ja;

    public PageRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PageRecyclerView(Context context, AttributeSet attributeSet, int i2, int i3, f fVar) {
        this(context, attributeSet, (i3 & 4) != 0 ? 0 : i2);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent) && this.Ja.onTouchEvent(motionEvent);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PageRecyclerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        j.b(context, "context");
        this.Ja = new GestureDetector(getContext(), new w());
    }
}
