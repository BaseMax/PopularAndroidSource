package com.farsitel.bazaar.widget;

import android.animation.LayoutTransition;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import h.f.b.f;
import h.f.b.j;
import kotlin.TypeCastException;

/* compiled from: ExpandableTextView.kt */
public final class ExpandableTextView extends LinearLayout implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public AppCompatTextView f12380a;

    /* renamed from: b  reason: collision with root package name */
    public View f12381b;

    /* renamed from: c  reason: collision with root package name */
    public int f12382c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f12383d;

    public ExpandableTextView(Context context) {
        this(context, null, 0, 6, null);
    }

    public ExpandableTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ExpandableTextView(Context context, AttributeSet attributeSet, int i2, int i3, f fVar) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i2);
    }

    public final void a() {
        setOnClickListener(this);
        View childAt = getChildAt(0);
        if (childAt != null) {
            this.f12380a = (AppCompatTextView) childAt;
            View childAt2 = getChildAt(1);
            j.a((Object) childAt2, "getChildAt(1)");
            this.f12381b = childAt2;
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type androidx.appcompat.widget.AppCompatTextView");
    }

    public final void b(View view) {
        if (view != null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, View.ROTATION, new float[]{270.0f, 90.0f});
            j.a((Object) ofFloat, "rotate");
            ofFloat.setDuration(500);
            ofFloat.start();
        }
    }

    public void onClick(View view) {
        int i2;
        j.b(view, "view");
        this.f12383d = !this.f12383d;
        AppCompatTextView appCompatTextView = this.f12380a;
        if (appCompatTextView != null) {
            if (this.f12383d) {
                i2 = Integer.MAX_VALUE;
            } else {
                i2 = this.f12382c;
            }
            appCompatTextView.setMaxLines(i2);
            if (this.f12383d) {
                View view2 = this.f12381b;
                if (view2 != null) {
                    a(view2);
                } else {
                    j.c("toggleView");
                    throw null;
                }
            } else {
                View view3 = this.f12381b;
                if (view3 != null) {
                    b(view3);
                } else {
                    j.c("toggleView");
                    throw null;
                }
            }
        } else {
            j.c("textView");
            throw null;
        }
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        a();
    }

    public void onMeasure(int i2, int i3) {
        if (getVisibility() == 8) {
            super.onMeasure(i2, i3);
            return;
        }
        View view = this.f12381b;
        if (view != null) {
            view.setVisibility(4);
            AppCompatTextView appCompatTextView = this.f12380a;
            if (appCompatTextView != null) {
                appCompatTextView.setMaxLines(Integer.MAX_VALUE);
                super.onMeasure(i2, i3);
                AppCompatTextView appCompatTextView2 = this.f12380a;
                if (appCompatTextView2 != null) {
                    int lineCount = appCompatTextView2.getLineCount();
                    int i4 = this.f12382c;
                    if (lineCount > i4) {
                        if (this.f12383d) {
                            AppCompatTextView appCompatTextView3 = this.f12380a;
                            if (appCompatTextView3 != null) {
                                appCompatTextView3.setMaxLines(i4);
                            } else {
                                j.c("textView");
                                throw null;
                            }
                        }
                        View view2 = this.f12381b;
                        if (view2 != null) {
                            view2.setVisibility(0);
                            super.onMeasure(i2, i3);
                            return;
                        }
                        j.c("toggleView");
                        throw null;
                    }
                    return;
                }
                j.c("textView");
                throw null;
            }
            j.c("textView");
            throw null;
        }
        j.c("toggleView");
        throw null;
    }

    public void setOrientation(int i2) {
        if (i2 != 0) {
            super.setOrientation(i2);
            return;
        }
        throw new IllegalArgumentException("ExpandableTextView only supports Vertical Orientation.");
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ExpandableTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet);
        j.b(context, "context");
        this.f12382c = 3;
        this.f12383d = true;
        setOrientation(1);
        setLayoutTransition(new LayoutTransition());
    }

    public final void a(View view) {
        if (view != null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, View.ROTATION, new float[]{90.0f, 270.0f});
            j.a((Object) ofFloat, "rotate");
            ofFloat.setDuration(500);
            ofFloat.start();
        }
    }
}
