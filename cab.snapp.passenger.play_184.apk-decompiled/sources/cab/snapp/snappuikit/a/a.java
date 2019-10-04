package cab.snapp.snappuikit.a;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.widget.ImageView;
import java.util.HashSet;

public final class a extends Drawable {
    public static final int DEFAULT_BORDER_COLOR = -16777216;
    public static final String TAG = "RoundedDrawable";

    /* renamed from: a  reason: collision with root package name */
    private final RectF f1624a = new RectF();

    /* renamed from: b  reason: collision with root package name */
    private final RectF f1625b = new RectF();
    private final RectF c = new RectF();
    private final Bitmap d;
    private final Paint e;
    private final int f;
    private final int g;
    private final RectF h = new RectF();
    private final Paint i;
    private final Matrix j = new Matrix();
    private final RectF k = new RectF();
    private Shader.TileMode l = Shader.TileMode.CLAMP;
    private Shader.TileMode m = Shader.TileMode.CLAMP;
    private boolean n = true;
    private float o = 0.0f;
    private final boolean[] p = {true, true, true, true};
    private boolean q = false;
    private float r = 0.0f;
    private ColorStateList s = ColorStateList.valueOf(-16777216);
    private ImageView.ScaleType t = ImageView.ScaleType.FIT_CENTER;

