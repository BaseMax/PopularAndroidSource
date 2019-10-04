package com.mapbox.geojson.utils;

public class GeoJsonUtils {
    private static long MAX_DOUBLE_TO_ROUND = ((long) (9.223372036854776E18d / ROUND_PRECISION));
    private static double ROUND_PRECISION = 1.0E7d;

    public static double trim(double d) {
        long j = MAX_DOUBLE_TO_ROUND;
        if (d > ((double) j) || d < ((double) (-j))) {
            return d;
        }
        double round = (double) Math.round(d * ROUND_PRECISION);
        double d2 = ROUND_PRECISION;
        Double.isNaN(round);
        return round / d2;
    }
}
