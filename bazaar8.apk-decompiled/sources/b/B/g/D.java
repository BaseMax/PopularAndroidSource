package b.b.g;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import b.b.j;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: AppCompatTextViewAutoSizeHelper */
public class D {

    /* renamed from: a  reason: collision with root package name */
    public static final RectF f2037a = new RectF();

    /* renamed from: b  reason: collision with root package name */
    public static ConcurrentHashMap<String, Method> f2038b = new ConcurrentHashMap<>();

    /* renamed from: c  reason: collision with root package name */
    public static ConcurrentHashMap<String, Field> f2039c = new ConcurrentHashMap<>();

    /* renamed from: d  reason: collision with root package name */
    public int f2040d = 0;

    /* renamed from: e  reason: collision with root package name */
    public boolean f2041e = false;

    /* renamed from: f  reason: collision with root package name */
    public float f2042f = -1.0f;

    /* renamed from: g  reason: collision with root package name */
    public float f2043g = -1.0f;

    /* renamed from: h  reason: collision with root package name */
    public float f2044h = -1.0f;

    /* renamed from: i  reason: collision with root package name */
    public int[] f2045i = new int[0];

    /* renamed from: j  reason: collision with root package name */
    public boolean f2046j = false;

    /* renamed from: k  reason: collision with root package name */
    public TextPaint f2047k;

    /* renamed from: l  reason: collision with root package name */
    public final TextView f2048l;
    public final Context m;

    public D(TextView textView) {
        this.f2048l = textView;
        this.m = this.f2048l.getContext();
    }

    public void a(AttributeSet attributeSet, int i2) {
        TypedArray obtainStyledAttributes = this.m.obtainStyledAttributes(attributeSet, j.AppCompatTextView, i2, 0);
        if (obtainStyledAttributes.hasValue(j.AppCompatTextView_autoSizeTextType)) {
            this.f2040d = obtainStyledAttributes.getInt(j.AppCompatTextView_autoSizeTextType, 0);
        }
        float dimension = obtainStyledAttributes.hasValue(j.AppCompatTextView_autoSizeStepGranularity) ? obtainStyledAttributes.getDimension(j.AppCompatTextView_autoSizeStepGranularity, -1.0f) : -1.0f;
        float dimension2 = obtainStyledAttributes.hasValue(j.AppCompatTextView_autoSizeMinTextSize) ? obtainStyledAttributes.getDimension(j.AppCompatTextView_autoSizeMinTextSize, -1.0f) : -1.0f;
        float dimension3 = obtainStyledAttributes.hasValue(j.AppCompatTextView_autoSizeMaxTextSize) ? obtainStyledAttributes.getDimension(j.AppCompatTextView_autoSizeMaxTextSize, -1.0f) : -1.0f;
        if (obtainStyledAttributes.hasValue(j.AppCompatTextView_autoSizePresetSizes)) {
            int resourceId = obtainStyledAttributes.getResourceId(j.AppCompatTextView_autoSizePresetSizes, 0);
            if (resourceId > 0) {
                TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
                a(obtainTypedArray);
                obtainTypedArray.recycle();
            }
        }
        obtainStyledAttributes.recycle();
        if (!k()) {
            this.f2040d = 0;
        } else if (this.f2040d == 1) {
            if (!this.f2046j) {
                DisplayMetrics displayMetrics = this.m.getResources().getDisplayMetrics();
                if (dimension2 == -1.0f) {
                    dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                }
                if (dimension3 == -1.0f) {
                    dimension3 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                }
                if (dimension == -1.0f) {
                    dimension = 1.0f;
                }
                a(dimension2, dimension3, dimension);
            }
            i();
        }
    }

