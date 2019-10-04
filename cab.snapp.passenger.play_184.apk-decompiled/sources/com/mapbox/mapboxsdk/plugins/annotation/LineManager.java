package com.mapbox.mapboxsdk.plugins.annotation;

import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.mapboxsdk.maps.MapView;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import com.mapbox.mapboxsdk.maps.Style;
import com.mapbox.mapboxsdk.style.expressions.Expression;
import com.mapbox.mapboxsdk.style.layers.LineLayer;
import com.mapbox.mapboxsdk.style.layers.PropertyFactory;
import com.mapbox.mapboxsdk.style.layers.PropertyValue;
import com.mapbox.mapboxsdk.style.sources.GeoJsonOptions;
import java.util.ArrayList;
import java.util.List;

public class LineManager extends AnnotationManager<LineLayer, Line, LineOptions, OnLineDragListener, OnLineClickListener, OnLineLongClickListener> {
    private static final String PROPERTY_LINE_CAP = "line-cap";
    private static final String PROPERTY_LINE_DASHARRAY = "line-dasharray";
    private static final String PROPERTY_LINE_MITER_LIMIT = "line-miter-limit";
    private static final String PROPERTY_LINE_ROUND_LIMIT = "line-round-limit";
    private static final String PROPERTY_LINE_TRANSLATE = "line-translate";
    private static final String PROPERTY_LINE_TRANSLATE_ANCHOR = "line-translate-anchor";

    /* access modifiers changed from: package-private */
    public String getAnnotationIdKey() {
        return "id";
    }

    public LineManager(MapView mapView, MapboxMap mapboxMap, Style style) {
        this(mapView, mapboxMap, style, null, null);
    }

    public LineManager(MapView mapView, MapboxMap mapboxMap, Style style, String str) {
        this(mapView, mapboxMap, style, str, null);
    }

    public LineManager(MapView mapView, MapboxMap mapboxMap, Style style, String str, GeoJsonOptions geoJsonOptions) {
        this(mapView, mapboxMap, style, new LineElementProvider(), str, geoJsonOptions, new DraggableAnnotationController(mapView, mapboxMap));
    }

    LineManager(MapView mapView, MapboxMap mapboxMap, Style style, CoreElementProvider<LineLayer> coreElementProvider, String str, GeoJsonOptions geoJsonOptions, DraggableAnnotationController<Line, OnLineDragListener> draggableAnnotationController) {
        super(mapView, mapboxMap, style, coreElementProvider, draggableAnnotationController, str, geoJsonOptions);
    }

