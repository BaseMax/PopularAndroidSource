package com.mapbox.mapboxsdk.plugins.annotation;

import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.mapboxsdk.maps.MapView;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import com.mapbox.mapboxsdk.maps.Style;
import com.mapbox.mapboxsdk.style.expressions.Expression;
import com.mapbox.mapboxsdk.style.layers.CircleLayer;
import com.mapbox.mapboxsdk.style.layers.PropertyFactory;
import com.mapbox.mapboxsdk.style.layers.PropertyValue;
import com.mapbox.mapboxsdk.style.sources.GeoJsonOptions;
import java.util.ArrayList;
import java.util.List;

public class CircleManager extends AnnotationManager<CircleLayer, Circle, CircleOptions, OnCircleDragListener, OnCircleClickListener, OnCircleLongClickListener> {
    private static final String PROPERTY_CIRCLE_PITCH_ALIGNMENT = "circle-pitch-alignment";
    private static final String PROPERTY_CIRCLE_PITCH_SCALE = "circle-pitch-scale";
    private static final String PROPERTY_CIRCLE_TRANSLATE = "circle-translate";
    private static final String PROPERTY_CIRCLE_TRANSLATE_ANCHOR = "circle-translate-anchor";

    /* access modifiers changed from: package-private */
    public String getAnnotationIdKey() {
        return "id";
    }

    public CircleManager(MapView mapView, MapboxMap mapboxMap, Style style) {
        this(mapView, mapboxMap, style, null, null);
    }

    public CircleManager(MapView mapView, MapboxMap mapboxMap, Style style, String str) {
        this(mapView, mapboxMap, style, str, null);
    }

    public CircleManager(MapView mapView, MapboxMap mapboxMap, Style style, String str, GeoJsonOptions geoJsonOptions) {
        this(mapView, mapboxMap, style, new CircleElementProvider(), str, geoJsonOptions, new DraggableAnnotationController(mapView, mapboxMap));
    }

    CircleManager(MapView mapView, MapboxMap mapboxMap, Style style, CoreElementProvider<CircleLayer> coreElementProvider, String str, GeoJsonOptions geoJsonOptions, DraggableAnnotationController<Circle, OnCircleDragListener> draggableAnnotationController) {
        super(mapView, mapboxMap, style, coreElementProvider, draggableAnnotationController, str, geoJsonOptions);
    }

