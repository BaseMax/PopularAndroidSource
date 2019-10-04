package com.mapbox.geojson.utils;

import com.mapbox.geojson.Point;
import java.util.ArrayList;
import java.util.List;

public final class PolylineUtils {
    private static final boolean SIMPLIFY_DEFAULT_HIGHEST_QUALITY = false;
    private static final double SIMPLIFY_DEFAULT_TOLERANCE = 1.0d;

    private PolylineUtils() {
    }

    public static List<Point> decode(String str, int i) {
        int i2;
        int i3;
        int length = str.length();
        double pow = Math.pow(10.0d, (double) i);
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < length) {
            int i7 = 1;
            int i8 = 0;
            while (true) {
                i2 = i4 + 1;
                int charAt = (str.charAt(i4) - '?') - 1;
                i7 += charAt << i8;
                i8 += 5;
                if (charAt < 31) {
                    break;
                }
                i4 = i2;
            }
            int i9 = ((i7 & 1) != 0 ? (i7 >> 1) ^ -1 : i7 >> 1) + i5;
            int i10 = 1;
            int i11 = 0;
            while (true) {
                i3 = i2 + 1;
                int charAt2 = (str.charAt(i2) - '?') - 1;
                i10 += charAt2 << i11;
                i11 += 5;
                if (charAt2 < 31) {
                    break;
                }
                i2 = i3;
            }
            int i12 = i10 & 1;
            int i13 = i10 >> 1;
            if (i12 != 0) {
                i13 ^= -1;
            }
            i6 += i13;
            double d = (double) i6;
            Double.isNaN(d);
            double d2 = (double) i9;
            Double.isNaN(d2);
            arrayList.add(Point.fromLngLat(d / pow, d2 / pow));
            i5 = i9;
            i4 = i3;
        }
        return arrayList;
    }

    public static String encode(List<Point> list, int i) {
        StringBuilder sb = new StringBuilder();
        double pow = Math.pow(10.0d, (double) i);
        long j = 0;
        long j2 = 0;
        for (Point next : list) {
            long round = Math.round(next.latitude() * pow);
            long round2 = Math.round(next.longitude() * pow);
            encode(round - j, sb);
            encode(round2 - j2, sb);
            j = round;
            j2 = round2;
        }
        return sb.toString();
    }

    private static void encode(long j, StringBuilder sb) {
        int i = (j > 0 ? 1 : (j == 0 ? 0 : -1));
        long j2 = j << 1;
        if (i < 0) {
            j2 ^= -1;
        }
        while (j2 >= 32) {
            sb.append(Character.toChars((int) ((32 | (31 & j2)) + 63)));
            j2 >>= 5;
        }
        sb.append(Character.toChars((int) (j2 + 63)));
    }

    public static List<Point> simplify(List<Point> list) {
        return simplify(list, SIMPLIFY_DEFAULT_TOLERANCE, false);
    }

    public static List<Point> simplify(List<Point> list, double d) {
        return simplify(list, d, false);
    }

    public static List<Point> simplify(List<Point> list, boolean z) {
        return simplify(list, SIMPLIFY_DEFAULT_TOLERANCE, z);
    }

    public static List<Point> simplify(List<Point> list, double d, boolean z) {
        if (list.size() <= 2) {
            return list;
        }
        double d2 = d * d;
        if (!z) {
            list = simplifyRadialDist(list, d2);
        }
        return simplifyDouglasPeucker(list, d2);
    }

    private static double getSqDist(Point point, Point point2) {
        double longitude = point.longitude() - point2.longitude();
        double latitude = point.latitude() - point2.latitude();
        return (longitude * longitude) + (latitude * latitude);
    }

    private static double getSqSegDist(Point point, Point point2, Point point3) {
        double longitude = point2.longitude();
        double latitude = point2.latitude();
        double longitude2 = point3.longitude() - longitude;
        double latitude2 = point3.latitude() - latitude;
        if (!(longitude2 == 0.0d && latitude2 == 0.0d)) {
            double longitude3 = (((point.longitude() - longitude) * longitude2) + ((point.latitude() - latitude) * latitude2)) / ((longitude2 * longitude2) + (latitude2 * latitude2));
            if (longitude3 > SIMPLIFY_DEFAULT_TOLERANCE) {
                longitude = point3.longitude();
                latitude = point3.latitude();
            } else if (longitude3 > 0.0d) {
                longitude += longitude2 * longitude3;
                latitude += latitude2 * longitude3;
            }
        }
        double longitude4 = point.longitude() - longitude;
        double latitude3 = point.latitude() - latitude;
        return (longitude4 * longitude4) + (latitude3 * latitude3);
    }

    private static List<Point> simplifyRadialDist(List<Point> list, double d) {
        Point point = list.get(0);
        ArrayList arrayList = new ArrayList();
        arrayList.add(point);
        int size = list.size();
        Point point2 = null;
        for (int i = 1; i < size; i++) {
            point2 = list.get(i);
            if (getSqDist(point2, point) > d) {
                arrayList.add(point2);
                point = point2;
            }
        }
        if (!point.equals(point2)) {
            arrayList.add(point2);
        }
        return arrayList;
    }

    private static List<Point> simplifyDpStep(List<Point> list, int i, int i2, double d, List<Point> list2) {
        List<Point> list3 = list;
        int i3 = i2;
        ArrayList arrayList = new ArrayList();
        double d2 = d;
        int i4 = 0;
        for (int i5 = i + 1; i5 < i3; i5++) {
            double sqSegDist = getSqSegDist(list.get(i5), list.get(i), list.get(i2));
            if (sqSegDist > d2) {
                i4 = i5;
                d2 = sqSegDist;
            }
        }
        if (d2 > d) {
            if (i4 - i > 1) {
                arrayList.addAll(simplifyDpStep(list, i, i4, d, list2));
            }
            arrayList.add(list.get(i4));
            if (i3 - i4 > 1) {
                arrayList.addAll(simplifyDpStep(list, i4, i2, d, list2));
            }
        }
        return arrayList;
    }

    private static List<Point> simplifyDouglasPeucker(List<Point> list, double d) {
        int size = list.size() - 1;
        ArrayList arrayList = new ArrayList();
        arrayList.add(list.get(0));
        arrayList.addAll(simplifyDpStep(list, 0, size, d, arrayList));
        arrayList.add(list.get(size));
        return arrayList;
    }
}
