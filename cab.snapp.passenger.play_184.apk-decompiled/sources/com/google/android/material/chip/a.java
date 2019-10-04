package com.google.android.material.chip;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.internal.view.SupportMenu;
import androidx.core.text.BidiFormatter;
import com.google.android.material.a;
import com.google.android.material.a.h;
import com.google.android.material.f.b;
import com.google.android.material.internal.k;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import org.xmlpull.v1.XmlPullParserException;

public final class a extends Drawable implements Drawable.Callback, TintAwareDrawable {

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f3867b = {16842910};
    private float A;
    private float B;
    private float C;
    private float D;
    private float E;
    private float F;
    private float G;
    private float H;
    private final Context I;
    private final TextPaint J = new TextPaint(1);
    private final Paint K = new Paint(1);
    private final Paint L;
    private final Paint.FontMetrics M = new Paint.FontMetrics();
    private final RectF N = new RectF();
    private final PointF O = new PointF();
    private int P;
    private int Q;
    private int R;
    private int S;
    private boolean T;
    private int U;
    private int V = 255;
    private ColorFilter W;
    private PorterDuffColorFilter X;
    private ColorStateList Y;
    private PorterDuff.Mode Z = PorterDuff.Mode.SRC_IN;

    /* renamed from: a  reason: collision with root package name */
    boolean f3868a;
    private int[] aa;
    private boolean ab;
    private ColorStateList ac;
    private WeakReference<C0070a> ad = new WeakReference<>(null);
    /* access modifiers changed from: private */
    public boolean ae = true;
    private float af;
    private TextUtils.TruncateAt ag;
    private int ah;
    private ColorStateList c;
    private float d;
    private float e;
    private ColorStateList f;
    private float g;
    private ColorStateList h;
    private CharSequence i;
    private CharSequence j;
    private b k;
    private final ResourcesCompat.FontCallback l = new ResourcesCompat.FontCallback() {
        public final void onFontRetrievalFailed(int i) {
        }

        public final void onFontRetrieved(Typeface typeface) {
            boolean unused = a.this.ae = true;
            a.this.a();
            a.this.invalidateSelf();
        }
    };
    private boolean m;
    private Drawable n;
    private ColorStateList o;
    private float p;
    private boolean q;
    private Drawable r;
    private ColorStateList s;
    private float t;
    private CharSequence u;
    private boolean v;
    private boolean w;
    private Drawable x;
    private h y;
    private h z;

    /* renamed from: com.google.android.material.chip.a$a  reason: collision with other inner class name */
    public interface C0070a {
        void onChipDrawableSizeChange();
    }

    public final int getOpacity() {
        return -3;
    }

