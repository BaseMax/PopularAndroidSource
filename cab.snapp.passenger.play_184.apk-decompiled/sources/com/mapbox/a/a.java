package com.mapbox.a;

import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.geojson.Point;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, Double> f4876a;

    public static double degreesToRadians(double d) {
        return ((d % 360.0d) * 3.141592653589793d) / 180.0d;
    }

    public static double radiansToDegrees(double d) {
        return ((d % 6.283185307179586d) * 180.0d) / 3.141592653589793d;
    }

    static {
        HashMap hashMap = new HashMap();
        f4876a = hashMap;
        hashMap.put("miles", Double.valueOf(3960.0d));
        f4876a.put("nauticalmiles", Double.valueOf(3441.145d));
        f4876a.put("degrees", Double.valueOf(57.2957795d));
        f4876a.put("radians", Double.valueOf(1.0d));
        f4876a.put("inches", Double.valueOf(2.509056E8d));
        f4876a.put("yards", Double.valueOf(6969600.0d));
        Map<String, Double> map = f4876a;
        Double valueOf = Double.valueOf(6373000.0d);
        map.put("meters", valueOf);
        Map<String, Double> map2 = f4876a;
        Double valueOf2 = Double.valueOf(6.373E8d);
        map2.put("centimeters", valueOf2);
        Map<String, Double> map3 = f4876a;
        Double valueOf3 = Double.valueOf(6373.0d);
        map3.put("kilometers", valueOf3);
        f4876a.put("feet", Double.valueOf(2.090879265E7d));
        f4876a.put("centimetres", valueOf2);
        f4876a.put("metres", valueOf);
        f4876a.put("kilometres", valueOf3);
    }

    private a() {
    }

    public static double lengthToDegrees(double d, String str) {
        return radiansToDegrees(lengthToRadians(d, str));
    }

    public static double radiansToLength(double d) {
        return radiansToLength(d, "kilometers");
    }

    public static double radiansToLength(double d, String str) {
        return d * f4876a.get(str).doubleValue();
    }

    public static double lengthToRadians(double d) {
        return lengthToRadians(d, "kilometers");
    }

    public static double lengthToRadians(double d, String str) {
        return d / f4876a.get(str).doubleValue();
    }

    public static double convertLength(double d, String str) {
        return convertLength(d, str, "kilometers");
    }

    public static double convertLength(double d, String str, String str2) {
        if (str2 == null) {
            str2 = "kilometers";
        }
        return radiansToLength(lengthToRadians(d, str), str2);
    }

    public static FeatureCollection explode(FeatureCollection featureCollection) {
        ArrayList arrayList = new ArrayList();
        for (Point fromGeometry : d.coordAll(featureCollection, true)) {
            arrayList.add(Feature.fromGeometry(fromGeometry));
        }
        return FeatureCollection.fromFeatures((List<Feature>) arrayList);
    }

    public static FeatureCollection explode(Feature feature) {
        ArrayList arrayList = new ArrayList();
        for (Point fromGeometry : d.coordAll(feature, true)) {
            arrayList.add(Feature.fromGeometry(fromGeometry));
        }
        return FeatureCollection.fromFeatures((List<Feature>) arrayList);
    }
}
