package com.google.android.material.e;

public final class a {
    public static final float DEFAULT_EPSILON = 1.0E-4f;

    public static boolean geq(float f, float f2, float f3) {
        return f + f3 >= f2;
    }

    public static float lerp(float f, float f2, float f3) {
        return ((1.0f - f3) * f) + (f3 * f2);
    }

    private a() {
    }

    public static float dist(float f, float f2, float f3, float f4) {
        return (float) Math.hypot((double) (f3 - f), (double) (f4 - f2));
    }

    public static float distanceToFurthestCorner(float f, float f2, float f3, float f4, float f5, float f6) {
        float dist = dist(f, f2, f3, f4);
        float dist2 = dist(f, f2, f5, f4);
        float dist3 = dist(f, f2, f5, f6);
        float dist4 = dist(f, f2, f3, f6);
        if (dist > dist2 && dist > dist3 && dist > dist4) {
            return dist;
        }
        if (dist2 <= dist3 || dist2 <= dist4) {
            return dist3 > dist4 ? dist3 : dist4;
        }
        return dist2;
    }
}
