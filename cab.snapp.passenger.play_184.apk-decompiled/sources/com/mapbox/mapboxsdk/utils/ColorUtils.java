package com.mapbox.mapboxsdk.utils;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.TypedValue;
import android.widget.ImageView;
import androidx.core.widget.ImageViewCompat;
import com.mapbox.mapboxsdk.R;
import com.mapbox.mapboxsdk.exceptions.ConversionException;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ColorUtils {
    public static float[] colorToGlRgbaArray(int i) {
        return new float[]{((float) ((i >> 16) & 255)) / 255.0f, ((float) ((i >> 8) & 255)) / 255.0f, ((float) (i & 255)) / 255.0f, ((float) ((i >> 24) & 255)) / 255.0f};
    }

    public static float[] colorToRgbaArray(int i) {
        return new float[]{(float) ((i >> 16) & 255), (float) ((i >> 8) & 255), (float) (i & 255), ((float) ((i >> 24) & 255)) / 255.0f};
    }

    public static int getPrimaryColor(Context context) {
        try {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(context.getResources().getIdentifier("colorPrimary", "attrs", context.getPackageName()), typedValue, true);
            return typedValue.data;
        } catch (Exception unused) {
            return getColorCompat(context, R.color.mapbox_blue);
        }
    }

    public static int getPrimaryDarkColor(Context context) {
        try {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(context.getResources().getIdentifier("colorPrimaryDark", "attrs", context.getPackageName()), typedValue, true);
            return typedValue.data;
        } catch (Exception unused) {
            return getColorCompat(context, R.color.mapbox_blue);
        }
    }

    public static int getAccentColor(Context context) {
        try {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(context.getResources().getIdentifier("colorAccent", "attrs", context.getPackageName()), typedValue, true);
            return typedValue.data;
        } catch (Exception unused) {
            return getColorCompat(context, R.color.mapbox_gray);
        }
    }

    public static ColorStateList getSelector(int i) {
        return new ColorStateList(new int[][]{new int[]{16842919}, new int[0]}, new int[]{i, i});
    }

    public static void setTintList(ImageView imageView, int i) {
        ImageViewCompat.setImageTintList(imageView, getSelector(i));
    }

    public static int rgbaToColor(String str) {
        Matcher matcher = Pattern.compile("rgba?\\s*\\(\\s*(\\d+\\.?\\d*)\\s*,\\s*(\\d+\\.?\\d*)\\s*,\\s*(\\d+\\.?\\d*)\\s*,?\\s*(\\d+\\.?\\d*)?\\s*\\)").matcher(str);
        if (matcher.matches() && matcher.groupCount() == 3) {
            return Color.rgb((int) Float.parseFloat(matcher.group(1)), (int) Float.parseFloat(matcher.group(2)), (int) Float.parseFloat(matcher.group(3)));
        }
        if (matcher.matches() && matcher.groupCount() == 4) {
            return Color.argb((int) (Float.parseFloat(matcher.group(4)) * 255.0f), (int) Float.parseFloat(matcher.group(1)), (int) Float.parseFloat(matcher.group(2)), (int) Float.parseFloat(matcher.group(3)));
        }
        throw new ConversionException("Not a valid rgb/rgba value");
    }

    public static String colorToRgbaString(int i) {
        DecimalFormat decimalFormat = (DecimalFormat) NumberFormat.getNumberInstance(Locale.US);
        decimalFormat.applyPattern("#.###");
        String format = decimalFormat.format((double) (((float) ((i >> 24) & 255)) / 255.0f));
        return String.format(Locale.US, "rgba(%d, %d, %d, %s)", new Object[]{Integer.valueOf((i >> 16) & 255), Integer.valueOf((i >> 8) & 255), Integer.valueOf(i & 255), format});
    }

    private static int getColorCompat(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getResources().getColor(i, context.getTheme());
        }
        return context.getResources().getColor(i);
    }
}