    /* renamed from: cab.snapp.snappuikit.a.a$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f1626a = new int[ImageView.ScaleType.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(14:0|1|2|3|4|5|6|7|8|9|10|11|12|(3:13|14|16)) */
        /* JADX WARNING: Can't wrap try/catch for region: R(16:0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|16) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0040 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x004b */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x002a */
        /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0035 */
        static {
            /*
                android.widget.ImageView$ScaleType[] r0 = android.widget.ImageView.ScaleType.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f1626a = r0
                int[] r0 = f1626a     // Catch:{ NoSuchFieldError -> 0x0014 }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.CENTER     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f1626a     // Catch:{ NoSuchFieldError -> 0x001f }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.CENTER_CROP     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = f1626a     // Catch:{ NoSuchFieldError -> 0x002a }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.CENTER_INSIDE     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                int[] r0 = f1626a     // Catch:{ NoSuchFieldError -> 0x0035 }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_CENTER     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                int[] r0 = f1626a     // Catch:{ NoSuchFieldError -> 0x0040 }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_END     // Catch:{ NoSuchFieldError -> 0x0040 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0040 }
                r2 = 5
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0040 }
            L_0x0040:
                int[] r0 = f1626a     // Catch:{ NoSuchFieldError -> 0x004b }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_START     // Catch:{ NoSuchFieldError -> 0x004b }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x004b }
                r2 = 6
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x004b }
            L_0x004b:
                int[] r0 = f1626a     // Catch:{ NoSuchFieldError -> 0x0056 }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_XY     // Catch:{ NoSuchFieldError -> 0x0056 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0056 }
                r2 = 7
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0056 }
            L_0x0056:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: cab.snapp.snappuikit.a.a.AnonymousClass1.<clinit>():void");
        }
    }

    public final int getOpacity() {
        return -3;
    }

    public a(Bitmap bitmap) {
        this.d = bitmap;
        this.f = bitmap.getWidth();
        this.g = bitmap.getHeight();
        this.c.set(0.0f, 0.0f, (float) this.f, (float) this.g);
        this.e = new Paint();
        this.e.setStyle(Paint.Style.FILL);
        this.e.setAntiAlias(true);
        this.i = new Paint();
        this.i.setStyle(Paint.Style.STROKE);
        this.i.setAntiAlias(true);
        this.i.setColor(this.s.getColorForState(getState(), -16777216));
        this.i.setStrokeWidth(this.r);
    }

    public static a fromBitmap(Bitmap bitmap) {
        if (bitmap != null) {
            return new a(bitmap);
        }
        return null;
    }

    public static Drawable fromDrawable(Drawable drawable) {
        if (drawable != null) {
            if (drawable instanceof a) {
                return drawable;
            }
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                for (int i2 = 0; i2 < numberOfLayers; i2++) {
                    layerDrawable.setDrawableByLayerId(layerDrawable.getId(i2), fromDrawable(layerDrawable.getDrawable(i2)));
                }
                return layerDrawable;
            }
            Bitmap drawableToBitmap = drawableToBitmap(drawable);
            if (drawableToBitmap != null) {
                drawable = new a(drawableToBitmap);
            }
        }
        return drawable;
    }

    public static Bitmap drawableToBitmap(Drawable drawable) {
        Bitmap bitmap;
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        try {
            bitmap = Bitmap.createBitmap(Math.max(drawable.getIntrinsicWidth(), 2), Math.max(drawable.getIntrinsicHeight(), 2), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
        } catch (Exception e2) {
            e2.printStackTrace();
            bitmap = null;
        }
        return bitmap;
    }

    public final Bitmap getSourceBitmap() {
        return this.d;
    }

    public final boolean isStateful() {
        return this.s.isStateful();
    }

    /* access modifiers changed from: protected */
    public final boolean onStateChange(int[] iArr) {
        int colorForState = this.s.getColorForState(iArr, 0);
        if (this.i.getColor() == colorForState) {
            return super.onStateChange(iArr);
        }
        this.i.setColor(colorForState);
        return true;
    }

    private void a() {
        float f2;
        float f3;
        float f4;
        int i2 = AnonymousClass1.f1626a[this.t.ordinal()];
        if (i2 == 1) {
            this.h.set(this.f1624a);
            RectF rectF = this.h;
            float f5 = this.r;
            rectF.inset(f5 / 2.0f, f5 / 2.0f);
            this.j.reset();
            this.j.setTranslate((float) ((int) (((this.h.width() - ((float) this.f)) * 0.5f) + 0.5f)), (float) ((int) (((this.h.height() - ((float) this.g)) * 0.5f) + 0.5f)));
        } else if (i2 == 2) {
            this.h.set(this.f1624a);
            RectF rectF2 = this.h;
            float f6 = this.r;
            rectF2.inset(f6 / 2.0f, f6 / 2.0f);
            this.j.reset();
            float f7 = 0.0f;
            if (((float) this.f) * this.h.height() > this.h.width() * ((float) this.g)) {
                f3 = this.h.height() / ((float) this.g);
                f2 = (this.h.width() - (((float) this.f) * f3)) * 0.5f;
            } else {
                f3 = this.h.width() / ((float) this.f);
                f7 = (this.h.height() - (((float) this.g) * f3)) * 0.5f;
                f2 = 0.0f;
            }
            this.j.setScale(f3, f3);
            Matrix matrix = this.j;
            float f8 = this.r;
            matrix.postTranslate(((float) ((int) (f2 + 0.5f))) + (f8 / 2.0f), ((float) ((int) (f7 + 0.5f))) + (f8 / 2.0f));
        } else if (i2 == 3) {
            this.j.reset();
            if (((float) this.f) > this.f1624a.width() || ((float) this.g) > this.f1624a.height()) {
                f4 = Math.min(this.f1624a.width() / ((float) this.f), this.f1624a.height() / ((float) this.g));
            } else {
                f4 = 1.0f;
            }
            this.j.setScale(f4, f4);
            this.j.postTranslate((float) ((int) (((this.f1624a.width() - (((float) this.f) * f4)) * 0.5f) + 0.5f)), (float) ((int) (((this.f1624a.height() - (((float) this.g) * f4)) * 0.5f) + 0.5f)));
            this.h.set(this.c);
            this.j.mapRect(this.h);
            RectF rectF3 = this.h;
            float f9 = this.r;
            rectF3.inset(f9 / 2.0f, f9 / 2.0f);
            this.j.setRectToRect(this.c, this.h, Matrix.ScaleToFit.FILL);
        } else if (i2 == 5) {
            this.h.set(this.c);
            this.j.setRectToRect(this.c, this.f1624a, Matrix.ScaleToFit.END);
            this.j.mapRect(this.h);
            RectF rectF4 = this.h;
            float f10 = this.r;
            rectF4.inset(f10 / 2.0f, f10 / 2.0f);
            this.j.setRectToRect(this.c, this.h, Matrix.ScaleToFit.FILL);
        } else if (i2 == 6) {
            this.h.set(this.c);
            this.j.setRectToRect(this.c, this.f1624a, Matrix.ScaleToFit.START);
            this.j.mapRect(this.h);
            RectF rectF5 = this.h;
            float f11 = this.r;
            rectF5.inset(f11 / 2.0f, f11 / 2.0f);
            this.j.setRectToRect(this.c, this.h, Matrix.ScaleToFit.FILL);
        } else if (i2 != 7) {
            this.h.set(this.c);
            this.j.setRectToRect(this.c, this.f1624a, Matrix.ScaleToFit.CENTER);
            this.j.mapRect(this.h);
            RectF rectF6 = this.h;
            float f12 = this.r;
            rectF6.inset(f12 / 2.0f, f12 / 2.0f);
            this.j.setRectToRect(this.c, this.h, Matrix.ScaleToFit.FILL);
        } else {
            this.h.set(this.f1624a);
            RectF rectF7 = this.h;
            float f13 = this.r;
            rectF7.inset(f13 / 2.0f, f13 / 2.0f);
            this.j.reset();
            this.j.setRectToRect(this.c, this.h, Matrix.ScaleToFit.FILL);
        }
        this.f1625b.set(this.h);
        this.n = true;
    }

    /* access modifiers changed from: protected */
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f1624a.set(rect);
        a();
    }

