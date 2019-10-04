package com.google.android.material.f;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import androidx.core.content.res.ResourcesCompat;
import com.google.android.material.a;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    boolean f3882a = false;

    /* renamed from: b  reason: collision with root package name */
    Typeface f3883b;
    private final int c;
    public final String fontFamily;
    public final ColorStateList shadowColor;
    public final float shadowDx;
    public final float shadowDy;
    public final float shadowRadius;
    public final boolean textAllCaps;
    public final ColorStateList textColor;
    public final ColorStateList textColorHint;
    public final ColorStateList textColorLink;
    public final float textSize;
    public final int textStyle;
    public final int typeface;

    public b(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, a.k.TextAppearance);
        this.textSize = obtainStyledAttributes.getDimension(a.k.TextAppearance_android_textSize, 0.0f);
        this.textColor = a.getColorStateList(context, obtainStyledAttributes, a.k.TextAppearance_android_textColor);
        this.textColorHint = a.getColorStateList(context, obtainStyledAttributes, a.k.TextAppearance_android_textColorHint);
        this.textColorLink = a.getColorStateList(context, obtainStyledAttributes, a.k.TextAppearance_android_textColorLink);
        this.textStyle = obtainStyledAttributes.getInt(a.k.TextAppearance_android_textStyle, 0);
        this.typeface = obtainStyledAttributes.getInt(a.k.TextAppearance_android_typeface, 1);
        int i2 = a.k.TextAppearance_fontFamily;
        i2 = !obtainStyledAttributes.hasValue(i2) ? a.k.TextAppearance_android_fontFamily : i2;
        this.c = obtainStyledAttributes.getResourceId(i2, 0);
        this.fontFamily = obtainStyledAttributes.getString(i2);
        this.textAllCaps = obtainStyledAttributes.getBoolean(a.k.TextAppearance_textAllCaps, false);
        this.shadowColor = a.getColorStateList(context, obtainStyledAttributes, a.k.TextAppearance_android_shadowColor);
        this.shadowDx = obtainStyledAttributes.getFloat(a.k.TextAppearance_android_shadowDx, 0.0f);
        this.shadowDy = obtainStyledAttributes.getFloat(a.k.TextAppearance_android_shadowDy, 0.0f);
        this.shadowRadius = obtainStyledAttributes.getFloat(a.k.TextAppearance_android_shadowRadius, 0.0f);
        obtainStyledAttributes.recycle();
    }

    public final Typeface getFont(Context context) {
        if (this.f3882a) {
            return this.f3883b;
        }
        if (!context.isRestricted()) {
            try {
                this.f3883b = ResourcesCompat.getFont(context, this.c);
                if (this.f3883b != null) {
                    this.f3883b = Typeface.create(this.f3883b, this.textStyle);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception unused2) {
                new StringBuilder("Error loading font ").append(this.fontFamily);
            }
        }
        a();
        this.f3882a = true;
        return this.f3883b;
    }

    public final void getFontAsync(Context context, final TextPaint textPaint, final ResourcesCompat.FontCallback fontCallback) {
        if (this.f3882a) {
            updateTextPaintMeasureState(textPaint, this.f3883b);
            return;
        }
        a();
        if (context.isRestricted()) {
            this.f3882a = true;
            updateTextPaintMeasureState(textPaint, this.f3883b);
            return;
        }
        try {
            ResourcesCompat.getFont(context, this.c, new ResourcesCompat.FontCallback() {
                public final void onFontRetrieved(Typeface typeface) {
                    b bVar = b.this;
                    bVar.f3883b = Typeface.create(typeface, bVar.textStyle);
                    b.this.updateTextPaintMeasureState(textPaint, typeface);
                    b.this.f3882a = true;
                    fontCallback.onFontRetrieved(typeface);
                }

                public final void onFontRetrievalFailed(int i) {
                    b.this.a();
                    b.this.f3882a = true;
                    fontCallback.onFontRetrievalFailed(i);
                }
            }, null);
        } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
        } catch (Exception unused2) {
            new StringBuilder("Error loading font ").append(this.fontFamily);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        if (this.f3883b == null) {
            this.f3883b = Typeface.create(this.fontFamily, this.textStyle);
        }
        if (this.f3883b == null) {
            int i = this.typeface;
            if (i == 1) {
                this.f3883b = Typeface.SANS_SERIF;
            } else if (i == 2) {
                this.f3883b = Typeface.SERIF;
            } else if (i != 3) {
                this.f3883b = Typeface.DEFAULT;
            } else {
                this.f3883b = Typeface.MONOSPACE;
            }
            Typeface typeface2 = this.f3883b;
            if (typeface2 != null) {
                this.f3883b = Typeface.create(typeface2, this.textStyle);
            }
        }
    }

    public final void updateDrawState(Context context, TextPaint textPaint, ResourcesCompat.FontCallback fontCallback) {
        updateMeasureState(context, textPaint, fontCallback);
        ColorStateList colorStateList = this.textColor;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, this.textColor.getDefaultColor()) : -16777216);
        float f = this.shadowRadius;
        float f2 = this.shadowDx;
        float f3 = this.shadowDy;
        ColorStateList colorStateList2 = this.shadowColor;
        textPaint.setShadowLayer(f, f2, f3, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, this.shadowColor.getDefaultColor()) : 0);
    }

    public final void updateMeasureState(Context context, TextPaint textPaint, ResourcesCompat.FontCallback fontCallback) {
        if (c.shouldLoadFontSynchronously()) {
            updateTextPaintMeasureState(textPaint, getFont(context));
            return;
        }
        getFontAsync(context, textPaint, fontCallback);
        if (!this.f3882a) {
            updateTextPaintMeasureState(textPaint, this.f3883b);
        }
    }

    public final void updateTextPaintMeasureState(TextPaint textPaint, Typeface typeface2) {
        textPaint.setTypeface(typeface2);
        int style = (typeface2.getStyle() ^ -1) & this.textStyle;
        textPaint.setFakeBoldText((style & 1) != 0);
        textPaint.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.textSize);
    }
}
