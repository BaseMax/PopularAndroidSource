package com.mapbox.mapboxsdk.utils;

import android.graphics.Typeface;
import android.os.Build;
import com.mapbox.mapboxsdk.MapStrictMode;
import com.mapbox.mapboxsdk.constants.MapboxConstants;
import com.mapbox.mapboxsdk.log.Logger;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class FontUtils {
    private static final List<String> DEFAULT_FONT_STACKS;
    private static final String TAG = "Mbgl-FontUtils";
    private static final String TYPEFACE_FONTMAP_FIELD_NAME = "sSystemFontMap";

    static {
        ArrayList arrayList = new ArrayList();
        DEFAULT_FONT_STACKS = arrayList;
        arrayList.add(MapboxConstants.DEFAULT_FONT);
        DEFAULT_FONT_STACKS.add("serif");
        DEFAULT_FONT_STACKS.add("monospace");
    }

    private FontUtils() {
    }

    public static String extractValidFont(String... strArr) {
        List<String> list;
        if (strArr == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            list = getDeviceFonts();
        } else {
            list = DEFAULT_FONT_STACKS;
        }
        for (String str : strArr) {
            if (list.contains(str)) {
                return str;
            }
        }
        Logger.i(TAG, String.format("Couldn't map font family for local ideograph, using %s instead", new Object[]{MapboxConstants.DEFAULT_FONT}));
        return MapboxConstants.DEFAULT_FONT;
    }

    private static List<String> getDeviceFonts() {
        ArrayList arrayList = new ArrayList();
        try {
            Typeface create = Typeface.create(Typeface.DEFAULT, 0);
            Field declaredField = Typeface.class.getDeclaredField(TYPEFACE_FONTMAP_FIELD_NAME);
            declaredField.setAccessible(true);
            arrayList.addAll(((Map) declaredField.get(create)).keySet());
        } catch (Exception e) {
            Logger.e(TAG, "Couldn't load fonts from Typeface", e);
            MapStrictMode.strictModeViolation("Couldn't load fonts from Typeface", e);
        }
        return arrayList;
    }
}
