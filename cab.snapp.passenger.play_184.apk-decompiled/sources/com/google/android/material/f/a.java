package com.google.android.material.f;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import androidx.appcompat.content.res.AppCompatResources;

public final class a {
    private a() {
    }

    public static ColorStateList getColorStateList(Context context, TypedArray typedArray, int i) {
        if (typedArray.hasValue(i)) {
            int resourceId = typedArray.getResourceId(i, 0);
            if (resourceId != 0) {
                ColorStateList colorStateList = AppCompatResources.getColorStateList(context, resourceId);
                if (colorStateList != null) {
                    return colorStateList;
                }
            }
        }
        return typedArray.getColorStateList(i);
    }

    public static Drawable getDrawable(Context context, TypedArray typedArray, int i) {
        if (typedArray.hasValue(i)) {
            int resourceId = typedArray.getResourceId(i, 0);
            if (resourceId != 0) {
                Drawable drawable = AppCompatResources.getDrawable(context, resourceId);
                if (drawable != null) {
                    return drawable;
                }
            }
        }
        return typedArray.getDrawable(i);
    }

    public static b getTextAppearance(Context context, TypedArray typedArray, int i) {
        if (typedArray.hasValue(i)) {
            int resourceId = typedArray.getResourceId(i, 0);
            if (resourceId != 0) {
                return new b(context, resourceId);
            }
        }
        return null;
    }
}
