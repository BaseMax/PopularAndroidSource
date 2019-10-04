package cab.snapp.snappuikit.fab;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.animation.Animation;
import android.widget.TextView;
import cab.snapp.snappuikit.SnappFloatingActionButton;

public class Label extends TextView {
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public static final Xfermode f1633b = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);

    /* renamed from: a  reason: collision with root package name */
    GestureDetector f1634a = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() {
        public final boolean onDown(MotionEvent motionEvent) {
            Label.this.onActionDown();
            if (Label.this.o != null) {
                Label.this.o.onActionDown();
            }
            return super.onDown(motionEvent);
        }

        public final boolean onSingleTapUp(MotionEvent motionEvent) {
            Label.this.onActionUp();
            if (Label.this.o != null) {
                Label.this.o.onActionUp();
            }
            return super.onSingleTapUp(motionEvent);
        }
    });
    /* access modifiers changed from: private */
    public int c;
    /* access modifiers changed from: private */
    public int d;
    /* access modifiers changed from: private */
    public int e;
    /* access modifiers changed from: private */
    public int f;
    private Drawable g;
    private boolean h = true;
    /* access modifiers changed from: private */
    public int i;
    /* access modifiers changed from: private */
    public int j;
    /* access modifiers changed from: private */
    public int k;
    private int l;
    private int m;
    /* access modifiers changed from: private */
    public int n;
    /* access modifiers changed from: private */
    public SnappFloatingActionButton o;
    private Animation p;
    private Animation q;
    private boolean r;
    private boolean s = true;

    class a extends Drawable {

        /* renamed from: b  reason: collision with root package name */
        private Paint f1638b;
        private Paint c;

        public final int getOpacity() {
            return 0;
        }

        public final void setAlpha(int i) {
        }

        public final void setColorFilter(ColorFilter colorFilter) {
        }

        /* synthetic */ a(Label label, byte b2) {
            this();
        }

        private a() {
            this.f1638b = new Paint(1);
            this.c = new Paint(1);
            Label.this.setLayerType(1, null);
            this.f1638b.setStyle(Paint.Style.FILL);
            this.f1638b.setColor(Label.this.k);
            this.c.setXfermode(Label.f1633b);
            if (!Label.this.isInEditMode()) {
                this.f1638b.setShadowLayer((float) Label.this.c, (float) Label.this.d, (float) Label.this.e, Label.this.f);
            }
        }

        public final void draw(Canvas canvas) {
            RectF rectF = new RectF((float) (Label.this.c + Math.abs(Label.this.d)), (float) (Label.this.c + Math.abs(Label.this.e)), (float) Label.this.i, (float) Label.this.j);
            canvas.drawRoundRect(rectF, (float) Label.this.n, (float) Label.this.n, this.f1638b);
            canvas.drawRoundRect(rectF, (float) Label.this.n, (float) Label.this.n, this.c);
        }
    }

    public Label(Context context) {
        super(context);
    }

    public Label(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Label(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.i == 0) {
            this.i = getMeasuredWidth();
        }
        int measuredWidth = getMeasuredWidth() + calculateShadowWidth();
        if (this.j == 0) {
            this.j = getMeasuredHeight();
        }
        setMeasuredDimension(measuredWidth, getMeasuredHeight() + (this.h ? this.c + Math.abs(this.e) : 0));
    }

    public int calculateShadowWidth() {
        if (this.h) {
            return this.c + Math.abs(this.d);
        }
        return 0;
    }

    public void updateBackground() {
        LayerDrawable layerDrawable;
        if (this.h) {
            layerDrawable = new LayerDrawable(new Drawable[]{new a(this, (byte) 0), b()});
            layerDrawable.setLayerInset(1, this.c + Math.abs(this.d), this.c + Math.abs(this.e), this.c + Math.abs(this.d), this.c + Math.abs(this.e));
        } else {
            layerDrawable = new LayerDrawable(new Drawable[]{b()});
        }
        setBackgroundCompat(layerDrawable);
    }

    private Drawable b() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, a(this.l));
        stateListDrawable.addState(new int[0], a(this.k));
        if (cab.snapp.c.a.hasLollipop()) {
            RippleDrawable rippleDrawable = new RippleDrawable(new ColorStateList(new int[][]{new int[0]}, new int[]{this.m}), stateListDrawable, null);
            setOutlineProvider(new ViewOutlineProvider() {
                public final void getOutline(View view, Outline outline) {
                    outline.setOval(0, 0, view.getWidth(), view.getHeight());
                }
            });
            setClipToOutline(true);
            this.g = rippleDrawable;
            return rippleDrawable;
        }
        this.g = stateListDrawable;
        return stateListDrawable;
    }

    private Drawable a(int i2) {
        int i3 = this.n;
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{(float) i3, (float) i3, (float) i3, (float) i3, (float) i3, (float) i3, (float) i3, (float) i3}, null, null));
        shapeDrawable.getPaint().setColor(i2);
        return shapeDrawable;
    }

    private void setShadow(SnappFloatingActionButton snappFloatingActionButton) {
        this.f = snappFloatingActionButton.getShadowColor();
        this.c = snappFloatingActionButton.getShadowRadius();
        this.d = snappFloatingActionButton.getShadowXOffset();
        this.e = snappFloatingActionButton.getShadowYOffset();
        this.h = snappFloatingActionButton.hasShadow();
    }

    private void setBackgroundCompat(Drawable drawable) {
        if (cab.snapp.c.a.hasJellyBean()) {
            setBackground(drawable);
        } else {
            setBackgroundDrawable(drawable);
        }
    }

    public void onActionDown() {
        if (this.r) {
            this.g = getBackground();
        }
        Drawable drawable = this.g;
        if (drawable instanceof StateListDrawable) {
            ((StateListDrawable) drawable).setState(new int[]{16842919});
            return;
        }
        if (cab.snapp.c.a.hasLollipop()) {
            Drawable drawable2 = this.g;
            if (drawable2 instanceof RippleDrawable) {
                RippleDrawable rippleDrawable = (RippleDrawable) drawable2;
                rippleDrawable.setState(new int[]{16842910, 16842919});
                rippleDrawable.setHotspot((float) (getMeasuredWidth() / 2), (float) (getMeasuredHeight() / 2));
                rippleDrawable.setVisible(true, true);
            }
        }
    }

    public void onActionUp() {
        if (this.r) {
            this.g = getBackground();
        }
        Drawable drawable = this.g;
        if (drawable instanceof StateListDrawable) {
            ((StateListDrawable) drawable).setState(new int[0]);
            return;
        }
        if (cab.snapp.c.a.hasLollipop()) {
            Drawable drawable2 = this.g;
            if (drawable2 instanceof RippleDrawable) {
                RippleDrawable rippleDrawable = (RippleDrawable) drawable2;
                rippleDrawable.setState(new int[0]);
                rippleDrawable.setHotspot((float) (getMeasuredWidth() / 2), (float) (getMeasuredHeight() / 2));
                rippleDrawable.setVisible(true, true);
            }
        }
    }

    public void setFab(SnappFloatingActionButton snappFloatingActionButton) {
        this.o = snappFloatingActionButton;
        setShadow(snappFloatingActionButton);
    }

    public void setShowShadow(boolean z) {
        this.h = z;
    }

    public void setCornerRadius(int i2) {
        this.n = i2;
    }

    public void setColors(int i2, int i3, int i4) {
        this.k = i2;
        this.l = i3;
        this.m = i4;
    }

    public void setShowAnimation(Animation animation) {
        this.p = animation;
    }

    public void setHideAnimation(Animation animation) {
        this.q = animation;
    }

    public void setUsingStyle(boolean z) {
        this.r = z;
    }

    public void setHandleVisibilityChanges(boolean z) {
        this.s = z;
    }

    public boolean isHandleVisibilityChanges() {
        return this.s;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        SnappFloatingActionButton snappFloatingActionButton = this.o;
        if (snappFloatingActionButton == null || snappFloatingActionButton.getOnClickListener() == null || !this.o.isEnabled()) {
            return super.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 1) {
            onActionUp();
            this.o.onActionUp();
        } else if (action == 3) {
            onActionUp();
            this.o.onActionUp();
        }
        this.f1634a.onTouchEvent(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    public void show(boolean z) {
        if (z && this.p != null) {
            this.q.cancel();
            startAnimation(this.p);
        }
        setVisibility(0);
    }

    public void hide(boolean z) {
        if (z && this.q != null) {
            this.p.cancel();
            startAnimation(this.q);
        }
        setVisibility(4);
    }
}
