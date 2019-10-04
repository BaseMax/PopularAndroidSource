package cab.snapp.snappuikit;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.graphics.drawable.shapes.Shape;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageButton;
import cab.snapp.c.e;
import cab.snapp.snappuikit.a;
import cab.snapp.snappuikit.fab.Label;

public class SnappFloatingActionButton extends ImageButton {
    public static final int MODE_MINI = 1;
    public static final int MODE_NORMAL = 0;
    /* access modifiers changed from: private */
    public static final Xfermode k = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
    private float A;
    private float B;
    private boolean C;
    private RectF D;
    private Paint E;
    private Paint F;
    private boolean G;
    private long H;
    private float I;
    private long J;
    private double K;
    private boolean L;
    private int M;
    private float N;
    private float O;
    private float P;
    private int Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private int U;
    /* access modifiers changed from: private */
    public boolean V;

    /* renamed from: a  reason: collision with root package name */
    int f1566a;

    /* renamed from: b  reason: collision with root package name */
    boolean f1567b;
    int c;
    int d;
    int e;
    int f;
    /* access modifiers changed from: package-private */
    public int g;
    int h;
    int i;
    GestureDetector j;
    private int l;
    private Drawable m;
    private int n;
    private Animation o;
    private Animation p;
    private String q;
    /* access modifiers changed from: private */
    public View.OnClickListener r;
    private Drawable s;
    private boolean t;
    private boolean u;
    /* access modifiers changed from: private */
    public boolean v;
    /* access modifiers changed from: private */
    public int w;
    private int x;
    private int y;
    private boolean z;

    static class ProgressSavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<ProgressSavedState> CREATOR = new Parcelable.Creator<ProgressSavedState>() {
            public final ProgressSavedState createFromParcel(Parcel parcel) {
                return new ProgressSavedState(parcel, (byte) 0);
            }

