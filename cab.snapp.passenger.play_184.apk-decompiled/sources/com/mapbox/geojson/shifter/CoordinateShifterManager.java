package com.mapbox.geojson.shifter;

import com.mapbox.geojson.Point;
import java.util.Arrays;
import java.util.List;

public final class CoordinateShifterManager {
    private static final CoordinateShifter DEFAULT;
    private static volatile CoordinateShifter coordinateShifter;

    static {
        AnonymousClass1 r0 = new CoordinateShifter() {
            public List<Double> unshiftPoint(List<Double> list) {
                return list;
            }

            public List<Double> shiftLonLat(double d, double d2) {
                return Arrays.asList(new Double[]{Double.valueOf(d), Double.valueOf(d2)});
            }

            public List<Double> shiftLonLatAlt(double d, double d2, double d3) {
                if (Double.isNaN(d3)) {
                    return Arrays.asList(new Double[]{Double.valueOf(d), Double.valueOf(d2)});
                }
                return Arrays.asList(new Double[]{Double.valueOf(d), Double.valueOf(d2), Double.valueOf(d3)});
            }

            public List<Double> unshiftPoint(Point point) {
                return point.coordinates();
            }
        };
        DEFAULT = r0;
        coordinateShifter = r0;
    }

    public static CoordinateShifter getCoordinateShifter() {
        return coordinateShifter;
    }

    public static void setCoordinateShifter(CoordinateShifter coordinateShifter2) {
        if (coordinateShifter2 == null) {
            coordinateShifter2 = DEFAULT;
        }
        coordinateShifter = coordinateShifter2;
    }
}