    public static a createFromAttributes(Context context, AttributeSet attributeSet, int i2, int i3) {
        a aVar = new a(context);
        TypedArray obtainStyledAttributes = k.obtainStyledAttributes(aVar.I, attributeSet, a.k.Chip, i2, i3, new int[0]);
        aVar.setChipBackgroundColor(com.google.android.material.f.a.getColorStateList(aVar.I, obtainStyledAttributes, a.k.Chip_chipBackgroundColor));
        aVar.setChipMinHeight(obtainStyledAttributes.getDimension(a.k.Chip_chipMinHeight, 0.0f));
        aVar.setChipCornerRadius(obtainStyledAttributes.getDimension(a.k.Chip_chipCornerRadius, 0.0f));
        aVar.setChipStrokeColor(com.google.android.material.f.a.getColorStateList(aVar.I, obtainStyledAttributes, a.k.Chip_chipStrokeColor));
        aVar.setChipStrokeWidth(obtainStyledAttributes.getDimension(a.k.Chip_chipStrokeWidth, 0.0f));
        aVar.setRippleColor(com.google.android.material.f.a.getColorStateList(aVar.I, obtainStyledAttributes, a.k.Chip_rippleColor));
        aVar.setText(obtainStyledAttributes.getText(a.k.Chip_android_text));
        aVar.setTextAppearance(com.google.android.material.f.a.getTextAppearance(aVar.I, obtainStyledAttributes, a.k.Chip_android_textAppearance));
        int i4 = obtainStyledAttributes.getInt(a.k.Chip_android_ellipsize, 0);
        if (i4 == 1) {
            aVar.setEllipsize(TextUtils.TruncateAt.START);
        } else if (i4 == 2) {
            aVar.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        } else if (i4 == 3) {
            aVar.setEllipsize(TextUtils.TruncateAt.END);
        }
        aVar.setChipIconVisible(obtainStyledAttributes.getBoolean(a.k.Chip_chipIconVisible, false));
        if (!(attributeSet == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") != null)) {
            aVar.setChipIconVisible(obtainStyledAttributes.getBoolean(a.k.Chip_chipIconEnabled, false));
        }
        aVar.setChipIcon(com.google.android.material.f.a.getDrawable(aVar.I, obtainStyledAttributes, a.k.Chip_chipIcon));
        aVar.setChipIconTint(com.google.android.material.f.a.getColorStateList(aVar.I, obtainStyledAttributes, a.k.Chip_chipIconTint));
        aVar.setChipIconSize(obtainStyledAttributes.getDimension(a.k.Chip_chipIconSize, 0.0f));
        aVar.setCloseIconVisible(obtainStyledAttributes.getBoolean(a.k.Chip_closeIconVisible, false));
        if (!(attributeSet == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") != null)) {
            aVar.setCloseIconVisible(obtainStyledAttributes.getBoolean(a.k.Chip_closeIconEnabled, false));
        }
        aVar.setCloseIcon(com.google.android.material.f.a.getDrawable(aVar.I, obtainStyledAttributes, a.k.Chip_closeIcon));
        aVar.setCloseIconTint(com.google.android.material.f.a.getColorStateList(aVar.I, obtainStyledAttributes, a.k.Chip_closeIconTint));
        aVar.setCloseIconSize(obtainStyledAttributes.getDimension(a.k.Chip_closeIconSize, 0.0f));
        aVar.setCheckable(obtainStyledAttributes.getBoolean(a.k.Chip_android_checkable, false));
        aVar.setCheckedIconVisible(obtainStyledAttributes.getBoolean(a.k.Chip_checkedIconVisible, false));
        if (!(attributeSet == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") != null)) {
            aVar.setCheckedIconVisible(obtainStyledAttributes.getBoolean(a.k.Chip_checkedIconEnabled, false));
        }
        aVar.setCheckedIcon(com.google.android.material.f.a.getDrawable(aVar.I, obtainStyledAttributes, a.k.Chip_checkedIcon));
        aVar.setShowMotionSpec(h.createFromAttribute(aVar.I, obtainStyledAttributes, a.k.Chip_showMotionSpec));
        aVar.setHideMotionSpec(h.createFromAttribute(aVar.I, obtainStyledAttributes, a.k.Chip_hideMotionSpec));
        aVar.setChipStartPadding(obtainStyledAttributes.getDimension(a.k.Chip_chipStartPadding, 0.0f));
        aVar.setIconStartPadding(obtainStyledAttributes.getDimension(a.k.Chip_iconStartPadding, 0.0f));
        aVar.setIconEndPadding(obtainStyledAttributes.getDimension(a.k.Chip_iconEndPadding, 0.0f));
        aVar.setTextStartPadding(obtainStyledAttributes.getDimension(a.k.Chip_textStartPadding, 0.0f));
        aVar.setTextEndPadding(obtainStyledAttributes.getDimension(a.k.Chip_textEndPadding, 0.0f));
        aVar.setCloseIconStartPadding(obtainStyledAttributes.getDimension(a.k.Chip_closeIconStartPadding, 0.0f));
        aVar.setCloseIconEndPadding(obtainStyledAttributes.getDimension(a.k.Chip_closeIconEndPadding, 0.0f));
        aVar.setChipEndPadding(obtainStyledAttributes.getDimension(a.k.Chip_chipEndPadding, 0.0f));
        aVar.setMaxWidth(obtainStyledAttributes.getDimensionPixelSize(a.k.Chip_android_maxWidth, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED));
        obtainStyledAttributes.recycle();
        return aVar;
    }

    public static a createFromResource(Context context, int i2) {
        int next;
        try {
            XmlResourceParser xml = context.getResources().getXml(i2);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next != 2) {
                throw new XmlPullParserException("No start tag found");
            } else if (TextUtils.equals(xml.getName(), "chip")) {
                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                int styleAttribute = asAttributeSet.getStyleAttribute();
                if (styleAttribute == 0) {
                    styleAttribute = a.j.Widget_MaterialComponents_Chip_Entry;
                }
                return createFromAttributes(context, asAttributeSet, a.b.chipStandaloneStyle, styleAttribute);
            } else {
                throw new XmlPullParserException("Must have a <chip> start tag");
            }
        } catch (IOException | XmlPullParserException e2) {
            Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load chip resource ID #0x" + Integer.toHexString(i2));
            notFoundException.initCause(e2);
            throw notFoundException;
        }
    }

    private a(Context context) {
        this.I = context;
        this.i = "";
        this.J.density = context.getResources().getDisplayMetrics().density;
        this.L = null;
        Paint paint = this.L;
        if (paint != null) {
            paint.setStyle(Paint.Style.STROKE);
        }
        setState(f3867b);
        setCloseIconState(f3867b);
        this.f3868a = true;
    }

    public final void setUseCompatRipple(boolean z2) {
        if (this.ab != z2) {
            this.ab = z2;
            i();
            onStateChange(getState());
        }
    }

    public final boolean getUseCompatRipple() {
        return this.ab;
    }

    public final void setDelegate(C0070a aVar) {
        this.ad = new WeakReference<>(aVar);
    }

    /* access modifiers changed from: protected */
    public final void a() {
        C0070a aVar = (C0070a) this.ad.get();
        if (aVar != null) {
            aVar.onChipDrawableSizeChange();
        }
    }

    public final void getChipTouchBounds(RectF rectF) {
        c(getBounds(), rectF);
    }

    public final void getCloseIconTouchBounds(RectF rectF) {
        d(getBounds(), rectF);
    }

    public final int getIntrinsicWidth() {
        return Math.min(Math.round(this.A + b() + this.D + f() + this.E + g() + this.H), this.ah);
    }

    public final int getIntrinsicHeight() {
        return (int) this.d;
    }

    private boolean c() {
        return this.m && this.n != null;
    }

    private boolean d() {
        return this.w && this.x != null && this.T;
    }

    private boolean e() {
        return this.q && this.r != null;
    }

    /* access modifiers changed from: package-private */
    public final float b() {
        if (c() || d()) {
            return this.B + this.p + this.C;
        }
        return 0.0f;
    }

    private float f() {
        if (!this.ae) {
            return this.af;
        }
        this.af = a(this.j);
        this.ae = false;
        return this.af;
    }

    private float a(CharSequence charSequence) {
        if (charSequence == null) {
            return 0.0f;
        }
        return this.J.measureText(charSequence, 0, charSequence.length());
    }

    private float g() {
        if (e()) {
            return this.F + this.t + this.G;
        }
        return 0.0f;
    }

    public final void draw(Canvas canvas) {
        int i2;
        int i3;
        Rect bounds = getBounds();
        if (!bounds.isEmpty() && getAlpha() != 0) {
            if (this.V < 255) {
                i2 = com.google.android.material.b.a.saveLayerAlpha(canvas, (float) bounds.left, (float) bounds.top, (float) bounds.right, (float) bounds.bottom, this.V);
            } else {
                i2 = 0;
            }
            this.K.setColor(this.P);
            this.K.setStyle(Paint.Style.FILL);
            this.K.setColorFilter(h());
            this.N.set(bounds);
            RectF rectF = this.N;
            float f2 = this.e;
            canvas.drawRoundRect(rectF, f2, f2, this.K);
            if (this.g > 0.0f) {
                this.K.setColor(this.Q);
                this.K.setStyle(Paint.Style.STROKE);
                this.K.setColorFilter(h());
                this.N.set(((float) bounds.left) + (this.g / 2.0f), ((float) bounds.top) + (this.g / 2.0f), ((float) bounds.right) - (this.g / 2.0f), ((float) bounds.bottom) - (this.g / 2.0f));
                float f3 = this.e - (this.g / 2.0f);
                canvas.drawRoundRect(this.N, f3, f3, this.K);
            }
            this.K.setColor(this.R);
            this.K.setStyle(Paint.Style.FILL);
            this.N.set(bounds);
            RectF rectF2 = this.N;
            float f4 = this.e;
            canvas.drawRoundRect(rectF2, f4, f4, this.K);
            if (c()) {
                a(bounds, this.N);
                float f5 = this.N.left;
                float f6 = this.N.top;
                canvas.translate(f5, f6);
                this.n.setBounds(0, 0, (int) this.N.width(), (int) this.N.height());
                this.n.draw(canvas);
                canvas.translate(-f5, -f6);
            }
            if (d()) {
                a(bounds, this.N);
                float f7 = this.N.left;
                float f8 = this.N.top;
                canvas.translate(f7, f8);
                this.x.setBounds(0, 0, (int) this.N.width(), (int) this.N.height());
                this.x.draw(canvas);
                canvas.translate(-f7, -f8);
            }
            if (this.f3868a && this.j != null) {
                PointF pointF = this.O;
                pointF.set(0.0f, 0.0f);
                Paint.Align align = Paint.Align.LEFT;
                if (this.j != null) {
                    float b2 = this.A + b() + this.D;
                    if (DrawableCompat.getLayoutDirection(this) == 0) {
                        pointF.x = ((float) bounds.left) + b2;
                        align = Paint.Align.LEFT;
                    } else {
                        pointF.x = ((float) bounds.right) - b2;
                        align = Paint.Align.RIGHT;
                    }
                    this.J.getFontMetrics(this.M);
                    pointF.y = ((float) bounds.centerY()) - ((this.M.descent + this.M.ascent) / 2.0f);
                }
                RectF rectF3 = this.N;
                rectF3.setEmpty();
                if (this.j != null) {
                    float b3 = this.A + b() + this.D;
                    float g2 = this.H + g() + this.E;
                    if (DrawableCompat.getLayoutDirection(this) == 0) {
                        rectF3.left = ((float) bounds.left) + b3;
                        rectF3.right = ((float) bounds.right) - g2;
                    } else {
                        rectF3.left = ((float) bounds.left) + g2;
                        rectF3.right = ((float) bounds.right) - b3;
                    }
                    rectF3.top = (float) bounds.top;
                    rectF3.bottom = (float) bounds.bottom;
                }
                if (this.k != null) {
                    this.J.drawableState = getState();
                    this.k.updateDrawState(this.I, this.J, this.l);
                }
                this.J.setTextAlign(align);
                boolean z2 = Math.round(f()) > Math.round(this.N.width());
                if (z2) {
                    i3 = canvas.save();
                    canvas.clipRect(this.N);
                } else {
                    i3 = 0;
                }
                CharSequence charSequence = this.j;
                if (z2 && this.ag != null) {
                    charSequence = TextUtils.ellipsize(charSequence, this.J, this.N.width(), this.ag);
                }
                CharSequence charSequence2 = charSequence;
                canvas.drawText(charSequence2, 0, charSequence2.length(), this.O.x, this.O.y, this.J);
                if (z2) {
                    canvas.restoreToCount(i3);
                }
            }
            if (e()) {
                b(bounds, this.N);
                float f9 = this.N.left;
                float f10 = this.N.top;
                canvas.translate(f9, f10);
                this.r.setBounds(0, 0, (int) this.N.width(), (int) this.N.height());
                this.r.draw(canvas);
                canvas.translate(-f9, -f10);
            }
            Paint paint = this.L;
            if (paint != null) {
                paint.setColor(ColorUtils.setAlphaComponent(-16777216, 127));
                canvas.drawRect(bounds, this.L);
                if (c() || d()) {
                    a(bounds, this.N);
                    canvas.drawRect(this.N, this.L);
                }
                if (this.j != null) {
                    canvas.drawLine((float) bounds.left, bounds.exactCenterY(), (float) bounds.right, bounds.exactCenterY(), this.L);
                }
                if (e()) {
                    b(bounds, this.N);
                    canvas.drawRect(this.N, this.L);
                }
                this.L.setColor(ColorUtils.setAlphaComponent(SupportMenu.CATEGORY_MASK, 127));
                c(bounds, this.N);
                canvas.drawRect(this.N, this.L);
                this.L.setColor(ColorUtils.setAlphaComponent(-16711936, 127));
                d(bounds, this.N);
                canvas.drawRect(this.N, this.L);
            }
            if (this.V < 255) {
                canvas.restoreToCount(i2);
            }
        }
    }

    private void a(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (c() || d()) {
            float f2 = this.A + this.B;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.left = ((float) rect.left) + f2;
                rectF.right = rectF.left + this.p;
            } else {
                rectF.right = ((float) rect.right) - f2;
                rectF.left = rectF.right - this.p;
            }
            rectF.top = rect.exactCenterY() - (this.p / 2.0f);
            rectF.bottom = rectF.top + this.p;
        }
    }

    private void b(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (e()) {
            float f2 = this.H + this.G;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.right = ((float) rect.right) - f2;
                rectF.left = rectF.right - this.t;
            } else {
                rectF.left = ((float) rect.left) + f2;
                rectF.right = rectF.left + this.t;
            }
            rectF.top = rect.exactCenterY() - (this.t / 2.0f);
            rectF.bottom = rectF.top + this.t;
        }
    }