            public final ProgressSavedState[] newArray(int i) {
                return new ProgressSavedState[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        float f1572a;

        /* renamed from: b  reason: collision with root package name */
        float f1573b;
        float c;
        int d;
        int e;
        int f;
        int g;
        boolean h;
        boolean i;
        boolean j;
        boolean k;
        boolean l;
        boolean m;
        boolean n;

        /* synthetic */ ProgressSavedState(Parcel parcel, byte b2) {
            this(parcel);
        }

        ProgressSavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private ProgressSavedState(Parcel parcel) {
            super(parcel);
            this.f1572a = parcel.readFloat();
            this.f1573b = parcel.readFloat();
            boolean z = true;
            this.h = parcel.readInt() != 0;
            this.c = parcel.readFloat();
            this.d = parcel.readInt();
            this.e = parcel.readInt();
            this.f = parcel.readInt();
            this.g = parcel.readInt();
            this.i = parcel.readInt() != 0;
            this.j = parcel.readInt() != 0;
            this.k = parcel.readInt() != 0;
            this.l = parcel.readInt() != 0;
            this.m = parcel.readInt() != 0;
            this.n = parcel.readInt() == 0 ? false : z;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeFloat(this.f1572a);
            parcel.writeFloat(this.f1573b);
            parcel.writeInt(this.h ? 1 : 0);
            parcel.writeFloat(this.c);
            parcel.writeInt(this.d);
            parcel.writeInt(this.e);
            parcel.writeInt(this.f);
            parcel.writeInt(this.g);
            parcel.writeInt(this.i ? 1 : 0);
            parcel.writeInt(this.j ? 1 : 0);
            parcel.writeInt(this.k ? 1 : 0);
            parcel.writeInt(this.l ? 1 : 0);
            parcel.writeInt(this.m ? 1 : 0);
            parcel.writeInt(this.n ? 1 : 0);
        }
    }

    class a extends ShapeDrawable {

        /* renamed from: b  reason: collision with root package name */
        private int f1575b;
        private int c;

        /* synthetic */ a(SnappFloatingActionButton snappFloatingActionButton, Shape shape, byte b2) {
            this(shape);
        }

        private a(Shape shape) {
            super(shape);
            int i = 0;
            this.f1575b = SnappFloatingActionButton.this.hasShadow() ? SnappFloatingActionButton.this.d + Math.abs(SnappFloatingActionButton.this.e) : 0;
            this.c = SnappFloatingActionButton.this.hasShadow() ? Math.abs(SnappFloatingActionButton.this.f) + SnappFloatingActionButton.this.d : i;
            if (SnappFloatingActionButton.this.v) {
                this.f1575b += SnappFloatingActionButton.this.w;
                this.c += SnappFloatingActionButton.this.w;
            }
        }

        public final void draw(Canvas canvas) {
            setBounds(this.f1575b, this.c, SnappFloatingActionButton.this.c() - this.f1575b, SnappFloatingActionButton.this.d() - this.c);
            super.draw(canvas);
        }
    }

    class b extends Drawable {

        /* renamed from: b  reason: collision with root package name */
        private Paint f1577b;
        private Paint c;
        private float d;

        public final int getOpacity() {
            return 0;
        }

        public final void setAlpha(int i) {
        }

        public final void setColorFilter(ColorFilter colorFilter) {
        }

        /* synthetic */ b(SnappFloatingActionButton snappFloatingActionButton, byte b2) {
            this();
        }

        private b() {
            this.f1577b = new Paint(1);
            this.c = new Paint(1);
            SnappFloatingActionButton.this.setLayerType(1, null);
            this.f1577b.setStyle(Paint.Style.FILL);
            this.f1577b.setColor(SnappFloatingActionButton.this.g);
            this.c.setXfermode(SnappFloatingActionButton.k);
            if (!SnappFloatingActionButton.this.isInEditMode()) {
                this.f1577b.setShadowLayer((float) SnappFloatingActionButton.this.d, (float) SnappFloatingActionButton.this.e, (float) SnappFloatingActionButton.this.f, SnappFloatingActionButton.this.c);
            }
            this.d = (float) (SnappFloatingActionButton.this.getCircleSize() / 2);
            if (SnappFloatingActionButton.this.v && SnappFloatingActionButton.this.V) {
                this.d += (float) SnappFloatingActionButton.this.w;
            }
        }

        public final void draw(Canvas canvas) {
            canvas.drawCircle(SnappFloatingActionButton.i(SnappFloatingActionButton.this), SnappFloatingActionButton.j(SnappFloatingActionButton.this), this.d, this.f1577b);
            canvas.drawCircle(SnappFloatingActionButton.i(SnappFloatingActionButton.this), SnappFloatingActionButton.j(SnappFloatingActionButton.this), this.d, this.c);
        }
    }

    public SnappFloatingActionButton(Context context) {
        this(context, null);
    }

    public SnappFloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SnappFloatingActionButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.d = (int) e.convertDpToPixel(getContext(), 4.0f);
        this.e = (int) e.convertDpToPixel(getContext(), 1.0f);
        this.f = (int) e.convertDpToPixel(getContext(), 3.0f);
        this.n = (int) e.convertDpToPixel(getContext(), 24.0f);
        this.w = (int) e.convertDpToPixel(getContext(), 6.0f);
        this.A = -1.0f;
        this.B = -1.0f;
        this.D = new RectF();
        this.E = new Paint(1);
        this.F = new Paint(1);
        this.I = 195.0f;
        this.J = 0;
        this.L = true;
        this.M = 16;
        this.U = 100;
        this.j = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() {
            public final boolean onDown(MotionEvent motionEvent) {
                Label label = (Label) SnappFloatingActionButton.this.getTag(a.f.fab_label);
                if (label != null) {
                    label.onActionDown();
                }
                SnappFloatingActionButton.this.onActionDown();
                return super.onDown(motionEvent);
            }

            public final boolean onSingleTapUp(MotionEvent motionEvent) {
                Label label = (Label) SnappFloatingActionButton.this.getTag(a.f.fab_label);
                if (label != null) {
                    label.onActionUp();
                }
                SnappFloatingActionButton.this.onActionUp();
                return super.onSingleTapUp(motionEvent);
            }
        });
        a(context, attributeSet, i2);
    }