    public void b(int i2) {
        if (!k()) {
            return;
        }
        if (i2 == 0) {
            b();
        } else if (i2 == 1) {
            DisplayMetrics displayMetrics = this.m.getResources().getDisplayMetrics();
            a(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (i()) {
                a();
            }
        } else {
            throw new IllegalArgumentException("Unknown auto-size text type: " + i2);
        }
    }

    public int c() {
        return Math.round(this.f2044h);
    }

    public int d() {
        return Math.round(this.f2043g);
    }

    public int e() {
        return Math.round(this.f2042f);
    }

    public int[] f() {
        return this.f2045i;
    }

    public int g() {
        return this.f2040d;
    }

    public boolean h() {
        return k() && this.f2040d != 0;
    }

    public final boolean i() {
        if (!k() || this.f2040d != 1) {
            this.f2041e = false;
        } else {
            if (!this.f2046j || this.f2045i.length == 0) {
                int floor = ((int) Math.floor((double) ((this.f2044h - this.f2043g) / this.f2042f))) + 1;
                int[] iArr = new int[floor];
                for (int i2 = 0; i2 < floor; i2++) {
                    iArr[i2] = Math.round(this.f2043g + (((float) i2) * this.f2042f));
                }
                this.f2045i = a(iArr);
            }
            this.f2041e = true;
        }
        return this.f2041e;
    }

    public final boolean j() {
        int length = this.f2045i.length;
        this.f2046j = length > 0;
        if (this.f2046j) {
            this.f2040d = 1;
            int[] iArr = this.f2045i;
            this.f2043g = (float) iArr[0];
            this.f2044h = (float) iArr[length - 1];
            this.f2042f = -1.0f;
        }
        return this.f2046j;
    }

    public final boolean k() {
        return !(this.f2048l instanceof AppCompatEditText);
    }

    public final void b() {
        this.f2040d = 0;
        this.f2043g = -1.0f;
        this.f2044h = -1.0f;
        this.f2042f = -1.0f;
        this.f2045i = new int[0];
        this.f2041e = false;
    }

    public final StaticLayout b(CharSequence charSequence, Layout.Alignment alignment, int i2, int i3) {
        TextDirectionHeuristic textDirectionHeuristic;
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.f2047k, i2);
        StaticLayout.Builder hyphenationFrequency = obtain.setAlignment(alignment).setLineSpacing(this.f2048l.getLineSpacingExtra(), this.f2048l.getLineSpacingMultiplier()).setIncludePad(this.f2048l.getIncludeFontPadding()).setBreakStrategy(this.f2048l.getBreakStrategy()).setHyphenationFrequency(this.f2048l.getHyphenationFrequency());
        if (i3 == -1) {
            i3 = Integer.MAX_VALUE;
        }
        hyphenationFrequency.setMaxLines(i3);
        try {
            if (Build.VERSION.SDK_INT >= 29) {
                textDirectionHeuristic = this.f2048l.getTextDirectionHeuristic();
            } else {
                textDirectionHeuristic = (TextDirectionHeuristic) b((Object) this.f2048l, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR);
            }
            obtain.setTextDirection(textDirectionHeuristic);
        } catch (ClassCastException unused) {
            Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
        }
        return obtain.build();
    }

    public void a(int i2, int i3, int i4, int i5) {
        if (k()) {
            DisplayMetrics displayMetrics = this.m.getResources().getDisplayMetrics();
            a(TypedValue.applyDimension(i5, (float) i2, displayMetrics), TypedValue.applyDimension(i5, (float) i3, displayMetrics), TypedValue.applyDimension(i5, (float) i4, displayMetrics));
            if (i()) {
                a();
            }
        }
    }

    public final StaticLayout b(CharSequence charSequence, Layout.Alignment alignment, int i2) {
        CharSequence charSequence2 = charSequence;
        StaticLayout staticLayout = new StaticLayout(charSequence2, this.f2047k, i2, alignment, this.f2048l.getLineSpacingMultiplier(), this.f2048l.getLineSpacingExtra(), this.f2048l.getIncludeFontPadding());
        return staticLayout;
    }