    private void c(Rect rect, RectF rectF) {
        rectF.set(rect);
        if (e()) {
            float f2 = this.H + this.G + this.t + this.F + this.E;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.right = ((float) rect.right) - f2;
                return;
            }
            rectF.left = ((float) rect.left) + f2;
        }
    }

    private void d(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (e()) {
            float f2 = this.H + this.G + this.t + this.F + this.E;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.right = (float) rect.right;
                rectF.left = rectF.right - f2;
            } else {
                rectF.left = (float) rect.left;
                rectF.right = ((float) rect.left) + f2;
            }
            rectF.top = (float) rect.top;
            rectF.bottom = (float) rect.bottom;
        }
    }

    public final boolean isStateful() {
        if (!a(this.c) && !a(this.f) && (!this.ab || !a(this.ac))) {
            b bVar = this.k;
            if (!((bVar == null || bVar.textColor == null || !bVar.textColor.isStateful()) ? false : true)) {
                if ((this.w && this.x != null && this.v) || a(this.n) || a(this.x) || a(this.Y)) {
                    return true;
                }
                return false;
            }
        }
        return true;
    }

    public final boolean isCloseIconStateful() {
        return a(this.r);
    }

    public final boolean setCloseIconState(int[] iArr) {
        if (!Arrays.equals(this.aa, iArr)) {
            this.aa = iArr;
            if (e()) {
                return a(getState(), iArr);
            }
        }
        return false;
    }

    public final int[] getCloseIconState() {
        return this.aa;
    }

    /* access modifiers changed from: protected */
    public final boolean onStateChange(int[] iArr) {
        return a(iArr, getCloseIconState());
    }

    /* JADX WARNING: Removed duplicated region for block: B:49:0x008e  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0098  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00ad  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00bc  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x00cb  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x00d4  */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x00d9  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean a(int[] r6, int[] r7) {
        /*
            r5 = this;
            boolean r0 = super.onStateChange(r6)
            android.content.res.ColorStateList r1 = r5.c
            r2 = 0
            if (r1 == 0) goto L_0x0010
            int r3 = r5.P
            int r1 = r1.getColorForState(r6, r3)
            goto L_0x0011
        L_0x0010:
            r1 = 0
        L_0x0011:
            int r3 = r5.P
            r4 = 1
            if (r3 == r1) goto L_0x0019
            r5.P = r1
            r0 = 1
        L_0x0019:
            android.content.res.ColorStateList r1 = r5.f
            if (r1 == 0) goto L_0x0024
            int r3 = r5.Q
            int r1 = r1.getColorForState(r6, r3)
            goto L_0x0025
        L_0x0024:
            r1 = 0
        L_0x0025:
            int r3 = r5.Q
            if (r3 == r1) goto L_0x002c
            r5.Q = r1
            r0 = 1
        L_0x002c:
            android.content.res.ColorStateList r1 = r5.ac
            if (r1 == 0) goto L_0x0037
            int r3 = r5.R
            int r1 = r1.getColorForState(r6, r3)
            goto L_0x0038
        L_0x0037:
            r1 = 0
        L_0x0038:
            int r3 = r5.R
            if (r3 == r1) goto L_0x0043
            r5.R = r1
            boolean r1 = r5.ab
            if (r1 == 0) goto L_0x0043
            r0 = 1
        L_0x0043:
            com.google.android.material.f.b r1 = r5.k
            if (r1 == 0) goto L_0x0056
            android.content.res.ColorStateList r1 = r1.textColor
            if (r1 == 0) goto L_0x0056
            com.google.android.material.f.b r1 = r5.k
            android.content.res.ColorStateList r1 = r1.textColor
            int r3 = r5.S
            int r1 = r1.getColorForState(r6, r3)
            goto L_0x0057
        L_0x0056:
            r1 = 0
        L_0x0057:
            int r3 = r5.S
            if (r3 == r1) goto L_0x005e
            r5.S = r1
            r0 = 1
        L_0x005e:
            int[] r1 = r5.getState()
            boolean r1 = a((int[]) r1)
            if (r1 == 0) goto L_0x006e
            boolean r1 = r5.v
            if (r1 == 0) goto L_0x006e
            r1 = 1
            goto L_0x006f
        L_0x006e:
            r1 = 0
        L_0x006f:
            boolean r3 = r5.T
            if (r3 == r1) goto L_0x0089
            android.graphics.drawable.Drawable r3 = r5.x
            if (r3 == 0) goto L_0x0089
            float r0 = r5.b()
            r5.T = r1
            float r1 = r5.b()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0088
            r0 = 1
            r1 = 1
            goto L_0x008a
        L_0x0088:
            r0 = 1
        L_0x0089:
            r1 = 0
        L_0x008a:
            android.content.res.ColorStateList r3 = r5.Y
            if (r3 == 0) goto L_0x0094
            int r2 = r5.U
            int r2 = r3.getColorForState(r6, r2)
        L_0x0094:
            int r3 = r5.U
            if (r3 == r2) goto L_0x00a5
            r5.U = r2
            android.content.res.ColorStateList r0 = r5.Y
            android.graphics.PorterDuff$Mode r2 = r5.Z
            android.graphics.PorterDuffColorFilter r0 = com.google.android.material.c.a.updateTintFilter(r5, r0, r2)
            r5.X = r0
            r0 = 1
        L_0x00a5:
            android.graphics.drawable.Drawable r2 = r5.n
            boolean r2 = a((android.graphics.drawable.Drawable) r2)
            if (r2 == 0) goto L_0x00b4
            android.graphics.drawable.Drawable r2 = r5.n
            boolean r2 = r2.setState(r6)
            r0 = r0 | r2
        L_0x00b4:
            android.graphics.drawable.Drawable r2 = r5.x
            boolean r2 = a((android.graphics.drawable.Drawable) r2)
            if (r2 == 0) goto L_0x00c3
            android.graphics.drawable.Drawable r2 = r5.x
            boolean r6 = r2.setState(r6)
            r0 = r0 | r6
        L_0x00c3:
            android.graphics.drawable.Drawable r6 = r5.r
            boolean r6 = a((android.graphics.drawable.Drawable) r6)
            if (r6 == 0) goto L_0x00d2
            android.graphics.drawable.Drawable r6 = r5.r
            boolean r6 = r6.setState(r7)
            r0 = r0 | r6
        L_0x00d2:
            if (r0 == 0) goto L_0x00d7
            r5.invalidateSelf()
        L_0x00d7:
            if (r1 == 0) goto L_0x00dc
            r5.a()
        L_0x00dc:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.a.a(int[], int[]):boolean");
    }

    private static boolean a(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    private static boolean a(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    public final boolean onLayoutDirectionChanged(int i2) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i2);
        if (c()) {
            onLayoutDirectionChanged |= this.n.setLayoutDirection(i2);
        }
        if (d()) {
            onLayoutDirectionChanged |= this.x.setLayoutDirection(i2);
        }
        if (e()) {
            onLayoutDirectionChanged |= this.r.setLayoutDirection(i2);
        }
        if (onLayoutDirectionChanged) {
            invalidateSelf();
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public final boolean onLevelChange(int i2) {
        boolean onLevelChange = super.onLevelChange(i2);
        if (c()) {
            onLevelChange |= this.n.setLevel(i2);
        }
        if (d()) {
            onLevelChange |= this.x.setLevel(i2);
        }
        if (e()) {
            onLevelChange |= this.r.setLevel(i2);
        }
        if (onLevelChange) {
            invalidateSelf();
        }
        return onLevelChange;
    }

    public final boolean setVisible(boolean z2, boolean z3) {
        boolean visible = super.setVisible(z2, z3);
        if (c()) {
            visible |= this.n.setVisible(z2, z3);
        }
        if (d()) {
            visible |= this.x.setVisible(z2, z3);
        }
        if (e()) {
            visible |= this.r.setVisible(z2, z3);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    public final void setAlpha(int i2) {
        if (this.V != i2) {
            this.V = i2;
            invalidateSelf();
        }
    }

    public final int getAlpha() {
        return this.V;
    }

    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.W != colorFilter) {
            this.W = colorFilter;
            invalidateSelf();
        }
    }

    public final ColorFilter getColorFilter() {
        return this.W;
    }

    public final void setTintList(ColorStateList colorStateList) {
        if (this.Y != colorStateList) {
            this.Y = colorStateList;
            onStateChange(getState());
        }
    }

    public final void setTintMode(PorterDuff.Mode mode) {
        if (this.Z != mode) {
            this.Z = mode;
            this.X = com.google.android.material.c.a.updateTintFilter(this, this.Y, mode);
            invalidateSelf();
        }
    }

    public final void getOutline(Outline outline) {
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            outline.setRoundRect(bounds, this.e);
        } else {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.e);
        }
        outline.setAlpha(((float) getAlpha()) / 255.0f);
    }

    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j2);
        }
    }

    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    private static void b(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    private void c(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(this);
            DrawableCompat.setLayoutDirection(drawable, DrawableCompat.getLayoutDirection(this));
            drawable.setLevel(getLevel());
            drawable.setVisible(isVisible(), false);
            if (drawable == this.r) {
                if (drawable.isStateful()) {
                    drawable.setState(getCloseIconState());
                }
                DrawableCompat.setTintList(drawable, this.s);
            } else if (drawable.isStateful()) {
                drawable.setState(getState());
            }
        }
    }

    private ColorFilter h() {
        ColorFilter colorFilter = this.W;
        return colorFilter != null ? colorFilter : this.X;
    }

    private void i() {
        this.ac = this.ab ? com.google.android.material.g.a.convertToRippleDrawableColor(this.h) : null;
    }

    private static boolean a(int[] iArr) {
        if (iArr == null) {
            return false;
        }
        for (int i2 : iArr) {
            if (i2 == 16842912) {
                return true;
            }
        }
        return false;
    }

    public final ColorStateList getChipBackgroundColor() {
        return this.c;
    }

    public final void setChipBackgroundColorResource(int i2) {
        setChipBackgroundColor(AppCompatResources.getColorStateList(this.I, i2));
    }

    public final void setChipBackgroundColor(ColorStateList colorStateList) {
        if (this.c != colorStateList) {
            this.c = colorStateList;
            onStateChange(getState());
        }
    }

    public final float getChipMinHeight() {
        return this.d;
    }

    public final void setChipMinHeightResource(int i2) {
        setChipMinHeight(this.I.getResources().getDimension(i2));
    }

    public final void setChipMinHeight(float f2) {
        if (this.d != f2) {
            this.d = f2;
            invalidateSelf();
            a();
        }
    }

    public final float getChipCornerRadius() {
        return this.e;
    }

    public final void setChipCornerRadiusResource(int i2) {
        setChipCornerRadius(this.I.getResources().getDimension(i2));
    }

    public final void setChipCornerRadius(float f2) {
        if (this.e != f2) {
            this.e = f2;
            invalidateSelf();
        }
    }

    public final ColorStateList getChipStrokeColor() {
        return this.f;
    }

    public final void setChipStrokeColorResource(int i2) {
        setChipStrokeColor(AppCompatResources.getColorStateList(this.I, i2));
    }

    public final void setChipStrokeColor(ColorStateList colorStateList) {
        if (this.f != colorStateList) {
            this.f = colorStateList;
            onStateChange(getState());
        }
    }

    public final float getChipStrokeWidth() {
        return this.g;
    }

    public final void setChipStrokeWidthResource(int i2) {
        setChipStrokeWidth(this.I.getResources().getDimension(i2));
    }

    public final void setChipStrokeWidth(float f2) {
        if (this.g != f2) {
            this.g = f2;
            this.K.setStrokeWidth(f2);
            invalidateSelf();
        }
    }

    public final ColorStateList getRippleColor() {
        return this.h;
    }

    public final void setRippleColorResource(int i2) {
        setRippleColor(AppCompatResources.getColorStateList(this.I, i2));
    }

    public final void setRippleColor(ColorStateList colorStateList) {
        if (this.h != colorStateList) {
            this.h = colorStateList;
            i();
            onStateChange(getState());
        }
    }

    public final CharSequence getText() {
        return this.i;
    }

    public final void setTextResource(int i2) {
        setText(this.I.getResources().getString(i2));
    }

    public final void setText(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        if (this.i != charSequence) {
            this.i = charSequence;
            this.j = BidiFormatter.getInstance().unicodeWrap(charSequence);
            this.ae = true;
            invalidateSelf();
            a();
        }
    }

    public final b getTextAppearance() {
        return this.k;
    }

    public final void setTextAppearanceResource(int i2) {
        setTextAppearance(new b(this.I, i2));
    }

    public final void setTextAppearance(b bVar) {
        if (this.k != bVar) {
            this.k = bVar;
            if (bVar != null) {
                bVar.updateMeasureState(this.I, this.J, this.l);
                this.ae = true;
            }
            onStateChange(getState());
            a();
        }
    }

    public final TextUtils.TruncateAt getEllipsize() {
        return this.ag;
    }

    public final void setEllipsize(TextUtils.TruncateAt truncateAt) {
        this.ag = truncateAt;
    }

    public final boolean isChipIconVisible() {
        return this.m;
    }

    @Deprecated
    public final boolean isChipIconEnabled() {
        return isChipIconVisible();
    }

    public final void setChipIconVisible(int i2) {
        setChipIconVisible(this.I.getResources().getBoolean(i2));
    }

    public final void setChipIconVisible(boolean z2) {
        if (this.m != z2) {
            boolean c2 = c();
            this.m = z2;
            boolean c3 = c();
            if (c2 != c3) {
                if (c3) {
                    c(this.n);
                } else {
                    b(this.n);
                }
                invalidateSelf();
                a();
            }
        }
    }

    @Deprecated
    public final void setChipIconEnabledResource(int i2) {
        setChipIconVisible(i2);
    }

    @Deprecated
    public final void setChipIconEnabled(boolean z2) {
        setChipIconVisible(z2);
    }

    public final Drawable getChipIcon() {
        Drawable drawable = this.n;
        if (drawable != null) {
            return DrawableCompat.unwrap(drawable);
        }
        return null;
    }

    public final void setChipIconResource(int i2) {
        setChipIcon(AppCompatResources.getDrawable(this.I, i2));
    }

    public final void setChipIcon(Drawable drawable) {
        Drawable chipIcon = getChipIcon();
        if (chipIcon != drawable) {
            float b2 = b();
            this.n = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            float b3 = b();
            b(chipIcon);
            if (c()) {
                c(this.n);
            }
            invalidateSelf();
            if (b2 != b3) {
                a();
            }
        }
    }

    public final ColorStateList getChipIconTint() {
        return this.o;
    }

    public final void setChipIconTintResource(int i2) {
        setChipIconTint(AppCompatResources.getColorStateList(this.I, i2));
    }

    public final void setChipIconTint(ColorStateList colorStateList) {
        if (this.o != colorStateList) {
            this.o = colorStateList;
            if (c()) {
                DrawableCompat.setTintList(this.n, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final float getChipIconSize() {
        return this.p;
    }

    public final void setChipIconSizeResource(int i2) {
        setChipIconSize(this.I.getResources().getDimension(i2));
    }

    public final void setChipIconSize(float f2) {
        if (this.p != f2) {
            float b2 = b();
            this.p = f2;
            float b3 = b();
            invalidateSelf();
            if (b2 != b3) {
                a();
            }
        }
    }

    public final boolean isCloseIconVisible() {
        return this.q;
    }

    @Deprecated
    public final boolean isCloseIconEnabled() {
        return isCloseIconVisible();
    }

    public final void setCloseIconVisible(int i2) {
        setCloseIconVisible(this.I.getResources().getBoolean(i2));
    }

    public final void setCloseIconVisible(boolean z2) {
        if (this.q != z2) {
            boolean e2 = e();
            this.q = z2;
            boolean e3 = e();
            if (e2 != e3) {
                if (e3) {
                    c(this.r);
                } else {
                    b(this.r);
                }
                invalidateSelf();
                a();
            }
        }
    }

    @Deprecated
    public final void setCloseIconEnabledResource(int i2) {
        setCloseIconVisible(i2);
    }

    @Deprecated
    public final void setCloseIconEnabled(boolean z2) {
        setCloseIconVisible(z2);
    }

    public final Drawable getCloseIcon() {
        Drawable drawable = this.r;
        if (drawable != null) {
            return DrawableCompat.unwrap(drawable);
        }
        return null;
    }

    public final void setCloseIconResource(int i2) {
        setCloseIcon(AppCompatResources.getDrawable(this.I, i2));
    }

    public final void setCloseIcon(Drawable drawable) {
        Drawable closeIcon = getCloseIcon();
        if (closeIcon != drawable) {
            float g2 = g();
            this.r = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            float g3 = g();
            b(closeIcon);
            if (e()) {
                c(this.r);
            }
            invalidateSelf();
            if (g2 != g3) {
                a();
            }
        }
    }

    public final ColorStateList getCloseIconTint() {
        return this.s;
    }

    public final void setCloseIconTintResource(int i2) {
        setCloseIconTint(AppCompatResources.getColorStateList(this.I, i2));
    }

    public final void setCloseIconTint(ColorStateList colorStateList) {
        if (this.s != colorStateList) {
            this.s = colorStateList;
            if (e()) {
                DrawableCompat.setTintList(this.r, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final float getCloseIconSize() {
        return this.t;
    }

    public final void setCloseIconSizeResource(int i2) {
        setCloseIconSize(this.I.getResources().getDimension(i2));
    }

    public final void setCloseIconSize(float f2) {
        if (this.t != f2) {
            this.t = f2;
            invalidateSelf();
            if (e()) {
                a();
            }
        }
    }

    public final void setCloseIconContentDescription(CharSequence charSequence) {
        if (this.u != charSequence) {
            this.u = BidiFormatter.getInstance().unicodeWrap(charSequence);
            invalidateSelf();
        }
    }

    public final CharSequence getCloseIconContentDescription() {
        return this.u;
    }

    public final boolean isCheckable() {
        return this.v;
    }

    public final void setCheckableResource(int i2) {
        setCheckable(this.I.getResources().getBoolean(i2));
    }

    public final void setCheckable(boolean z2) {
        if (this.v != z2) {
            this.v = z2;
            float b2 = b();
            if (!z2 && this.T) {
                this.T = false;
            }
            float b3 = b();
            invalidateSelf();
            if (b2 != b3) {
                a();
            }
        }
    }

    public final boolean isCheckedIconVisible() {
        return this.w;
    }

    @Deprecated
    public final boolean isCheckedIconEnabled() {
        return isCheckedIconVisible();
    }

    public final void setCheckedIconVisible(int i2) {
        setCheckedIconVisible(this.I.getResources().getBoolean(i2));
    }

    public final void setCheckedIconVisible(boolean z2) {
        if (this.w != z2) {
            boolean d2 = d();
            this.w = z2;
            boolean d3 = d();
            if (d2 != d3) {
                if (d3) {
                    c(this.x);
                } else {
                    b(this.x);
                }
                invalidateSelf();
                a();
            }
        }
    }

    @Deprecated
    public final void setCheckedIconEnabledResource(int i2) {
        setCheckedIconVisible(this.I.getResources().getBoolean(i2));
    }

    @Deprecated
    public final void setCheckedIconEnabled(boolean z2) {
        setCheckedIconVisible(z2);
    }

    public final Drawable getCheckedIcon() {
        return this.x;
    }

    public final void setCheckedIconResource(int i2) {
        setCheckedIcon(AppCompatResources.getDrawable(this.I, i2));
    }

    public final void setCheckedIcon(Drawable drawable) {
        if (this.x != drawable) {
            float b2 = b();
            this.x = drawable;
            float b3 = b();
            b(this.x);
            c(this.x);
            invalidateSelf();
            if (b2 != b3) {
                a();
            }
        }
    }

    public final h getShowMotionSpec() {
        return this.y;
    }

    public final void setShowMotionSpecResource(int i2) {
        setShowMotionSpec(h.createFromResource(this.I, i2));
    }

    public final void setShowMotionSpec(h hVar) {
        this.y = hVar;
    }

    public final h getHideMotionSpec() {
        return this.z;
    }

    public final void setHideMotionSpecResource(int i2) {
        setHideMotionSpec(h.createFromResource(this.I, i2));
    }

    public final void setHideMotionSpec(h hVar) {
        this.z = hVar;
    }

    public final float getChipStartPadding() {
        return this.A;
    }

    public final void setChipStartPaddingResource(int i2) {
        setChipStartPadding(this.I.getResources().getDimension(i2));
    }

    public final void setChipStartPadding(float f2) {
        if (this.A != f2) {
            this.A = f2;
            invalidateSelf();
            a();
        }
    }

    public final float getIconStartPadding() {
        return this.B;
    }

    public final void setIconStartPaddingResource(int i2) {
        setIconStartPadding(this.I.getResources().getDimension(i2));
    }

    public final void setIconStartPadding(float f2) {
        if (this.B != f2) {
            float b2 = b();
            this.B = f2;
            float b3 = b();
            invalidateSelf();
            if (b2 != b3) {
                a();
            }
        }
    }

    public final float getIconEndPadding() {
        return this.C;
    }

    public final void setIconEndPaddingResource(int i2) {
        setIconEndPadding(this.I.getResources().getDimension(i2));
    }

    public final void setIconEndPadding(float f2) {
        if (this.C != f2) {
            float b2 = b();
            this.C = f2;
            float b3 = b();
            invalidateSelf();
            if (b2 != b3) {
                a();
            }
        }
    }

    public final float getTextStartPadding() {
        return this.D;
    }

    public final void setTextStartPaddingResource(int i2) {
        setTextStartPadding(this.I.getResources().getDimension(i2));
    }

    public final void setTextStartPadding(float f2) {
        if (this.D != f2) {
            this.D = f2;
            invalidateSelf();
            a();
        }
    }

    public final float getTextEndPadding() {
        return this.E;
    }

    public final void setTextEndPaddingResource(int i2) {
        setTextEndPadding(this.I.getResources().getDimension(i2));
    }

    public final void setTextEndPadding(float f2) {
        if (this.E != f2) {
            this.E = f2;
            invalidateSelf();
            a();
        }
    }

    public final float getCloseIconStartPadding() {
        return this.F;
    }

    public final void setCloseIconStartPaddingResource(int i2) {
        setCloseIconStartPadding(this.I.getResources().getDimension(i2));
    }

    public final void setCloseIconStartPadding(float f2) {
        if (this.F != f2) {
            this.F = f2;
            invalidateSelf();
            if (e()) {
                a();
            }
        }
    }

    public final float getCloseIconEndPadding() {
        return this.G;
    }

    public final void setCloseIconEndPaddingResource(int i2) {
        setCloseIconEndPadding(this.I.getResources().getDimension(i2));
    }

    public final void setCloseIconEndPadding(float f2) {
        if (this.G != f2) {
            this.G = f2;
            invalidateSelf();
            if (e()) {
                a();
            }
        }
    }

    public final float getChipEndPadding() {
        return this.H;
    }

    public final void setChipEndPaddingResource(int i2) {
        setChipEndPadding(this.I.getResources().getDimension(i2));
    }

    public final void setChipEndPadding(float f2) {
        if (this.H != f2) {
            this.H = f2;
            invalidateSelf();
            a();
        }
    }

    public final int getMaxWidth() {
        return this.ah;
    }

    public final void setMaxWidth(int i2) {
        this.ah = i2;
    }
}
