package cab.snapp.snappuikit.ratingbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import cab.snapp.snappuikit.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class BaseRatingBar extends LinearLayout {
    public static final String TAG = "SimpleRatingBar";

    /* renamed from: a  reason: collision with root package name */
    private int f1643a;

    /* renamed from: b  reason: collision with root package name */
    private int f1644b;
    private int c;
    protected List<PartialView> d;
    private int e;
    private float f;
    private float g;
    private float h;
    private float i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private float n;
    private float o;
    private Drawable p;
    private Drawable q;
    private a r;

    public interface a {
        void onRatingChange(BaseRatingBar baseRatingBar, float f);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public BaseRatingBar(Context context) {
        this(context, null);
    }

    public BaseRatingBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BaseRatingBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f1644b = 20;
        this.f = 0.0f;
        this.g = -1.0f;
        this.h = 1.0f;
        this.i = 0.0f;
        this.j = false;
        this.k = true;
        this.l = true;
        this.m = true;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.h.BaseRatingBar);
        float f2 = obtainStyledAttributes.getFloat(a.h.BaseRatingBar_srb_rating, 0.0f);
        this.f1643a = obtainStyledAttributes.getInt(a.h.BaseRatingBar_srb_numStars, this.f1643a);
        this.h = obtainStyledAttributes.getFloat(a.h.BaseRatingBar_srb_stepSize, this.h);
        this.f = obtainStyledAttributes.getFloat(a.h.BaseRatingBar_srb_minimumStars, this.f);
        this.f1644b = obtainStyledAttributes.getDimensionPixelSize(a.h.BaseRatingBar_srb_starPadding, this.f1644b);
        this.c = obtainStyledAttributes.getDimensionPixelSize(a.h.BaseRatingBar_srb_starWidth, 0);
        this.e = obtainStyledAttributes.getDimensionPixelSize(a.h.BaseRatingBar_srb_starHeight, 0);
        this.p = obtainStyledAttributes.hasValue(a.h.BaseRatingBar_srb_drawableEmpty) ? ContextCompat.getDrawable(context, obtainStyledAttributes.getResourceId(a.h.BaseRatingBar_srb_drawableEmpty, -1)) : null;
        this.q = obtainStyledAttributes.hasValue(a.h.BaseRatingBar_srb_drawableFilled) ? ContextCompat.getDrawable(context, obtainStyledAttributes.getResourceId(a.h.BaseRatingBar_srb_drawableFilled, -1)) : null;
        this.j = obtainStyledAttributes.getBoolean(a.h.BaseRatingBar_srb_isIndicator, this.j);
        this.k = obtainStyledAttributes.getBoolean(a.h.BaseRatingBar_srb_scrollable, this.k);
        this.l = obtainStyledAttributes.getBoolean(a.h.BaseRatingBar_srb_clickable, this.l);
        this.m = obtainStyledAttributes.getBoolean(a.h.BaseRatingBar_srb_clearRatingEnabled, this.m);
        obtainStyledAttributes.recycle();
        if (this.f1643a <= 0) {
            this.f1643a = 5;
        }
        if (this.f1644b < 0) {
            this.f1644b = 0;
        }
        if (this.p == null) {
            this.p = null;
        }
        if (this.q == null) {
            this.q = null;
        }
        float f3 = this.h;
        if (f3 > 1.0f) {
            this.h = 1.0f;
        } else if (f3 < 0.1f) {
            this.h = 0.1f;
        }
        this.f = a.a(this.f, this.f1643a, this.h);
        a();
        setRating(f2);
    }

    private void a() {
        this.d = new ArrayList();
        for (int i2 = 1; i2 <= this.f1643a; i2++) {
            int i3 = this.c;
            int i4 = this.e;
            int i5 = this.f1644b;
            Drawable drawable = this.q;
            Drawable drawable2 = this.p;
            PartialView partialView = new PartialView(getContext(), i2, i3, i4, i5);
            partialView.setFilledDrawable(drawable);
            partialView.setEmptyDrawable(drawable2);
            addView(partialView);
            this.d.add(partialView);
        }
    }

    /* access modifiers changed from: protected */
    public void a(float f2) {
        for (PartialView next : this.d) {
            int intValue = ((Integer) next.getTag()).intValue();
            double ceil = Math.ceil((double) f2);
            double d2 = (double) intValue;
            if (d2 > ceil) {
                next.setEmpty();
            } else if (d2 == ceil) {
                next.setPartialFilled(f2);
            } else {
                next.setFilled();
            }
        }
    }

    public void setNumStars(int i2) {
        if (i2 > 0) {
            this.d.clear();
            removeAllViews();
            this.f1643a = i2;
            a();
        }
    }

    public int getNumStars() {
        return this.f1643a;
    }

    public void setRating(float f2) {
        int i2 = this.f1643a;
        if (f2 > ((float) i2)) {
            f2 = (float) i2;
        }
        float f3 = this.f;
        if (f2 < f3) {
            f2 = f3;
        }
        if (this.g != f2) {
            this.g = f2;
            a aVar = this.r;
            if (aVar != null) {
                aVar.onRatingChange(this, this.g);
            }
            a(f2);
        }
    }

    public float getRating() {
        return this.g;
    }

    public void setStarWidth(int i2) {
        this.c = i2;
        for (PartialView starWidth : this.d) {
            starWidth.setStarWidth(i2);
        }
    }

    public int getStarWidth() {
        return this.c;
    }

    public void setStarHeight(int i2) {
        this.e = i2;
        for (PartialView starHeight : this.d) {
            starHeight.setStarHeight(i2);
        }
    }

    public int getStarHeight() {
        return this.e;
    }

    public void setStarPadding(int i2) {
        if (i2 >= 0) {
            this.f1644b = i2;
            for (PartialView padding : this.d) {
                int i3 = this.f1644b;
                padding.setPadding(i3, i3, i3, i3);
            }
        }
    }

    public int getStarPadding() {
        return this.f1644b;
    }

    public void setEmptyDrawableRes(int i2) {
        setEmptyDrawable(ContextCompat.getDrawable(getContext(), i2));
    }

    public void setFilledDrawableRes(int i2) {
        setFilledDrawable(ContextCompat.getDrawable(getContext(), i2));
    }

    public void setEmptyDrawable(Drawable drawable) {
        this.p = drawable;
        for (PartialView emptyDrawable : this.d) {
            emptyDrawable.setEmptyDrawable(drawable);
        }
    }

    public void setFilledDrawable(Drawable drawable) {
        this.q = drawable;
        for (PartialView filledDrawable : this.d) {
            filledDrawable.setFilledDrawable(drawable);
        }
    }

    public void setMinimumStars(float f2) {
        this.f = a.a(f2, this.f1643a, this.h);
    }

    public boolean isIndicator() {
        return this.j;
    }

    public void setIsIndicator(boolean z) {
        this.j = z;
    }

    public boolean isScrollable() {
        return this.k;
    }

    public void setScrollable(boolean z) {
        this.k = z;
    }

    public boolean isClickable() {
        return this.l;
    }

    public void setClickable(boolean z) {
        this.l = z;
    }

    public void setClearRatingEnabled(boolean z) {
        this.m = z;
    }

    public boolean isClearRatingEnabled() {
        return this.m;
    }

    public float getStepSize() {
        return this.h;
    }

    public void setStepSize(float f2) {
        this.h = f2;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (isIndicator()) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 0) {
            this.n = x;
            this.o = y;
            this.i = this.g;
        } else if (action == 1) {
            float f2 = this.n;
            float f3 = this.o;
            if (((float) (motionEvent.getEventTime() - motionEvent.getDownTime())) <= 200.0f) {
                float abs = Math.abs(f2 - motionEvent.getX());
                float abs2 = Math.abs(f3 - motionEvent.getY());
                if (abs <= 5.0f && abs2 <= 5.0f) {
                    z = true;
                    if (!z && isClickable()) {
                        Iterator<PartialView> it = this.d.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            PartialView next = it.next();
                            if (a(x, next)) {
                                float f4 = this.h;
                                float intValue = f4 == 1.0f ? (float) ((Integer) next.getTag()).intValue() : a.a(next, f4, x);
                                if (this.i != intValue || !isClearRatingEnabled()) {
                                    setRating(intValue);
                                } else {
                                    setRating(this.f);
                                }
                            }
                        }
                    } else {
                        return false;
                    }
                }
            }
            z = false;
            if (!z) {
            }
            return false;
        } else if (action == 2) {
            if (isScrollable()) {
                Iterator<PartialView> it2 = this.d.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    PartialView next2 = it2.next();
                    if (x < (((float) next2.getWidth()) / 10.0f) + (this.f * ((float) next2.getWidth()))) {
                        setRating(this.f);
                        break;
                    } else if (a(x, next2)) {
                        float a2 = a.a(next2, this.h, x);
                        if (this.g != a2) {
                            setRating(a2);
                        }
                    }
                }
            } else {
                return false;
            }
        }
        getParent().requestDisallowInterceptTouchEvent(true);
        return true;
    }

    private static boolean a(float f2, View view) {
        return f2 > ((float) view.getLeft()) && f2 < ((float) view.getRight());
    }

    public void setOnRatingChangeListener(a aVar) {
        this.r = aVar;
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.setRating(this.g);
        return savedState;
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setRating(savedState.getRating());
    }
}
