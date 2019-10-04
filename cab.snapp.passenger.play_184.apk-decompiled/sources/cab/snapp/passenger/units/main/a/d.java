package cab.snapp.passenger.units.main.a;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

public final class d extends RecyclerView.OnScrollListener {

    /* renamed from: a  reason: collision with root package name */
    private final float f895a = 10.0f;

    /* renamed from: b  reason: collision with root package name */
    private final BottomSheetBehavior f896b;
    private float c;
    private float d;
    /* access modifiers changed from: private */
    public View e;
    private View f;
    private b g;
    private float h;

    public d(float f2, float f3, View view, b bVar, BottomSheetBehavior bottomSheetBehavior) {
        this.d = f3;
        this.e = view;
        this.g = bVar;
        this.c = f2;
        this.f896b = bottomSheetBehavior;
    }

    public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
        super.onScrolled(recyclerView, i, i2);
        if (this.f896b.getState() != 4) {
            float f2 = this.h - ((float) i2);
            float abs = Math.abs(f2 / this.d);
            if (i2 != 0) {
                if (abs <= 1.0f) {
                    View view = this.f;
                    if (view != null) {
                        view.setAlpha(abs);
                    }
                }
                if (i2 > 0) {
                    if (this.d - 10.0f < Math.abs(f2) && Math.abs(f2) < this.d + 10.0f && this.e.getVisibility() == 8) {
                        a();
                    } else if (((LinearLayoutManager) recyclerView.getLayoutManager()).findFirstVisibleItemPosition() != 0 && this.e.getVisibility() == 8) {
                        a();
                        View view2 = this.f;
                        if (view2 != null) {
                            view2.setAlpha(1.0f);
                        }
                    }
                } else if (this.d - 10.0f < Math.abs(f2) && Math.abs(f2) < this.d + 10.0f && this.e.getY() == this.c) {
                    collapseHeader();
                } else if ((f2 == 0.0f || ((LinearLayoutManager) recyclerView.getLayoutManager()).findFirstCompletelyVisibleItemPosition() == 0) && this.e.getY() == this.c) {
                    collapseHeader();
                    View view3 = this.f;
                    if (view3 != null) {
                        view3.setAlpha(0.0f);
                    }
                    this.g.reachedTop();
                }
            }
            this.h = f2;
        }
    }

    public final void setAlphaView(View view) {
        this.f = view;
    }

    private void a() {
        this.e.setVisibility(0);
        float measuredHeight = this.c - ((float) this.e.getMeasuredHeight());
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setDuration(300);
        valueAnimator.setFloatValues(new float[]{measuredHeight, this.c});
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                d.this.b(valueAnimator);
            }
        });
        valueAnimator.start();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(ValueAnimator valueAnimator) {
        this.e.setY(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public final void collapseHeader() {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setDuration(300);
        valueAnimator.setFloatValues(new float[]{this.c, this.c - ((float) this.e.getMeasuredHeight())});
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                d.this.a(valueAnimator);
            }
        });
        valueAnimator.addListener(new Animator.AnimatorListener() {
            public final void onAnimationCancel(Animator animator) {
            }

            public final void onAnimationRepeat(Animator animator) {
            }

            public final void onAnimationStart(Animator animator) {
            }

            public final void onAnimationEnd(Animator animator) {
                d.this.e.setVisibility(8);
            }
        });
        valueAnimator.start();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        this.e.setY(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public final void hideHeader() {
        this.e.setVisibility(8);
    }
}