    /* access modifiers changed from: package-private */
    public void initializeDataDrivenPropertyMap() {
        this.dataDrivenPropertyUsageMap.put("line-join", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("line-opacity", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("line-color", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("line-width", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("line-gap-width", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("line-offset", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("line-blur", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("line-pattern", Boolean.FALSE);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setDataDrivenPropertyIsUsed(java.lang.String r12) {
        /*
            r11 = this;
            int r0 = r12.hashCode()
            java.lang.String r1 = "line-pattern"
            java.lang.String r2 = "line-offset"
            java.lang.String r3 = "line-opacity"
            java.lang.String r4 = "line-width"
            java.lang.String r5 = "line-color"
            java.lang.String r6 = "line-gap-width"
            java.lang.String r7 = "line-join"
            java.lang.String r8 = "line-blur"
            r9 = 0
            r10 = 1
            switch(r0) {
                case -1842775392: goto L_0x0052;
                case -1842534557: goto L_0x004a;
                case -1763440266: goto L_0x0042;
                case -1290458038: goto L_0x003a;
                case -1272173907: goto L_0x0032;
                case -1101375694: goto L_0x002a;
                case -1014430580: goto L_0x0022;
                case -625259849: goto L_0x001a;
                default: goto L_0x0019;
            }
        L_0x0019:
            goto L_0x005a
        L_0x001a:
            boolean r12 = r12.equals(r1)
            if (r12 == 0) goto L_0x005a
            r12 = 7
            goto L_0x005b
        L_0x0022:
            boolean r12 = r12.equals(r2)
            if (r12 == 0) goto L_0x005a
            r12 = 5
            goto L_0x005b
        L_0x002a:
            boolean r12 = r12.equals(r3)
            if (r12 == 0) goto L_0x005a
            r12 = 1
            goto L_0x005b
        L_0x0032:
            boolean r12 = r12.equals(r4)
            if (r12 == 0) goto L_0x005a
            r12 = 3
            goto L_0x005b
        L_0x003a:
            boolean r12 = r12.equals(r5)
            if (r12 == 0) goto L_0x005a
            r12 = 2
            goto L_0x005b
        L_0x0042:
            boolean r12 = r12.equals(r6)
            if (r12 == 0) goto L_0x005a
            r12 = 4
            goto L_0x005b
        L_0x004a:
            boolean r12 = r12.equals(r7)
            if (r12 == 0) goto L_0x005a
            r12 = 0
            goto L_0x005b
        L_0x0052:
            boolean r12 = r12.equals(r8)
            if (r12 == 0) goto L_0x005a
            r12 = 6
            goto L_0x005b
        L_0x005a:
            r12 = -1
        L_0x005b:
            switch(r12) {
                case 0: goto L_0x00ed;
                case 1: goto L_0x00d9;
                case 2: goto L_0x00c5;
                case 3: goto L_0x00b1;
                case 4: goto L_0x009d;
                case 5: goto L_0x0089;
                case 6: goto L_0x0075;
                case 7: goto L_0x0060;
                default: goto L_0x005e;
            }
        L_0x005e:
            goto L_0x0100
        L_0x0060:
            com.mapbox.mapboxsdk.style.layers.Layer r12 = r11.layer
            com.mapbox.mapboxsdk.style.layers.LineLayer r12 = (com.mapbox.mapboxsdk.style.layers.LineLayer) r12
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r0 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r10]
            com.mapbox.mapboxsdk.style.expressions.Expression r1 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r1)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r1 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.linePattern((com.mapbox.mapboxsdk.style.expressions.Expression) r1)
            r0[r9] = r1
            r12.setProperties(r0)
            goto L_0x0100
        L_0x0075:
            com.mapbox.mapboxsdk.style.layers.Layer r12 = r11.layer
            com.mapbox.mapboxsdk.style.layers.LineLayer r12 = (com.mapbox.mapboxsdk.style.layers.LineLayer) r12
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r0 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r10]
            com.mapbox.mapboxsdk.style.expressions.Expression r1 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r8)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r1 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.lineBlur((com.mapbox.mapboxsdk.style.expressions.Expression) r1)
            r0[r9] = r1
            r12.setProperties(r0)
            return
        L_0x0089:
            com.mapbox.mapboxsdk.style.layers.Layer r12 = r11.layer
            com.mapbox.mapboxsdk.style.layers.LineLayer r12 = (com.mapbox.mapboxsdk.style.layers.LineLayer) r12
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r0 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r10]
            com.mapbox.mapboxsdk.style.expressions.Expression r1 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r2)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r1 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.lineOffset((com.mapbox.mapboxsdk.style.expressions.Expression) r1)
            r0[r9] = r1
            r12.setProperties(r0)
            return
        L_0x009d:
            com.mapbox.mapboxsdk.style.layers.Layer r12 = r11.layer
            com.mapbox.mapboxsdk.style.layers.LineLayer r12 = (com.mapbox.mapboxsdk.style.layers.LineLayer) r12
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r0 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r10]
            com.mapbox.mapboxsdk.style.expressions.Expression r1 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r6)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r1 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.lineGapWidth((com.mapbox.mapboxsdk.style.expressions.Expression) r1)
            r0[r9] = r1
            r12.setProperties(r0)
            return
        L_0x00b1:
            com.mapbox.mapboxsdk.style.layers.Layer r12 = r11.layer
            com.mapbox.mapboxsdk.style.layers.LineLayer r12 = (com.mapbox.mapboxsdk.style.layers.LineLayer) r12
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r0 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r10]
            com.mapbox.mapboxsdk.style.expressions.Expression r1 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r4)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r1 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.lineWidth((com.mapbox.mapboxsdk.style.expressions.Expression) r1)
            r0[r9] = r1
            r12.setProperties(r0)
            return
        L_0x00c5:
            com.mapbox.mapboxsdk.style.layers.Layer r12 = r11.layer
            com.mapbox.mapboxsdk.style.layers.LineLayer r12 = (com.mapbox.mapboxsdk.style.layers.LineLayer) r12
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r0 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r10]
            com.mapbox.mapboxsdk.style.expressions.Expression r1 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r5)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r1 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.lineColor((com.mapbox.mapboxsdk.style.expressions.Expression) r1)
            r0[r9] = r1
            r12.setProperties(r0)
            return
        L_0x00d9:
            com.mapbox.mapboxsdk.style.layers.Layer r12 = r11.layer
            com.mapbox.mapboxsdk.style.layers.LineLayer r12 = (com.mapbox.mapboxsdk.style.layers.LineLayer) r12
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r0 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r10]
            com.mapbox.mapboxsdk.style.expressions.Expression r1 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r3)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r1 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.lineOpacity((com.mapbox.mapboxsdk.style.expressions.Expression) r1)
            r0[r9] = r1
            r12.setProperties(r0)
            return
        L_0x00ed:
            com.mapbox.mapboxsdk.style.layers.Layer r12 = r11.layer
            com.mapbox.mapboxsdk.style.layers.LineLayer r12 = (com.mapbox.mapboxsdk.style.layers.LineLayer) r12
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r0 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r10]
            com.mapbox.mapboxsdk.style.expressions.Expression r1 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r7)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r1 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.lineJoin((com.mapbox.mapboxsdk.style.expressions.Expression) r1)
            r0[r9] = r1
            r12.setProperties(r0)
        L_0x0100:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mapbox.mapboxsdk.plugins.annotation.LineManager.setDataDrivenPropertyIsUsed(java.lang.String):void");
    }

    public List<Line> create(String str) {
        return create(FeatureCollection.fromJson(str));
    }

    public List<Line> create(FeatureCollection featureCollection) {
        List<Feature> features = featureCollection.features();
        ArrayList arrayList = new ArrayList();
        if (features != null) {
            for (Feature fromFeature : features) {
                LineOptions fromFeature2 = LineOptions.fromFeature(fromFeature);
                if (fromFeature2 != null) {
                    arrayList.add(fromFeature2);
                }
            }
        }
        return create(arrayList);
    }

    public String getLineCap() {
        return (String) ((LineLayer) this.layer).getLineCap().value;
    }

    public void setLineCap(String str) {
        PropertyValue<String> lineCap = PropertyFactory.lineCap(str);
        this.constantPropertyUsageMap.put(PROPERTY_LINE_CAP, lineCap);
        ((LineLayer) this.layer).setProperties(lineCap);
    }

    public Float getLineMiterLimit() {
        return (Float) ((LineLayer) this.layer).getLineMiterLimit().value;
    }

    public void setLineMiterLimit(Float f) {
        PropertyValue<Float> lineMiterLimit = PropertyFactory.lineMiterLimit(f);
        this.constantPropertyUsageMap.put(PROPERTY_LINE_MITER_LIMIT, lineMiterLimit);
        ((LineLayer) this.layer).setProperties(lineMiterLimit);
    }

    public Float getLineRoundLimit() {
        return (Float) ((LineLayer) this.layer).getLineRoundLimit().value;
    }

    public void setLineRoundLimit(Float f) {
        PropertyValue<Float> lineRoundLimit = PropertyFactory.lineRoundLimit(f);
        this.constantPropertyUsageMap.put(PROPERTY_LINE_ROUND_LIMIT, lineRoundLimit);
        ((LineLayer) this.layer).setProperties(lineRoundLimit);
    }

    public Float[] getLineTranslate() {
        return (Float[]) ((LineLayer) this.layer).getLineTranslate().value;
    }

    public void setLineTranslate(Float[] fArr) {
        PropertyValue<Float[]> lineTranslate = PropertyFactory.lineTranslate(fArr);
        this.constantPropertyUsageMap.put(PROPERTY_LINE_TRANSLATE, lineTranslate);
        ((LineLayer) this.layer).setProperties(lineTranslate);
    }

    public String getLineTranslateAnchor() {
        return (String) ((LineLayer) this.layer).getLineTranslateAnchor().value;
    }

    public void setLineTranslateAnchor(String str) {
        PropertyValue<String> lineTranslateAnchor = PropertyFactory.lineTranslateAnchor(str);
        this.constantPropertyUsageMap.put(PROPERTY_LINE_TRANSLATE_ANCHOR, lineTranslateAnchor);
        ((LineLayer) this.layer).setProperties(lineTranslateAnchor);
    }

    public Float[] getLineDasharray() {
        return (Float[]) ((LineLayer) this.layer).getLineDasharray().value;
    }

    public void setLineDasharray(Float[] fArr) {
        PropertyValue<Float[]> lineDasharray = PropertyFactory.lineDasharray(fArr);
        this.constantPropertyUsageMap.put(PROPERTY_LINE_DASHARRAY, lineDasharray);
        ((LineLayer) this.layer).setProperties(lineDasharray);
    }

    public void setFilter(Expression expression) {
        this.layerFilter = expression;
        ((LineLayer) this.layer).setFilter(this.layerFilter);
    }

    public Expression getFilter() {
        return ((LineLayer) this.layer).getFilter();
    }
}