    public SnappFloatingActionButton(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.d = (int) e.convertDpToPixel(getContext(), 4.0f);
        this.e = (int) e.convertDpToPixel(getContext(), 1.0f);
        this.f = (int) e.convertDpToPixel(getContext(), 3.0f);
        this.n = (int) e.convertDpToPixel(getContext(), 24.0f);
        this.w = (int) e.convertDpToPixel(getContext(), 6.0f);
        this.A = -1.0f;
        this.B = -1.0f;
        this.D = new RectF();
        this.E = new Paint(1);
        this.F = new Paint(1);
        this.I = 195.0f;
        this.J = 0;
        this.L = true;
        this.M = 16;
        this.U = 100;
        this.j = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() {
            public final boolean onDown(MotionEvent motionEvent) {
                Label label = (Label) SnappFloatingActionButton.this.getTag(a.f.fab_label);
                if (label != null) {
                    label.onActionDown();
                }
                SnappFloatingActionButton.this.onActionDown();
                return super.onDown(motionEvent);
            }

            public final boolean onSingleTapUp(MotionEvent motionEvent) {
                Label label = (Label) SnappFloatingActionButton.this.getTag(a.f.fab_label);
                if (label != null) {
                    label.onActionUp();
                }
                SnappFloatingActionButton.this.onActionUp();
                return super.onSingleTapUp(motionEvent);
            }
        });
        a(context, attributeSet, i2);
    }

    public View.OnClickListener getOnClickListener() {
        return this.r;
    }

    public int getColorNormal() {
        return this.g;
    }

    public int getColorPressed() {
        return this.h;
    }

    public int getColorDisabled() {
        return this.l;
    }

    public boolean hasShadow() {
        return !this.t && this.f1567b;
    }

    public int getColorRipple() {
        return this.i;
    }

    public int getShadowRadius() {
        return this.d;
    }

    public int getShadowXOffset() {
        return this.e;
    }

    public int getShadowYOffset() {
        return this.f;
    }

    public int getShadowColor() {
        return this.c;
    }

    public boolean isHidden() {
        return getVisibility() == 4;
    }

    public String getLabelText() {
        return this.q;
    }

    public int getLabelVisibility() {
        Label labelView = getLabelView();
        if (labelView != null) {
            return labelView.getVisibility();
        }
        return -1;
    }

    public synchronized int getMax() {
        return this.U;
    }

    public synchronized int getProgress() {
        if (this.G) {
            return 0;
        }
        return this.Q;
    }

    public synchronized void hideProgress() {
        this.v = false;
        this.z = true;
        a();
    }

    public synchronized boolean isProgressBackgroundShown() {
        return this.V;
    }

    public void setButtonMode(int i2) {
        if (i2 != 0 && i2 != 1) {
            throw new IllegalArgumentException("Use @FabSize constants only!");
        } else if (this.f1566a != i2) {
            this.f1566a = i2;
            a();
        }
    }

    public void setColorNormal(int i2) {
        if (this.g != i2) {
            this.g = i2;
            a();
        }
    }

    public void setColorNormalResId(int i2) {
        setColorNormal(getResources().getColor(i2));
    }

    public int getButtonMode() {
        return this.f1566a;
    }

    public void setColorPressed(int i2) {
        if (i2 != this.h) {
            this.h = i2;
            a();
        }
    }

    public void setColorPressedResId(int i2) {
        setColorPressed(getResources().getColor(i2));
    }

    public void setColorRipple(int i2) {
        if (i2 != this.i) {
            this.i = i2;
            a();
        }
    }

    public void setColorRippleResId(int i2) {
        setColorRipple(getResources().getColor(i2));
    }

    public void setColorDisabled(int i2) {
        if (i2 != this.l) {
            this.l = i2;
            a();
        }
    }

    public void setColorDisabledResId(int i2) {
        setColorDisabled(getResources().getColor(i2));
    }

    public void setShowShadow(boolean z2) {
        if (this.f1567b != z2) {
            this.f1567b = z2;
            a();
        }
    }

    public void setShadowRadius(int i2) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i2);
        if (this.d != dimensionPixelSize) {
            this.d = dimensionPixelSize;
            requestLayout();
            a();
        }
    }

    public void setShadowRadius(float f2) {
        this.d = (int) e.convertDpToPixel(getContext(), f2);
        requestLayout();
        a();
    }

    public void setShadowXOffset(int i2) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i2);
        if (this.e != dimensionPixelSize) {
            this.e = dimensionPixelSize;
            requestLayout();
            a();
        }
    }

    public void setShadowXOffset(float f2) {
        this.e = (int) e.convertDpToPixel(getContext(), f2);
        requestLayout();
        a();
    }

    public void setShadowYOffset(int i2) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i2);
        if (this.f != dimensionPixelSize) {
            this.f = dimensionPixelSize;
            requestLayout();
            a();
        }
    }

    public void setShadowYOffset(float f2) {
        this.f = (int) e.convertDpToPixel(getContext(), f2);
        requestLayout();
        a();
    }

    public void setShadowColorResource(int i2) {
        int color = getResources().getColor(i2);
        if (this.c != color) {
            this.c = color;
            a();
        }
    }

    public void setShadowColor(int i2) {
        if (this.c != i2) {
            this.c = i2;
            a();
        }
    }

    public void setLabelText(String str) {
        this.q = str;
        Label labelView = getLabelView();
        if (labelView != null) {
            labelView.setText(str);
        }
    }

    public void setShowAnimation(Animation animation) {
        this.o = animation;
    }

    public void setHideAnimation(Animation animation) {
        this.p = animation;
    }

    public void setLabelVisibility(int i2) {
        Label labelView = getLabelView();
        if (labelView != null) {
            labelView.setVisibility(i2);
            labelView.setHandleVisibilityChanges(i2 == 0);
        }
    }

    public void setElevation(float f2) {
        if (cab.snapp.c.a.hasLollipop() && f2 > 0.0f) {
            super.setElevation(f2);
            if (!isInEditMode()) {
                this.t = true;
                this.f1567b = false;
            }
            a();
        }
    }

    public void setElevationCompat(float f2) {
        this.c = 637534208;
        float f3 = f2 / 2.0f;
        this.d = Math.round(f3);
        this.e = 0;
        if (this.f1566a == 0) {
            f3 = f2;
        }
        this.f = Math.round(f3);
        if (cab.snapp.c.a.hasLollipop()) {
            super.setElevation(f2);
            this.u = true;
            this.f1567b = false;
            a();
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams != null) {
                setLayoutParams(layoutParams);
            }
            return;
        }
        this.f1567b = true;
        a();
    }

    public synchronized void setIndeterminate(boolean z2) {
        if (!z2) {
            this.O = 0.0f;
        }
        this.v = z2;
        this.z = true;
        this.G = z2;
        this.H = SystemClock.uptimeMillis();
        g();
        a();
    }

    public synchronized void setMax(int i2) {
        this.U = i2;
    }

    public synchronized void setProgress(int i2, boolean z2) {
        if (!this.G) {
            this.Q = i2;
            this.R = z2;
            if (!this.C) {
                this.T = true;
                return;
            }
            this.v = true;
            this.z = true;
            g();
            f();
            a();
            if (i2 < 0) {
                i2 = 0;
            } else if (i2 > this.U) {
                i2 = this.U;
            }
            float f2 = (float) i2;
            if (f2 != this.P) {
                this.P = this.U > 0 ? (f2 / ((float) this.U)) * 360.0f : 0.0f;
                this.H = SystemClock.uptimeMillis();
                if (!z2) {
                    this.O = this.P;
                }
                invalidate();
            }
        }
    }

    public synchronized void setShowProgressBackground(boolean z2) {
        this.V = z2;
    }

    public void setLabelColors(int i2, int i3, int i4) {
        Label labelView = getLabelView();
        int paddingLeft = labelView.getPaddingLeft();
        int paddingTop = labelView.getPaddingTop();
        int paddingRight = labelView.getPaddingRight();
        int paddingBottom = labelView.getPaddingBottom();
        labelView.setColors(i2, i3, i4);
        labelView.updateBackground();
        labelView.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
    }

    public void setLabelTextColor(int i2) {
        getLabelView().setTextColor(i2);
    }

    public void setLabelTextColor(ColorStateList colorStateList) {
        getLabelView().setTextColor(colorStateList);
    }

    public void hideButtonInMenu(boolean z2) {
        if (!isHidden() && getVisibility() != 8) {
            hide(z2);
            Label labelView = getLabelView();
            if (labelView != null) {
                labelView.hide(z2);
            }
            getHideAnimation().setAnimationListener(new Animation.AnimationListener() {
                public final void onAnimationRepeat(Animation animation) {
                }

                public final void onAnimationStart(Animation animation) {
                }

                public final void onAnimationEnd(Animation animation) {
                    SnappFloatingActionButton.this.setVisibility(8);
                    SnappFloatingActionButton.this.getHideAnimation().setAnimationListener(null);
                }
            });
        }
    }

    public void showButtonInMenu(boolean z2) {
        if (getVisibility() != 0) {
            setVisibility(4);
            show(z2);
            Label labelView = getLabelView();
            if (labelView != null) {
                labelView.show(z2);
            }
        }
    }

    public void toggle(boolean z2) {
        if (isHidden()) {
            show(z2);
        } else {
            hide(z2);
        }
    }

    public void show(boolean z2) {
        if (isHidden()) {
            if (z2) {
                this.p.cancel();
                startAnimation(this.o);
            }
            super.setVisibility(0);
        }
    }

    public void hide(boolean z2) {
        if (!isHidden()) {
            if (z2) {
                this.o.cancel();
                startAnimation(this.p);
            }
            super.setVisibility(4);
        }
    }

    public void onActionDown() {
        Drawable drawable = this.s;
        if (drawable instanceof StateListDrawable) {
            ((StateListDrawable) drawable).setState(new int[]{16842910, 16842919});
            return;
        }
        if (cab.snapp.c.a.hasLollipop()) {
            RippleDrawable rippleDrawable = (RippleDrawable) this.s;
            rippleDrawable.setState(new int[]{16842910, 16842919});
            rippleDrawable.setHotspot((float) (getMeasuredWidth() / 2), (float) (getMeasuredHeight() / 2));
            rippleDrawable.setVisible(true, true);
        }
    }

    public void onActionUp() {
        Drawable drawable = this.s;
        if (drawable instanceof StateListDrawable) {
            ((StateListDrawable) drawable).setState(new int[]{16842910});
            return;
        }
        if (cab.snapp.c.a.hasLollipop()) {
            RippleDrawable rippleDrawable = (RippleDrawable) this.s;
            rippleDrawable.setState(new int[]{16842910});
            rippleDrawable.setHotspot((float) (getMeasuredWidth() / 2), (float) (getMeasuredHeight() / 2));
            rippleDrawable.setVisible(true, true);
        }
    }

    private void a(Context context, AttributeSet attributeSet, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.h.floatingActionButton, i2, 0);
        this.g = obtainStyledAttributes.getColor(a.h.floatingActionButton_fabColorNormal, -2473162);
        this.h = obtainStyledAttributes.getColor(a.h.floatingActionButton_fabColorPressed, -1617853);
        this.l = obtainStyledAttributes.getColor(a.h.floatingActionButton_fabColorDisabled, -5592406);
        this.i = obtainStyledAttributes.getColor(a.h.floatingActionButton_fabColorRipple, -1711276033);
        this.f1567b = obtainStyledAttributes.getBoolean(a.h.floatingActionButton_fabShowShadow, true);
        this.c = obtainStyledAttributes.getColor(a.h.floatingActionButton_fabShadowColor, 1711276032);
        this.d = obtainStyledAttributes.getDimensionPixelSize(a.h.floatingActionButton_fabShadowRadius, this.d);
        this.e = obtainStyledAttributes.getDimensionPixelSize(a.h.floatingActionButton_fabShadowXOffset, this.e);
        this.f = obtainStyledAttributes.getDimensionPixelSize(a.h.floatingActionButton_fabShadowYOffset, this.f);
        this.f1566a = obtainStyledAttributes.getInt(a.h.floatingActionButton_fabMode, 0);
        this.q = obtainStyledAttributes.getString(a.h.floatingActionButton_fabLabel);
        this.S = obtainStyledAttributes.getBoolean(a.h.floatingActionButton_fabProgressIndeterminate, false);
        this.x = obtainStyledAttributes.getColor(a.h.floatingActionButton_fabProgressColor, -16738680);
        this.y = obtainStyledAttributes.getColor(a.h.floatingActionButton_fabProgressBackgroundColor, 1291845632);
        this.U = obtainStyledAttributes.getInt(a.h.floatingActionButton_fabProgressMax, this.U);
        this.V = obtainStyledAttributes.getBoolean(a.h.floatingActionButton_fabProgressShowBackground, true);
        if (obtainStyledAttributes.hasValue(a.h.floatingActionButton_fabProgress)) {
            this.Q = obtainStyledAttributes.getInt(a.h.floatingActionButton_fabProgress, 0);
            this.T = true;
        }
        if (obtainStyledAttributes.hasValue(a.h.floatingActionButton_fabElevationCompat)) {
            float dimensionPixelOffset = (float) obtainStyledAttributes.getDimensionPixelOffset(a.h.floatingActionButton_fabElevationCompat, 0);
            if (isInEditMode()) {
                setElevation(dimensionPixelOffset);
            } else {
                setElevationCompat(dimensionPixelOffset);
            }
        }
        a(obtainStyledAttributes);
        b(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        if (isInEditMode()) {
            if (this.S) {
                setIndeterminate(true);
            } else if (this.T) {
                f();
                setProgress(this.Q, false);
            }
        }
        setClickable(true);
    }

    private void a(TypedArray typedArray) {
        this.o = AnimationUtils.loadAnimation(getContext(), typedArray.getResourceId(a.h.floatingActionButton_fabShowAnimation, a.C0028a.fab_scale_up));
    }

    private void b(TypedArray typedArray) {
        this.p = AnimationUtils.loadAnimation(getContext(), typedArray.getResourceId(a.h.floatingActionButton_fabHideAnimation, a.C0028a.fab_scale_down));
    }

    /* access modifiers changed from: private */
    public int getCircleSize() {
        return getResources().getDimensionPixelSize(this.f1566a == 0 ? a.c.fab_size_normal : a.c.fab_size_mini);
    }

    /* access modifiers changed from: private */
    public int c() {
        int circleSize = getCircleSize() + (hasShadow() ? getShadowX() * 2 : 0);
        return this.v ? circleSize + (this.w * 2) : circleSize;
    }

    /* access modifiers changed from: private */
    public int d() {
        int circleSize = getCircleSize() + (hasShadow() ? getShadowY() * 2 : 0);
        return this.v ? circleSize + (this.w * 2) : circleSize;
    }

    private int getShadowX() {
        return this.d + Math.abs(this.e);
    }

    private int getShadowY() {
        return this.d + Math.abs(this.f);
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        LayerDrawable layerDrawable;
        int i2 = 0;
        if (hasShadow()) {
            layerDrawable = new LayerDrawable(new Drawable[]{new b(this, (byte) 0), e(), getIconDrawable()});
        } else {
            layerDrawable = new LayerDrawable(new Drawable[]{e(), getIconDrawable()});
        }
        int i3 = -1;
        if (getIconDrawable() != null) {
            i3 = Math.max(getIconDrawable().getIntrinsicWidth(), getIconDrawable().getIntrinsicHeight());
        }
        int circleSize = getCircleSize();
        if (i3 <= 0) {
            i3 = this.n;
        }
        int i4 = (circleSize - i3) / 2;
        int abs = hasShadow() ? this.d + Math.abs(this.e) : 0;
        if (hasShadow()) {
            i2 = this.d + Math.abs(this.f);
        }
        if (this.v) {
            int i5 = this.w;
            abs += i5;
            i2 += i5;
        }
        int i6 = abs + i4;
        int i7 = i2 + i4;
        layerDrawable.setLayerInset(hasShadow() ? 2 : 1, i6, i7, i6, i7);
        setBackgroundCompat(layerDrawable);
    }

    /* access modifiers changed from: protected */
    public Drawable getIconDrawable() {
        Drawable drawable = this.m;
        if (drawable != null) {
            return drawable;
        }
        return new ColorDrawable(0);
    }

    private Drawable e() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{-16842910}, a(this.l));
        stateListDrawable.addState(new int[]{16842919}, a(this.h));
        stateListDrawable.addState(new int[0], a(this.g));
        if (cab.snapp.c.a.hasLollipop()) {
            RippleDrawable rippleDrawable = new RippleDrawable(new ColorStateList(new int[][]{new int[0]}, new int[]{this.i}), stateListDrawable, null);
            setOutlineProvider(new ViewOutlineProvider() {
                public final void getOutline(View view, Outline outline) {
                    outline.setOval(0, 0, view.getWidth(), view.getHeight());
                }
            });
            setClipToOutline(true);
            this.s = rippleDrawable;
            return rippleDrawable;
        }
        this.s = stateListDrawable;
        return stateListDrawable;
    }

    private Drawable a(int i2) {
        a aVar = new a(this, new OvalShape(), (byte) 0);
        aVar.getPaint().setColor(i2);
        return aVar;
    }

    private void setBackgroundCompat(Drawable drawable) {
        if (cab.snapp.c.a.hasJellyBean()) {
            setBackground(drawable);
        } else {
            setBackgroundDrawable(drawable);
        }
    }

    private void f() {
        if (!this.C) {
            if (this.A == -1.0f) {
                this.A = getX();
            }
            if (this.B == -1.0f) {
                this.B = getY();
            }
            this.C = true;
        }
    }

    private void g() {
        int i2 = 0;
        int shadowX = hasShadow() ? getShadowX() : 0;
        if (hasShadow()) {
            i2 = getShadowY();
        }
        int i3 = this.w;
        this.D = new RectF((float) ((i3 / 2) + shadowX), (float) ((i3 / 2) + i2), (float) ((c() - shadowX) - (this.w / 2)), (float) ((d() - i2) - (this.w / 2)));
    }

    /* access modifiers changed from: package-private */
    public Animation getShowAnimation() {
        return this.o;
    }

    /* access modifiers changed from: package-private */
    public Animation getHideAnimation() {
        return this.p;
    }

    /* access modifiers changed from: package-private */
    public Label getLabelView() {
        return (Label) getTag(a.f.fab_label);
    }

    public void setEnabled(boolean z2) {
        super.setEnabled(z2);
        Label label = (Label) getTag(a.f.fab_label);
        if (label != null) {
            label.setEnabled(z2);
        }
    }

    public void setVisibility(int i2) {
        super.setVisibility(i2);
        Label label = (Label) getTag(a.f.fab_label);
        if (label != null) {
            label.setVisibility(i2);
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        setMeasuredDimension(c(), d());
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        float f2;
        float f3;
        super.onDraw(canvas);
        if (this.v) {
            if (this.V) {
                canvas.drawArc(this.D, 360.0f, 360.0f, false, this.E);
            }
            boolean z2 = true;
            if (this.G) {
                long uptimeMillis = SystemClock.uptimeMillis() - this.H;
                float f4 = (((float) uptimeMillis) * this.I) / 1000.0f;
                long j2 = this.J;
                if (j2 >= 200) {
                    double d2 = this.K;
                    double d3 = (double) uptimeMillis;
                    Double.isNaN(d3);
                    this.K = d2 + d3;
                    double d4 = this.K;
                    if (d4 > 500.0d) {
                        this.K = d4 - 500.0d;
                        this.J = 0;
                        this.L = !this.L;
                    }
                    float cos = (((float) Math.cos(((this.K / 500.0d) + 1.0d) * 3.141592653589793d)) / 2.0f) + 0.5f;
                    float f5 = (float) (270 - this.M);
                    if (this.L) {
                        this.N = cos * f5;
                    } else {
                        float f6 = f5 * (1.0f - cos);
                        this.O += this.N - f6;
                        this.N = f6;
                    }
                } else {
                    this.J = j2 + uptimeMillis;
                }
                this.O += f4;
                float f7 = this.O;
                if (f7 > 360.0f) {
                    this.O = f7 - 360.0f;
                }
                this.H = SystemClock.uptimeMillis();
                float f8 = this.O - 90.0f;
                float f9 = ((float) this.M) + this.N;
                if (isInEditMode()) {
                    f3 = 0.0f;
                    f2 = 135.0f;
                } else {
                    f3 = f8;
                    f2 = f9;
                }
                canvas.drawArc(this.D, f3, f2, false, this.F);
            } else {
                if (this.O != this.P) {
                    float uptimeMillis2 = (((float) (SystemClock.uptimeMillis() - this.H)) / 1000.0f) * this.I;
                    float f10 = this.O;
                    float f11 = this.P;
                    if (f10 > f11) {
                        this.O = Math.max(f10 - uptimeMillis2, f11);
                    } else {
                        this.O = Math.min(f10 + uptimeMillis2, f11);
                    }
                    this.H = SystemClock.uptimeMillis();
                } else {
                    z2 = false;
                }
                canvas.drawArc(this.D, -90.0f, this.O, false, this.F);
            }
            if (z2) {
                invalidate();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        float f2;
        float f3;
        f();
        if (this.S) {
            setIndeterminate(true);
            this.S = false;
        } else if (this.T) {
            setProgress(this.Q, this.R);
            this.T = false;
        } else if (this.z) {
            if (this.v) {
                f3 = this.A > getX() ? getX() + ((float) this.w) : getX() - ((float) this.w);
                f2 = this.B > getY() ? getY() + ((float) this.w) : getY() - ((float) this.w);
            } else {
                f3 = this.A;
                f2 = this.B;
            }
            setX(f3);
            setY(f2);
            this.z = false;
        }
        super.onSizeChanged(i2, i3, i4, i5);
        g();
        this.E.setColor(this.y);
        this.E.setStyle(Paint.Style.STROKE);
        this.E.setStrokeWidth((float) this.w);
        this.F.setColor(this.x);
        this.F.setStyle(Paint.Style.STROKE);
        this.F.setStrokeWidth((float) this.w);
        a();
    }

    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if ((layoutParams instanceof ViewGroup.MarginLayoutParams) && this.u) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.leftMargin += getShadowX();
            marginLayoutParams.topMargin += getShadowY();
            marginLayoutParams.rightMargin += getShadowX();
            marginLayoutParams.bottomMargin += getShadowY();
        }
        super.setLayoutParams(layoutParams);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.r != null && isEnabled()) {
            Label label = (Label) getTag(a.f.fab_label);
            if (label == null) {
                return super.onTouchEvent(motionEvent);
            }
            int action = motionEvent.getAction();
            if (action == 1) {
                if (label != null) {
                    label.onActionUp();
                }
                onActionUp();
            } else if (action == 3) {
                if (label != null) {
                    label.onActionUp();
                }
                onActionUp();
            }
            this.j.onTouchEvent(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    public Parcelable onSaveInstanceState() {
        ProgressSavedState progressSavedState = new ProgressSavedState(super.onSaveInstanceState());
        progressSavedState.f1572a = this.O;
        progressSavedState.f1573b = this.P;
        progressSavedState.c = this.I;
        progressSavedState.e = this.w;
        progressSavedState.f = this.x;
        progressSavedState.g = this.y;
        boolean z2 = this.G;
        progressSavedState.k = z2;
        progressSavedState.l = this.v && this.Q > 0 && !z2;
        progressSavedState.d = this.Q;
        progressSavedState.m = this.R;
        progressSavedState.n = this.V;
        return progressSavedState;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ProgressSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ProgressSavedState progressSavedState = (ProgressSavedState) parcelable;
        super.onRestoreInstanceState(progressSavedState.getSuperState());
        this.O = progressSavedState.f1572a;
        this.P = progressSavedState.f1573b;
        this.I = progressSavedState.c;
        this.w = progressSavedState.e;
        this.x = progressSavedState.f;
        this.y = progressSavedState.g;
        this.S = progressSavedState.k;
        this.T = progressSavedState.l;
        this.Q = progressSavedState.d;
        this.R = progressSavedState.m;
        this.V = progressSavedState.n;
        this.H = SystemClock.uptimeMillis();
    }

    public void setImageDrawable(Drawable drawable) {
        if (this.m != drawable) {
            this.m = drawable;
            a();
        }
    }

    public void setImageResource(int i2) {
        Drawable drawable = getResources().getDrawable(i2);
        if (this.m != drawable) {
            this.m = drawable;
            a();
        }
    }

    public void setOnClickListener(View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
        this.r = onClickListener;
        View view = (View) getTag(a.f.fab_label);
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() {
                public final void onClick(View view) {
                    if (SnappFloatingActionButton.this.r != null) {
                        SnappFloatingActionButton.this.r.onClick(SnappFloatingActionButton.this);
                    }
                }
            });
        }
    }

    static /* synthetic */ float i(SnappFloatingActionButton snappFloatingActionButton) {
        return (float) (snappFloatingActionButton.getMeasuredWidth() / 2);
    }

    static /* synthetic */ float j(SnappFloatingActionButton snappFloatingActionButton) {
        return (float) (snappFloatingActionButton.getMeasuredHeight() / 2);
    }
}