    /* access modifiers changed from: package-private */
    public void initializeDataDrivenPropertyMap() {
        this.dataDrivenPropertyUsageMap.put("circle-radius", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("circle-color", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("circle-blur", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("circle-opacity", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("circle-stroke-width", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("circle-stroke-color", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("circle-stroke-opacity", Boolean.FALSE);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setDataDrivenPropertyIsUsed(java.lang.String r11) {
        /*
            r10 = this;
            int r0 = r11.hashCode()
            java.lang.String r1 = "circle-stroke-opacity"
            java.lang.String r2 = "circle-color"
            java.lang.String r3 = "circle-blur"
            java.lang.String r4 = "circle-stroke-width"
            java.lang.String r5 = "circle-stroke-color"
            java.lang.String r6 = "circle-radius"
            java.lang.String r7 = "circle-opacity"
            r8 = 0
            r9 = 1
            switch(r0) {
                case -1290287090: goto L_0x0048;
                case -939323345: goto L_0x0040;
                case -585897621: goto L_0x0038;
                case -567613490: goto L_0x0030;
                case -113174716: goto L_0x0028;
                case 787555366: goto L_0x0020;
                case 1671319571: goto L_0x0018;
                default: goto L_0x0017;
            }
        L_0x0017:
            goto L_0x0050
        L_0x0018:
            boolean r11 = r11.equals(r1)
            if (r11 == 0) goto L_0x0050
            r11 = 6
            goto L_0x0051
        L_0x0020:
            boolean r11 = r11.equals(r2)
            if (r11 == 0) goto L_0x0050
            r11 = 1
            goto L_0x0051
        L_0x0028:
            boolean r11 = r11.equals(r3)
            if (r11 == 0) goto L_0x0050
            r11 = 2
            goto L_0x0051
        L_0x0030:
            boolean r11 = r11.equals(r4)
            if (r11 == 0) goto L_0x0050
            r11 = 4
            goto L_0x0051
        L_0x0038:
            boolean r11 = r11.equals(r5)
            if (r11 == 0) goto L_0x0050
            r11 = 5
            goto L_0x0051
        L_0x0040:
            boolean r11 = r11.equals(r6)
            if (r11 == 0) goto L_0x0050
            r11 = 0
            goto L_0x0051
        L_0x0048:
            boolean r11 = r11.equals(r7)
            if (r11 == 0) goto L_0x0050
            r11 = 3
            goto L_0x0051
        L_0x0050:
            r11 = -1
        L_0x0051:
            switch(r11) {
                case 0: goto L_0x00ce;
                case 1: goto L_0x00ba;
                case 2: goto L_0x00a6;
                case 3: goto L_0x0092;
                case 4: goto L_0x007e;
                case 5: goto L_0x006a;
                case 6: goto L_0x0056;
                default: goto L_0x0054;
            }
        L_0x0054:
            goto L_0x00e1
        L_0x0056:
            com.mapbox.mapboxsdk.style.layers.Layer r11 = r10.layer
            com.mapbox.mapboxsdk.style.layers.CircleLayer r11 = (com.mapbox.mapboxsdk.style.layers.CircleLayer) r11
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r0 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r9]
            com.mapbox.mapboxsdk.style.expressions.Expression r1 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r1)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r1 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.circleStrokeOpacity((com.mapbox.mapboxsdk.style.expressions.Expression) r1)
            r0[r8] = r1
            r11.setProperties(r0)
            goto L_0x00e1
        L_0x006a:
            com.mapbox.mapboxsdk.style.layers.Layer r11 = r10.layer
            com.mapbox.mapboxsdk.style.layers.CircleLayer r11 = (com.mapbox.mapboxsdk.style.layers.CircleLayer) r11
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r0 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r9]
            com.mapbox.mapboxsdk.style.expressions.Expression r1 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r5)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r1 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.circleStrokeColor((com.mapbox.mapboxsdk.style.expressions.Expression) r1)
            r0[r8] = r1
            r11.setProperties(r0)
            return
        L_0x007e:
            com.mapbox.mapboxsdk.style.layers.Layer r11 = r10.layer
            com.mapbox.mapboxsdk.style.layers.CircleLayer r11 = (com.mapbox.mapboxsdk.style.layers.CircleLayer) r11
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r0 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r9]
            com.mapbox.mapboxsdk.style.expressions.Expression r1 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r4)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r1 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.circleStrokeWidth((com.mapbox.mapboxsdk.style.expressions.Expression) r1)
            r0[r8] = r1
            r11.setProperties(r0)
            return
        L_0x0092:
            com.mapbox.mapboxsdk.style.layers.Layer r11 = r10.layer
            com.mapbox.mapboxsdk.style.layers.CircleLayer r11 = (com.mapbox.mapboxsdk.style.layers.CircleLayer) r11
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r0 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r9]
            com.mapbox.mapboxsdk.style.expressions.Expression r1 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r7)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r1 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.circleOpacity((com.mapbox.mapboxsdk.style.expressions.Expression) r1)
            r0[r8] = r1
            r11.setProperties(r0)
            return
        L_0x00a6:
            com.mapbox.mapboxsdk.style.layers.Layer r11 = r10.layer
            com.mapbox.mapboxsdk.style.layers.CircleLayer r11 = (com.mapbox.mapboxsdk.style.layers.CircleLayer) r11
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r0 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r9]
            com.mapbox.mapboxsdk.style.expressions.Expression r1 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r3)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r1 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.circleBlur((com.mapbox.mapboxsdk.style.expressions.Expression) r1)
            r0[r8] = r1
            r11.setProperties(r0)
            return
        L_0x00ba:
            com.mapbox.mapboxsdk.style.layers.Layer r11 = r10.layer
            com.mapbox.mapboxsdk.style.layers.CircleLayer r11 = (com.mapbox.mapboxsdk.style.layers.CircleLayer) r11
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r0 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r9]
            com.mapbox.mapboxsdk.style.expressions.Expression r1 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r2)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r1 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.circleColor((com.mapbox.mapboxsdk.style.expressions.Expression) r1)
            r0[r8] = r1
            r11.setProperties(r0)
            return
        L_0x00ce:
            com.mapbox.mapboxsdk.style.layers.Layer r11 = r10.layer
            com.mapbox.mapboxsdk.style.layers.CircleLayer r11 = (com.mapbox.mapboxsdk.style.layers.CircleLayer) r11
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r0 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r9]
            com.mapbox.mapboxsdk.style.expressions.Expression r1 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r6)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r1 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.circleRadius((com.mapbox.mapboxsdk.style.expressions.Expression) r1)
            r0[r8] = r1
            r11.setProperties(r0)
        L_0x00e1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mapbox.mapboxsdk.plugins.annotation.CircleManager.setDataDrivenPropertyIsUsed(java.lang.String):void");
    }

    public List<Circle> create(String str) {
        return create(FeatureCollection.fromJson(str));
    }

    public List<Circle> create(FeatureCollection featureCollection) {
        List<Feature> features = featureCollection.features();
        ArrayList arrayList = new ArrayList();
        if (features != null) {
            for (Feature fromFeature : features) {
                CircleOptions fromFeature2 = CircleOptions.fromFeature(fromFeature);
                if (fromFeature2 != null) {
                    arrayList.add(fromFeature2);
                }
            }
        }
        return create(arrayList);
    }

    public Float[] getCircleTranslate() {
        return (Float[]) ((CircleLayer) this.layer).getCircleTranslate().value;
    }

    public void setCircleTranslate(Float[] fArr) {
        PropertyValue<Float[]> circleTranslate = PropertyFactory.circleTranslate(fArr);
        this.constantPropertyUsageMap.put(PROPERTY_CIRCLE_TRANSLATE, circleTranslate);
        ((CircleLayer) this.layer).setProperties(circleTranslate);
    }

    public String getCircleTranslateAnchor() {
        return (String) ((CircleLayer) this.layer).getCircleTranslateAnchor().value;
    }

    public void setCircleTranslateAnchor(String str) {
        PropertyValue<String> circleTranslateAnchor = PropertyFactory.circleTranslateAnchor(str);
        this.constantPropertyUsageMap.put(PROPERTY_CIRCLE_TRANSLATE_ANCHOR, circleTranslateAnchor);
        ((CircleLayer) this.layer).setProperties(circleTranslateAnchor);
    }

    public String getCirclePitchScale() {
        return (String) ((CircleLayer) this.layer).getCirclePitchScale().value;
    }

    public void setCirclePitchScale(String str) {
        PropertyValue<String> circlePitchScale = PropertyFactory.circlePitchScale(str);
        this.constantPropertyUsageMap.put(PROPERTY_CIRCLE_PITCH_SCALE, circlePitchScale);
        ((CircleLayer) this.layer).setProperties(circlePitchScale);
    }

    public String getCirclePitchAlignment() {
        return (String) ((CircleLayer) this.layer).getCirclePitchAlignment().value;
    }

    public void setCirclePitchAlignment(String str) {
        PropertyValue<String> circlePitchAlignment = PropertyFactory.circlePitchAlignment(str);
        this.constantPropertyUsageMap.put(PROPERTY_CIRCLE_PITCH_ALIGNMENT, circlePitchAlignment);
        ((CircleLayer) this.layer).setProperties(circlePitchAlignment);
    }

    public void setFilter(Expression expression) {
        this.layerFilter = expression;
        ((CircleLayer) this.layer).setFilter(this.layerFilter);
    }

    public Expression getFilter() {
        return ((CircleLayer) this.layer).getFilter();
    }
}
