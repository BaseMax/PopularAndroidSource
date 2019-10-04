package cab.snapp.snappuikit;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import cab.snapp.snappuikit.a;

public class SnappImageView extends AppCompatImageView {
    public static final float DEFAULT_BORDER_WIDTH = 0.0f;
    public static final float DEFAULT_RADIUS = 0.0f;
    public static final Shader.TileMode DEFAULT_TILE_MODE = Shader.TileMode.CLAMP;
    public static final String TAG = "RoundedImageView";

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f1597a = (!SnappImageView.class.desiredAssertionStatus());

    /* renamed from: b  reason: collision with root package name */
    private static final ImageView.ScaleType[] f1598b = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};
    private final float[] c;
    private Drawable d;
    private ColorStateList e;
    private float f;
    private ColorFilter g;
    private boolean h;
    private Drawable i;
    private boolean j;
    private boolean k;
    private boolean l;
    private int m;
    private int n;
    private ImageView.ScaleType o;
    private Shader.TileMode p;
    private Shader.TileMode q;

    /* renamed from: cab.snapp.snappuikit.SnappImageView$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f1599a = new int[ImageView.ScaleType.values().length];

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
                f1599a = r0
                int[] r0 = f1599a     // Catch:{ NoSuchFieldError -> 0x0014 }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.CENTER     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f1599a     // Catch:{ NoSuchFieldError -> 0x001f }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.CENTER_CROP     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = f1599a     // Catch:{ NoSuchFieldError -> 0x002a }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.CENTER_INSIDE     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                int[] r0 = f1599a     // Catch:{ NoSuchFieldError -> 0x0035 }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_CENTER     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                int[] r0 = f1599a     // Catch:{ NoSuchFieldError -> 0x0040 }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_START     // Catch:{ NoSuchFieldError -> 0x0040 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0040 }
                r2 = 5
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0040 }
            L_0x0040:
                int[] r0 = f1599a     // Catch:{ NoSuchFieldError -> 0x004b }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_END     // Catch:{ NoSuchFieldError -> 0x004b }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x004b }
                r2 = 6
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x004b }
            L_0x004b:
                int[] r0 = f1599a     // Catch:{ NoSuchFieldError -> 0x0056 }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_XY     // Catch:{ NoSuchFieldError -> 0x0056 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0056 }
                r2 = 7
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0056 }
            L_0x0056:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: cab.snapp.snappuikit.SnappImageView.AnonymousClass1.<clinit>():void");
        }
    }

    public SnappImageView(Context context) {
        super(context);
        this.c = new float[]{0.0f, 0.0f, 0.0f, 0.0f};
        this.e = ColorStateList.valueOf(-16777216);
        this.f = 0.0f;
        this.g = null;
        this.h = false;
        this.j = false;
        this.k = false;
        this.l = false;
        Shader.TileMode tileMode = DEFAULT_TILE_MODE;
        this.p = tileMode;
        this.q = tileMode;
    }

    public SnappImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SnappImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.c = new float[]{0.0f, 0.0f, 0.0f, 0.0f};
        this.e = ColorStateList.valueOf(-16777216);
        this.f = 0.0f;
        this.g = null;
        this.h = false;
        this.j = false;
        this.k = false;
        this.l = false;
        Shader.TileMode tileMode = DEFAULT_TILE_MODE;
        this.p = tileMode;
        this.q = tileMode;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.h.imageViewOptions, i2, 0);
        int i3 = obtainStyledAttributes.getInt(a.h.imageViewOptions_android_scaleType, -1);
        if (i3 >= 0) {
            setScaleType(f1598b[i3]);
        } else {
            setScaleType(ImageView.ScaleType.FIT_CENTER);
        }
        float dimensionPixelSize = (float) obtainStyledAttributes.getDimensionPixelSize(a.h.imageViewOptions_sivCornerRadius, -1);
        this.c[0] = (float) obtainStyledAttributes.getDimensionPixelSize(a.h.imageViewOptions_sivCornerRadiusTopLeft, -1);
        this.c[1] = (float) obtainStyledAttributes.getDimensionPixelSize(a.h.imageViewOptions_sivCornerRadiusTopRight, -1);
        this.c[2] = (float) obtainStyledAttributes.getDimensionPixelSize(a.h.imageViewOptions_sivCornerRadiusBottomRight, -1);
        this.c[3] = (float) obtainStyledAttributes.getDimensionPixelSize(a.h.imageViewOptions_sivCornerRadiusBottomLeft, -1);
        int length = this.c.length;
        boolean z = false;
        for (int i4 = 0; i4 < length; i4++) {
            float[] fArr = this.c;
            if (fArr[i4] < 0.0f) {
                fArr[i4] = 0.0f;
            } else {
                z = true;
            }
        }
        if (!z) {
            dimensionPixelSize = dimensionPixelSize < 0.0f ? 0.0f : dimensionPixelSize;
            int length2 = this.c.length;
            for (int i5 = 0; i5 < length2; i5++) {
                this.c[i5] = dimensionPixelSize;
            }
        }
        this.f = (float) obtainStyledAttributes.getDimensionPixelSize(a.h.imageViewOptions_sivBorderWidth, -1);
        if (this.f < 0.0f) {
            this.f = 0.0f;
        }
        this.e = obtainStyledAttributes.getColorStateList(a.h.imageViewOptions_sivBorderColor);
        if (this.e == null) {
            this.e = ColorStateList.valueOf(-16777216);
        }
        this.l = obtainStyledAttributes.getBoolean(a.h.imageViewOptions_sivMutateBackground, false);
        this.k = obtainStyledAttributes.getBoolean(a.h.imageViewOptions_sivOval, false);
        int i6 = obtainStyledAttributes.getInt(a.h.imageViewOptions_sivTileMode, -2);
        if (i6 != -2) {
            setTileModeX(a(i6));
            setTileModeY(a(i6));
        }
        int i7 = obtainStyledAttributes.getInt(a.h.imageViewOptions_sivTileModeX, -2);
        if (i7 != -2) {
            setTileModeX(a(i7));
        }
        int i8 = obtainStyledAttributes.getInt(a.h.imageViewOptions_sivTileModeY, -2);
        if (i8 != -2) {
            setTileModeY(a(i8));
        }
        b();
        a(true);
        if (this.l) {
            super.setBackgroundDrawable(this.d);
        }
        obtainStyledAttributes.recycle();
    }

    public float getCornerRadius() {
        return getMaxCornerRadius();
    }

    public float getMaxCornerRadius() {
        float f2 = 0.0f;
        for (float max : this.c) {
            f2 = Math.max(max, f2);
        }
        return f2;
    }

    public float getCornerRadius(int i2) {
        return this.c[i2];
    }

    public Shader.TileMode getTileModeY() {
        return this.q;
    }

    public float getBorderWidth() {
        return this.f;
    }

    public int getBorderColor() {
        return this.e.getDefaultColor();
    }

    public ColorStateList getBorderColors() {
        return this.e;
    }

    public boolean isOval() {
        return this.k;
    }

    public Shader.TileMode getTileModeX() {
        return this.p;
    }

    public void setCornerRadiusDimen(int i2) {
        float dimension = getResources().getDimension(i2);
        setCornerRadius(dimension, dimension, dimension, dimension);
    }

    public void setCornerRadiusDimen(int i2, int i3) {
        setCornerRadius(i2, (float) getResources().getDimensionPixelSize(i3));
    }

    public void setCornerRadius(float f2) {
        setCornerRadius(f2, f2, f2, f2);
    }

    public void setCornerRadius(int i2, float f2) {
        float[] fArr = this.c;
        if (fArr[i2] != f2) {
            fArr[i2] = f2;
            b();
            a(false);
            invalidate();
        }
    }

    public void setCornerRadius(float f2, float f3, float f4, float f5) {
        float[] fArr = this.c;
        if (fArr[0] != f2 || fArr[1] != f3 || fArr[2] != f5 || fArr[3] != f4) {
            float[] fArr2 = this.c;
            fArr2[0] = f2;
            fArr2[1] = f3;
            fArr2[3] = f4;
            fArr2[2] = f5;
            b();
            a(false);
            invalidate();
        }
    }

    public void setBorderWidth(int i2) {
        setBorderWidth(getResources().getDimension(i2));
    }

    public void setBorderWidth(float f2) {
        if (this.f != f2) {
            this.f = f2;
            b();
            a(false);
            invalidate();
        }
    }

    public void setBorderColor(int i2) {
        setBorderColor(ColorStateList.valueOf(i2));
    }

    public void setBorderColor(ColorStateList colorStateList) {
        if (!this.e.equals(colorStateList)) {
            if (colorStateList == null) {
                colorStateList = ColorStateList.valueOf(-16777216);
            }
            this.e = colorStateList;
            b();
            a(false);
            if (this.f > 0.0f) {
                invalidate();
            }
        }
    }

    public void setOval(boolean z) {
        this.k = z;
        b();
        a(false);
        invalidate();
    }

    public void setTileModeX(Shader.TileMode tileMode) {
        if (this.p != tileMode) {
            this.p = tileMode;
            b();
            a(false);
            invalidate();
        }
    }

    public void setTileModeY(Shader.TileMode tileMode) {
        if (this.q != tileMode) {
            this.q = tileMode;
            b();
            a(false);
            invalidate();
        }
    }

    public boolean mutatesBackground() {
        return this.l;
    }

    public void mutateBackground(boolean z) {
        if (this.l != z) {
            this.l = z;
            a(true);
            invalidate();
        }
    }

    private static Shader.TileMode a(int i2) {
        if (i2 == 0) {
            return Shader.TileMode.CLAMP;
        }
        if (i2 == 1) {
            return Shader.TileMode.REPEAT;
        }
        if (i2 != 2) {
            return null;
        }
        return Shader.TileMode.MIRROR;
    }

    private Drawable a() {
        Resources resources = getResources();
        Drawable drawable = null;
        if (resources == null) {
            return null;
        }
        int i2 = this.n;
        if (i2 != 0) {
            try {
                drawable = resources.getDrawable(i2);
            } catch (Exception unused) {
                new StringBuilder("Unable to find resource: ").append(this.n);
                this.n = 0;
            }
        }
        return cab.snapp.snappuikit.a.a.fromDrawable(drawable);
    }

    private void b() {
        a(this.i, this.o);
    }

    private void a(boolean z) {
        if (this.l) {
            if (z) {
                this.d = cab.snapp.snappuikit.a.a.fromDrawable(this.d);
            }
            a(this.d, ImageView.ScaleType.FIT_XY);
        }
    }

    private void c() {
        Drawable drawable = this.i;
        if (drawable != null && this.h) {
            this.i = drawable.mutate();
            if (this.j) {
                this.i.setColorFilter(this.g);
            }
        }
    }

    private void a(Drawable drawable, ImageView.ScaleType scaleType) {
        if (drawable != null) {
            if (drawable instanceof cab.snapp.snappuikit.a.a) {
                cab.snapp.snappuikit.a.a aVar = (cab.snapp.snappuikit.a.a) drawable;
                aVar.setScaleType(scaleType).setBorderWidth(this.f).setBorderColor(this.e).setOval(this.k).setTileModeX(this.p).setTileModeY(this.q);
                float[] fArr = this.c;
                if (fArr != null) {
                    aVar.setCornerRadius(fArr[0], fArr[1], fArr[2], fArr[3]);
                }
                c();
                return;
            }
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                for (int i2 = 0; i2 < numberOfLayers; i2++) {
                    a(layerDrawable.getDrawable(i2), scaleType);
                }
            }
        }
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    public ImageView.ScaleType getScaleType() {
        return this.o;
    }

    public void setScaleType(ImageView.ScaleType scaleType) {
        if (!f1597a && scaleType == null) {
            throw new AssertionError();
        } else if (this.o != scaleType) {
            this.o = scaleType;
            switch (AnonymousClass1.f1599a[scaleType.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    super.setScaleType(ImageView.ScaleType.FIT_XY);
                    break;
                default:
                    super.setScaleType(scaleType);
                    break;
            }
            b();
            a(false);
            invalidate();
        }
    }

    public void setImageDrawable(Drawable drawable) {
        this.m = 0;
        this.i = cab.snapp.snappuikit.a.a.fromDrawable(drawable);
        b();
        super.setImageDrawable(this.i);
    }

    public void setImageBitmap(Bitmap bitmap) {
        this.m = 0;
        this.i = cab.snapp.snappuikit.a.a.fromBitmap(bitmap);
        b();
        super.setImageDrawable(this.i);
    }

    public void setImageResource(int i2) {
        if (this.m != i2) {
            this.m = i2;
            this.i = d();
            b();
            super.setImageDrawable(this.i);
        }
    }

    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        setImageDrawable(getDrawable());
    }

    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    public void setBackgroundResource(int i2) {
        if (this.n != i2) {
            this.n = i2;
            this.d = a();
            setBackgroundDrawable(this.d);
        }
    }

    public void setBackgroundColor(int i2) {
        this.d = new ColorDrawable(i2);
        setBackgroundDrawable(this.d);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        if (this.g != colorFilter) {
            this.g = colorFilter;
            this.j = true;
            this.h = true;
            c();
            invalidate();
        }
    }

    public void setBackgroundDrawable(Drawable drawable) {
        this.d = drawable;
        a(true);
        super.setBackgroundDrawable(this.d);
    }

    private Drawable d() {
        Resources resources = getResources();
        Drawable drawable = null;
        if (resources == null) {
            return null;
        }
        int i2 = this.m;
        if (i2 != 0) {
            try {
                drawable = resources.getDrawable(i2);
            } catch (Exception unused) {
                new StringBuilder("Unable to find resource: ").append(this.m);
                this.m = 0;
            }
        }
        return cab.snapp.snappuikit.a.a.fromDrawable(drawable);
    }
}
