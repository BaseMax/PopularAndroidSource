package com.mapbox.mapboxsdk.style.layers;

import com.google.gson.JsonArray;
import com.mapbox.mapboxsdk.MapStrictMode;
import com.mapbox.mapboxsdk.exceptions.ConversionException;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.style.expressions.Expression;
import com.mapbox.mapboxsdk.utils.ColorUtils;

public class PropertyValue<T> {
    private static final String TAG = "Mbgl-PropertyValue";
    public final String name;
    public final T value;

    public PropertyValue(String str, T t) {
        this.name = str;
        this.value = t;
    }

    public boolean isNull() {
        return this.value == null;
    }

    public boolean isExpression() {
        if (!isNull()) {
            T t = this.value;
            if ((t instanceof JsonArray) || (t instanceof Expression)) {
                return true;
            }
        }
        return false;
    }

    public Expression getExpression() {
        if (isExpression()) {
            T t = this.value;
            return t instanceof JsonArray ? Expression.Converter.convert((JsonArray) t) : (Expression) t;
        }
        Logger.w(TAG, String.format("%s not an expression, try PropertyValue#getValue()", new Object[]{this.name}));
        return null;
    }

    public boolean isValue() {
        return !isNull() && !isExpression();
    }

    public T getValue() {
        if (isValue()) {
            return this.value;
        }
        Logger.w(TAG, String.format("%s not a value, try PropertyValue#getExpression()", new Object[]{this.name}));
        return null;
    }

    public Integer getColorInt() {
        if (isValue()) {
            T t = this.value;
            if (t instanceof String) {
                try {
                    return Integer.valueOf(ColorUtils.rgbaToColor((String) t));
                } catch (ConversionException e) {
                    Logger.e(TAG, String.format("%s could not be converted to a Color int: %s", new Object[]{this.name, e.getMessage()}));
                    MapStrictMode.strictModeViolation((Throwable) e);
                    return null;
                }
            }
        }
        Logger.e(TAG, String.format("%s is not a String value and can not be converted to a color it", new Object[]{this.name}));
        return null;
    }

    public String toString() {
        return String.format("%s: %s", new Object[]{this.name, this.value});
    }
}