    public final void draw(Canvas canvas) {
        if (this.n) {
            BitmapShader bitmapShader = new BitmapShader(this.d, this.l, this.m);
            if (this.l == Shader.TileMode.CLAMP && this.m == Shader.TileMode.CLAMP) {
                bitmapShader.setLocalMatrix(this.j);
            }
            this.e.setShader(bitmapShader);
            this.n = false;
        }
        if (this.q) {
            if (this.r > 0.0f) {
                canvas.drawOval(this.f1625b, this.e);
                canvas.drawOval(this.h, this.i);
                return;
            }
            canvas.drawOval(this.f1625b, this.e);
        } else if (a(this.p)) {
            float f2 = this.o;
            if (this.r > 0.0f) {
                canvas.drawRoundRect(this.f1625b, f2, f2, this.e);
                canvas.drawRoundRect(this.h, f2, f2, this.i);
                a(canvas);
                if (!b(this.p) && this.o != 0.0f) {
                    float f3 = this.f1625b.left;
                    float f4 = this.f1625b.top;
                    float width = f3 + this.f1625b.width();
                    float height = f4 + this.f1625b.height();
                    float f5 = this.o;
                    float f6 = this.r / 2.0f;
                    if (!this.p[0]) {
                        canvas.drawLine(f3 - f6, f4, f3 + f5, f4, this.i);
                        canvas.drawLine(f3, f4 - f6, f3, f4 + f5, this.i);
                    }
                    if (!this.p[1]) {
                        Canvas canvas2 = canvas;
                        float f7 = width;
                        canvas2.drawLine((width - f5) - f6, f4, f7, f4, this.i);
                        canvas2.drawLine(width, f4 - f6, f7, f4 + f5, this.i);
                    }
                    if (!this.p[2]) {
                        Canvas canvas3 = canvas;
                        float f8 = height;
                        canvas3.drawLine((width - f5) - f6, height, width + f6, f8, this.i);
                        canvas3.drawLine(width, height - f5, width, f8, this.i);
                    }
                    if (!this.p[3]) {
                        canvas.drawLine(f3 - f6, height, f3 + f5, height, this.i);
                        canvas.drawLine(f3, height - f5, f3, height, this.i);
                    }
                }
                return;
            }
            canvas.drawRoundRect(this.f1625b, f2, f2, this.e);
            a(canvas);
        } else {
            canvas.drawRect(this.f1625b, this.e);
            if (this.r > 0.0f) {
                canvas.drawRect(this.h, this.i);
            }
        }
    }

    private void a(Canvas canvas) {
        if (!b(this.p) && this.o != 0.0f) {
            float f2 = this.f1625b.left;
            float f3 = this.f1625b.top;
            float width = this.f1625b.width() + f2;
            float height = this.f1625b.height() + f3;
            float f4 = this.o;
            if (!this.p[0]) {
                this.k.set(f2, f3, f2 + f4, f3 + f4);
                canvas.drawRect(this.k, this.e);
            }
            if (!this.p[1]) {
                this.k.set(width - f4, f3, width, f4);
                canvas.drawRect(this.k, this.e);
            }
            if (!this.p[2]) {
                this.k.set(width - f4, height - f4, width, height);
                canvas.drawRect(this.k, this.e);
            }
            if (!this.p[3]) {
                this.k.set(f2, height - f4, f4 + f2, height);
                canvas.drawRect(this.k, this.e);
            }
        }
    }

    public final int getAlpha() {
        return this.e.getAlpha();
    }

    public final void setAlpha(int i2) {
        this.e.setAlpha(i2);
        invalidateSelf();
    }

    public final ColorFilter getColorFilter() {
        return this.e.getColorFilter();
    }