    public void a(int[] iArr, int i2) {
        if (k()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArr2 = new int[length];
                if (i2 == 0) {
                    iArr2 = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = this.m.getResources().getDisplayMetrics();
                    for (int i3 = 0; i3 < length; i3++) {
                        iArr2[i3] = Math.round(TypedValue.applyDimension(i2, (float) iArr[i3], displayMetrics));
                    }
                }
                this.f2045i = a(iArr2);
                if (!j()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.f2046j = false;
            }
            if (i()) {
                a();
            }
        }
    }

    public static <T> T b(Object obj, String str, T t) {
        try {
            return b(str).invoke(obj, new Object[0]);
        } catch (Exception e2) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e2);
            return t;
        }
    }

    public static Method b(String str) {
        try {
            Method method = f2038b.get(str);
            if (method == null) {
                method = TextView.class.getDeclaredMethod(str, new Class[0]);
                if (method != null) {
                    method.setAccessible(true);
                    f2038b.put(str, method);
                }
            }
            return method;
        } catch (Exception e2) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e2);
            return null;
        }
    }

    public final void a(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i2 = 0; i2 < length; i2++) {
                iArr[i2] = typedArray.getDimensionPixelSize(i2, -1);
            }
            this.f2045i = a(iArr);
            j();
        }
    }

    public final int[] a(int[] iArr) {
        if (r0 == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i2 : iArr) {
            if (i2 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i2)) < 0) {
                arrayList.add(Integer.valueOf(i2));
            }
        }
        if (r0 == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i3 = 0; i3 < size; i3++) {
            iArr2[i3] = ((Integer) arrayList.get(i3)).intValue();
        }
        return iArr2;
    }

    public final void a(float f2, float f3, float f4) {
        if (f2 <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f2 + "px) is less or equal to (0px)");
        } else if (f3 <= f2) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f3 + "px) is less or equal to minimum auto-size text size (" + f2 + "px)");
        } else if (f4 > 0.0f) {
            this.f2040d = 1;
            this.f2043g = f2;
            this.f2044h = f3;
            this.f2042f = f4;
            this.f2046j = false;
        } else {
            throw new IllegalArgumentException("The auto-size step granularity (" + f4 + "px) is less or equal to (0px)");
        }
    }

    public void a() {
        boolean z;
        int i2;
        if (h()) {
            if (this.f2041e) {
                if (this.f2048l.getMeasuredHeight() > 0 && this.f2048l.getMeasuredWidth() > 0) {
                    if (Build.VERSION.SDK_INT >= 29) {
                        z = this.f2048l.isHorizontallyScrollable();
                    } else {
                        z = ((Boolean) b((Object) this.f2048l, "getHorizontallyScrolling", false)).booleanValue();
                    }
                    if (z) {
                        i2 = 1048576;
                    } else {
                        i2 = (this.f2048l.getMeasuredWidth() - this.f2048l.getTotalPaddingLeft()) - this.f2048l.getTotalPaddingRight();
                    }
                    int height = (this.f2048l.getHeight() - this.f2048l.getCompoundPaddingBottom()) - this.f2048l.getCompoundPaddingTop();
                    if (i2 > 0 && height > 0) {
                        synchronized (f2037a) {
                            f2037a.setEmpty();
                            f2037a.right = (float) i2;
                            f2037a.bottom = (float) height;
                            float a2 = (float) a(f2037a);
                            if (a2 != this.f2048l.getTextSize()) {
                                a(0, a2);
                            }
                        }
                    }
                }
                return;
            }
            this.f2041e = true;
        }
    }

    public void a(int i2, float f2) {
        Resources resources;
        Context context = this.m;
        if (context == null) {
            resources = Resources.getSystem();
        } else {
            resources = context.getResources();
        }
        a(TypedValue.applyDimension(i2, f2, resources.getDisplayMetrics()));
    }

    public final void a(float f2) {
        if (f2 != this.f2048l.getPaint().getTextSize()) {
            this.f2048l.getPaint().setTextSize(f2);
            boolean isInLayout = Build.VERSION.SDK_INT >= 18 ? this.f2048l.isInLayout() : false;
            if (this.f2048l.getLayout() != null) {
                this.f2041e = false;
                try {
                    Method b2 = b("nullLayouts");
                    if (b2 != null) {
                        b2.invoke(this.f2048l, new Object[0]);
                    }
                } catch (Exception e2) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e2);
                }
                if (!isInLayout) {
                    this.f2048l.requestLayout();
                } else {
                    this.f2048l.forceLayout();
                }
                this.f2048l.invalidate();
            }
        }
    }

    public final int a(RectF rectF) {
        int length = this.f2045i.length;
        if (length != 0) {
            int i2 = length - 1;
            int i3 = 1;
            int i4 = 0;
            while (i3 <= i2) {
                int i5 = (i3 + i2) / 2;
                if (a(this.f2045i[i5], rectF)) {
                    int i6 = i5 + 1;
                    i4 = i3;
                    i3 = i6;
                } else {
                    i4 = i5 - 1;
                    i2 = i4;
                }
            }
            return this.f2045i[i4];
        }
        throw new IllegalStateException("No available text sizes to choose from.");
    }

    public void a(int i2) {
        TextPaint textPaint = this.f2047k;
        if (textPaint == null) {
            this.f2047k = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.f2047k.set(this.f2048l.getPaint());
        this.f2047k.setTextSize((float) i2);
    }

    public StaticLayout a(CharSequence charSequence, Layout.Alignment alignment, int i2, int i3) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 23) {
            return b(charSequence, alignment, i2, i3);
        }
        if (i4 >= 16) {
            return b(charSequence, alignment, i2);
        }
        return a(charSequence, alignment, i2);
    }

    public final boolean a(int i2, RectF rectF) {
        CharSequence text = this.f2048l.getText();
        TransformationMethod transformationMethod = this.f2048l.getTransformationMethod();
        if (transformationMethod != null) {
            CharSequence transformation = transformationMethod.getTransformation(text, this.f2048l);
            if (transformation != null) {
                text = transformation;
            }
        }
        int maxLines = Build.VERSION.SDK_INT >= 16 ? this.f2048l.getMaxLines() : -1;
        a(i2);
        StaticLayout a2 = a(text, (Layout.Alignment) b((Object) this.f2048l, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines);
        return (maxLines == -1 || (a2.getLineCount() <= maxLines && a2.getLineEnd(a2.getLineCount() - 1) == text.length())) && ((float) a2.getHeight()) <= rectF.bottom;
    }

    public final StaticLayout a(CharSequence charSequence, Layout.Alignment alignment, int i2) {
        CharSequence charSequence2 = charSequence;
        StaticLayout staticLayout = new StaticLayout(charSequence2, this.f2047k, i2, alignment, ((Float) a((Object) this.f2048l, "mSpacingMult", Float.valueOf(1.0f))).floatValue(), ((Float) a((Object) this.f2048l, "mSpacingAdd", Float.valueOf(0.0f))).floatValue(), ((Boolean) a((Object) this.f2048l, "mIncludePad", true)).booleanValue());
        return staticLayout;
    }

    public static <T> T a(Object obj, String str, T t) {
        try {
            Field a2 = a(str);
            if (a2 == null) {
                return t;
            }
            return a2.get(obj);
        } catch (IllegalAccessException e2) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e2);
            return t;
        }
    }

    public static Field a(String str) {
        try {
            Field field = f2039c.get(str);
            if (field == null) {
                field = TextView.class.getDeclaredField(str);
                if (field != null) {
                    field.setAccessible(true);
                    f2039c.put(str, field);
                }
            }
            return field;
        } catch (NoSuchFieldException e2) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e2);
            return null;
        }
    }
}