    public final void setColorFilter(ColorFilter colorFilter) {
        this.e.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public final void setDither(boolean z) {
        this.e.setDither(z);
        invalidateSelf();
    }

    public final void setFilterBitmap(boolean z) {
        this.e.setFilterBitmap(z);
        invalidateSelf();
    }

    public final int getIntrinsicWidth() {
        return this.f;
    }

    public final int getIntrinsicHeight() {
        return this.g;
    }

    public final float getCornerRadius() {
        return this.o;
    }

    public final float getCornerRadius(int i2) {
        if (this.p[i2]) {
            return this.o;
        }
        return 0.0f;
    }

    public final a setCornerRadius(float f2) {
        setCornerRadius(f2, f2, f2, f2);
        return this;
    }

    public final a setCornerRadius(int i2, float f2) {
        if (f2 != 0.0f) {
            float f3 = this.o;
            if (!(f3 == 0.0f || f3 == f2)) {
                throw new IllegalArgumentException("Multiple nonzero corner radii not yet supported.");
            }
        }
        if (f2 == 0.0f) {
            if (a(i2, this.p)) {
                this.o = 0.0f;
            }
            this.p[i2] = false;
        } else {
            if (this.o == 0.0f) {
                this.o = f2;
            }
            this.p[i2] = true;
        }
        return this;
    }

    public final a setCornerRadius(float f2, float f3, float f4, float f5) {
        HashSet hashSet = new HashSet(4);
        hashSet.add(Float.valueOf(f2));
        hashSet.add(Float.valueOf(f3));
        hashSet.add(Float.valueOf(f4));
        hashSet.add(Float.valueOf(f5));
        hashSet.remove(Float.valueOf(0.0f));
        if (hashSet.size() <= 1) {
            if (!hashSet.isEmpty()) {
                float floatValue = ((Float) hashSet.iterator().next()).floatValue();
                if (Float.isInfinite(floatValue) || Float.isNaN(floatValue) || floatValue < 0.0f) {
                    throw new IllegalArgumentException("Invalid radius value: ".concat(String.valueOf(floatValue)));
                }
                this.o = floatValue;
            } else {
                this.o = 0.0f;
            }
            boolean z = false;
            this.p[0] = f2 > 0.0f;
            this.p[1] = f3 > 0.0f;
            this.p[2] = f4 > 0.0f;
            boolean[] zArr = this.p;
            if (f5 > 0.0f) {
                z = true;
            }
            zArr[3] = z;
            return this;
        }
        throw new IllegalArgumentException("Multiple nonzero corner radii not yet supported.");
    }

    public final float getBorderWidth() {
        return this.r;
    }

    public final a setBorderWidth(float f2) {
        this.r = f2;
        this.i.setStrokeWidth(this.r);
        return this;
    }

    public final int getBorderColor() {
        return this.s.getDefaultColor();
    }

    public final a setBorderColor(int i2) {
        return setBorderColor(ColorStateList.valueOf(i2));
    }

    public final ColorStateList getBorderColors() {
        return this.s;
    }

    public final a setBorderColor(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.s = colorStateList;
        this.i.setColor(this.s.getColorForState(getState(), -16777216));
        return this;
    }

    public final boolean isOval() {
        return this.q;
    }

    public final a setOval(boolean z) {
        this.q = z;
        return this;
    }

    public final ImageView.ScaleType getScaleType() {
        return this.t;
    }

    public final a setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType == null) {
            scaleType = ImageView.ScaleType.FIT_CENTER;
        }
        if (this.t != scaleType) {
            this.t = scaleType;
            a();
        }
        return this;
    }

    public final Shader.TileMode getTileModeX() {
        return this.l;
    }

    public final a setTileModeX(Shader.TileMode tileMode) {
        if (this.l != tileMode) {
            this.l = tileMode;
            this.n = true;
            invalidateSelf();
        }
        return this;
    }

    public final Shader.TileMode getTileModeY() {
        return this.m;
    }

    public final a setTileModeY(Shader.TileMode tileMode) {
        if (this.m != tileMode) {
            this.m = tileMode;
            this.n = true;
            invalidateSelf();
        }
        return this;
    }

    private static boolean a(int i2, boolean[] zArr) {
        int length = zArr.length;
        int i3 = 0;
        while (true) {
            boolean z = true;
            if (i3 >= length) {
                return true;
            }
            boolean z2 = zArr[i3];
            if (i3 != i2) {
                z = false;
            }
            if (z2 != z) {
                return false;
            }
            i3++;
        }
    }

    private static boolean a(boolean[] zArr) {
        for (boolean z : zArr) {
            if (z) {
                return true;
            }
        }
        return false;
    }

    private static boolean b(boolean[] zArr) {
        for (boolean z : zArr) {
            if (z) {
                return false;
            }
        }
        return true;
    }

    public final Bitmap toBitmap() {
        return drawableToBitmap(this);
    }
}
