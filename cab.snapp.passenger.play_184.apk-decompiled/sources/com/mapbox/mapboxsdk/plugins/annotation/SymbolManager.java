package com.mapbox.mapboxsdk.plugins.annotation;

import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.mapboxsdk.maps.MapView;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import com.mapbox.mapboxsdk.maps.Style;
import com.mapbox.mapboxsdk.style.expressions.Expression;
import com.mapbox.mapboxsdk.style.layers.PropertyFactory;
import com.mapbox.mapboxsdk.style.layers.PropertyValue;
import com.mapbox.mapboxsdk.style.layers.SymbolLayer;
import com.mapbox.mapboxsdk.style.sources.GeoJsonOptions;
import java.util.ArrayList;
import java.util.List;

public class SymbolManager extends AnnotationManager<SymbolLayer, Symbol, SymbolOptions, OnSymbolDragListener, OnSymbolClickListener, OnSymbolLongClickListener> {
    private static final String PROPERTY_ICON_ALLOW_OVERLAP = "icon-allow-overlap";
    private static final String PROPERTY_ICON_IGNORE_PLACEMENT = "icon-ignore-placement";
    private static final String PROPERTY_ICON_KEEP_UPRIGHT = "icon-keep-upright";
    private static final String PROPERTY_ICON_OPTIONAL = "icon-optional";
    private static final String PROPERTY_ICON_PADDING = "icon-padding";
    private static final String PROPERTY_ICON_PITCH_ALIGNMENT = "icon-pitch-alignment";
    private static final String PROPERTY_ICON_ROTATION_ALIGNMENT = "icon-rotation-alignment";
    private static final String PROPERTY_ICON_TEXT_FIT = "icon-text-fit";
    private static final String PROPERTY_ICON_TEXT_FIT_PADDING = "icon-text-fit-padding";
    private static final String PROPERTY_ICON_TRANSLATE = "icon-translate";
    private static final String PROPERTY_ICON_TRANSLATE_ANCHOR = "icon-translate-anchor";
    private static final String PROPERTY_SYMBOL_AVOID_EDGES = "symbol-avoid-edges";
    private static final String PROPERTY_SYMBOL_PLACEMENT = "symbol-placement";
    private static final String PROPERTY_SYMBOL_SPACING = "symbol-spacing";
    private static final String PROPERTY_TEXT_ALLOW_OVERLAP = "text-allow-overlap";
    private static final String PROPERTY_TEXT_IGNORE_PLACEMENT = "text-ignore-placement";
    private static final String PROPERTY_TEXT_KEEP_UPRIGHT = "text-keep-upright";
    private static final String PROPERTY_TEXT_LINE_HEIGHT = "text-line-height";
    private static final String PROPERTY_TEXT_MAX_ANGLE = "text-max-angle";
    private static final String PROPERTY_TEXT_OPTIONAL = "text-optional";
    private static final String PROPERTY_TEXT_PADDING = "text-padding";
    private static final String PROPERTY_TEXT_PITCH_ALIGNMENT = "text-pitch-alignment";
    private static final String PROPERTY_TEXT_ROTATION_ALIGNMENT = "text-rotation-alignment";
    private static final String PROPERTY_TEXT_TRANSLATE = "text-translate";
    private static final String PROPERTY_TEXT_TRANSLATE_ANCHOR = "text-translate-anchor";
    private static final String PROPERTY_TEXT_VARIABLE_ANCHOR = "text-variable-anchor";

    /* access modifiers changed from: package-private */
    public String getAnnotationIdKey() {
        return "id";
    }

    public SymbolManager(MapView mapView, MapboxMap mapboxMap, Style style) {
        this(mapView, mapboxMap, style, null, null);
    }

    public SymbolManager(MapView mapView, MapboxMap mapboxMap, Style style, String str) {
        this(mapView, mapboxMap, style, str, null);
    }

    public SymbolManager(MapView mapView, MapboxMap mapboxMap, Style style, String str, GeoJsonOptions geoJsonOptions) {
        this(mapView, mapboxMap, style, new SymbolElementProvider(), str, geoJsonOptions, new DraggableAnnotationController(mapView, mapboxMap));
    }

    SymbolManager(MapView mapView, MapboxMap mapboxMap, Style style, CoreElementProvider<SymbolLayer> coreElementProvider, String str, GeoJsonOptions geoJsonOptions, DraggableAnnotationController<Symbol, OnSymbolDragListener> draggableAnnotationController) {
        super(mapView, mapboxMap, style, coreElementProvider, draggableAnnotationController, str, geoJsonOptions);
    }

    /* access modifiers changed from: package-private */
    public void initializeDataDrivenPropertyMap() {
        this.dataDrivenPropertyUsageMap.put("symbol-sort-key", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("icon-size", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("icon-image", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("icon-rotate", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("icon-offset", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("icon-anchor", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("text-field", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("text-font", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("text-size", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("text-max-width", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("text-letter-spacing", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("text-justify", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("text-radial-offset", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("text-anchor", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("text-rotate", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("text-transform", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("text-offset", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("icon-opacity", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("icon-color", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("icon-halo-color", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("icon-halo-width", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("icon-halo-blur", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("text-opacity", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("text-color", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("text-halo-color", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("text-halo-width", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("text-halo-blur", Boolean.FALSE);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:85:0x0145, code lost:
        r0 = r17;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setDataDrivenPropertyIsUsed(java.lang.String r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            int r2 = r18.hashCode()
            java.lang.String r3 = "text-size"
            java.lang.String r4 = "text-font"
            java.lang.String r5 = "text-transform"
            java.lang.String r6 = "symbol-sort-key"
            java.lang.String r7 = "icon-size"
            java.lang.String r8 = "icon-image"
            java.lang.String r9 = "icon-color"
            java.lang.String r10 = "icon-halo-width"
            java.lang.String r11 = "icon-halo-color"
            java.lang.String r12 = "text-radial-offset"
            java.lang.String r13 = "icon-rotate"
            java.lang.String r14 = "icon-offset"
            java.lang.String r15 = "text-rotate"
            r16 = 0
            r0 = 1
            switch(r2) {
                case -2146810373: goto L_0x0138;
                case -2041493401: goto L_0x0130;
                case -1946894033: goto L_0x0128;
                case -1717422239: goto L_0x011f;
                case -1708933018: goto L_0x0116;
                case -1690648887: goto L_0x010d;
                case -1600683761: goto L_0x0104;
                case -1595213049: goto L_0x00fc;
                case -1436636971: goto L_0x00f4;
                case -1336352187: goto L_0x00ec;
                case -1262567732: goto L_0x00e3;
                case -1084154641: goto L_0x00da;
                case -1083772767: goto L_0x00d0;
                case -888013006: goto L_0x00c4;
                case -886443260: goto L_0x00b8;
                case -869728875: goto L_0x00ac;
                case -483024021: goto L_0x00a0;
                case -465299984: goto L_0x0094;
                case 317300605: goto L_0x0088;
                case 428355132: goto L_0x007c;
                case 525511352: goto L_0x0070;
                case 748171971: goto L_0x0064;
                case 750756954: goto L_0x0059;
                case 1419415223: goto L_0x004d;
                case 1660037973: goto L_0x0041;
                case 1859954313: goto L_0x0036;
                case 2053557555: goto L_0x002a;
                default: goto L_0x0028;
            }
        L_0x0028:
            goto L_0x0141
        L_0x002a:
            java.lang.String r2 = "text-offset"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x0141
            r1 = 16
            goto L_0x0142
        L_0x0036:
            java.lang.String r2 = "icon-anchor"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x0141
            r1 = 5
            goto L_0x0142
        L_0x0041:
            java.lang.String r2 = "text-anchor"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x0141
            r1 = 13
            goto L_0x0142
        L_0x004d:
            java.lang.String r2 = "icon-opacity"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x0141
            r1 = 17
            goto L_0x0142
        L_0x0059:
            java.lang.String r2 = "text-field"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x0141
            r1 = 6
            goto L_0x0142
        L_0x0064:
            java.lang.String r2 = "text-color"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x0141
            r1 = 23
            goto L_0x0142
        L_0x0070:
            java.lang.String r2 = "text-halo-blur"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x0141
            r1 = 26
            goto L_0x0142
        L_0x007c:
            java.lang.String r2 = "text-letter-spacing"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x0141
            r1 = 10
            goto L_0x0142
        L_0x0088:
            java.lang.String r2 = "text-max-width"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x0141
            r1 = 9
            goto L_0x0142
        L_0x0094:
            java.lang.String r2 = "text-justify"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x0141
            r1 = 11
            goto L_0x0142
        L_0x00a0:
            java.lang.String r2 = "text-opacity"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x0141
            r1 = 22
            goto L_0x0142
        L_0x00ac:
            java.lang.String r2 = "text-halo-width"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x0141
            r1 = 25
            goto L_0x0142
        L_0x00b8:
            java.lang.String r2 = "icon-halo-blur"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x0141
            r1 = 21
            goto L_0x0142
        L_0x00c4:
            java.lang.String r2 = "text-halo-color"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x0141
            r1 = 24
            goto L_0x0142
        L_0x00d0:
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L_0x0141
            r1 = 8
            goto L_0x0142
        L_0x00da:
            boolean r1 = r1.equals(r4)
            if (r1 == 0) goto L_0x0141
            r1 = 7
            goto L_0x0142
        L_0x00e3:
            boolean r1 = r1.equals(r5)
            if (r1 == 0) goto L_0x0141
            r1 = 15
            goto L_0x0142
        L_0x00ec:
            boolean r1 = r1.equals(r6)
            if (r1 == 0) goto L_0x0141
            r1 = 0
            goto L_0x0142
        L_0x00f4:
            boolean r1 = r1.equals(r7)
            if (r1 == 0) goto L_0x0141
            r1 = 1
            goto L_0x0142
        L_0x00fc:
            boolean r1 = r1.equals(r8)
            if (r1 == 0) goto L_0x0141
            r1 = 2
            goto L_0x0142
        L_0x0104:
            boolean r1 = r1.equals(r9)
            if (r1 == 0) goto L_0x0141
            r1 = 18
            goto L_0x0142
        L_0x010d:
            boolean r1 = r1.equals(r10)
            if (r1 == 0) goto L_0x0141
            r1 = 20
            goto L_0x0142
        L_0x0116:
            boolean r1 = r1.equals(r11)
            if (r1 == 0) goto L_0x0141
            r1 = 19
            goto L_0x0142
        L_0x011f:
            boolean r1 = r1.equals(r12)
            if (r1 == 0) goto L_0x0141
            r1 = 12
            goto L_0x0142
        L_0x0128:
            boolean r1 = r1.equals(r13)
            if (r1 == 0) goto L_0x0141
            r1 = 3
            goto L_0x0142
        L_0x0130:
            boolean r1 = r1.equals(r14)
            if (r1 == 0) goto L_0x0141
            r1 = 4
            goto L_0x0142
        L_0x0138:
            boolean r1 = r1.equals(r15)
            if (r1 == 0) goto L_0x0141
            r1 = 14
            goto L_0x0142
        L_0x0141:
            r1 = -1
        L_0x0142:
            switch(r1) {
                case 0: goto L_0x03bc;
                case 1: goto L_0x03a5;
                case 2: goto L_0x038e;
                case 3: goto L_0x0377;
                case 4: goto L_0x0360;
                case 5: goto L_0x0347;
                case 6: goto L_0x032e;
                case 7: goto L_0x0317;
                case 8: goto L_0x0300;
                case 9: goto L_0x02e7;
                case 10: goto L_0x02ce;
                case 11: goto L_0x02b5;
                case 12: goto L_0x029e;
                case 13: goto L_0x0285;
                case 14: goto L_0x026e;
                case 15: goto L_0x0257;
                case 16: goto L_0x023e;
                case 17: goto L_0x0225;
                case 18: goto L_0x020e;
                case 19: goto L_0x01f7;
                case 20: goto L_0x01e0;
                case 21: goto L_0x01c7;
                case 22: goto L_0x01ae;
                case 23: goto L_0x0195;
                case 24: goto L_0x017c;
                case 25: goto L_0x0163;
                case 26: goto L_0x0149;
                default: goto L_0x0145;
            }
        L_0x0145:
            r0 = r17
            goto L_0x03d2
        L_0x0149:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            java.lang.String r3 = "text-halo-blur"
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r3)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.textHaloBlur((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            goto L_0x03d2
        L_0x0163:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            java.lang.String r3 = "text-halo-width"
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r3)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.textHaloWidth((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x017c:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            java.lang.String r3 = "text-halo-color"
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r3)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.textHaloColor((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x0195:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            java.lang.String r3 = "text-color"
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r3)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.textColor((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x01ae:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            java.lang.String r3 = "text-opacity"
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r3)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.textOpacity((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x01c7:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            java.lang.String r3 = "icon-halo-blur"
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r3)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.iconHaloBlur((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x01e0:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r10)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.iconHaloWidth((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x01f7:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r11)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.iconHaloColor((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x020e:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r9)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.iconColor((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x0225:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            java.lang.String r3 = "icon-opacity"
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r3)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.iconOpacity((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x023e:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            java.lang.String r3 = "text-offset"
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r3)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.textOffset((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x0257:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r5)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.textTransform((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x026e:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r15)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.textRotate((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x0285:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            java.lang.String r3 = "text-anchor"
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r3)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.textAnchor((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x029e:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r12)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.textRadialOffset((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x02b5:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            java.lang.String r3 = "text-justify"
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r3)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.textJustify((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x02ce:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            java.lang.String r3 = "text-letter-spacing"
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r3)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.textLetterSpacing((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x02e7:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            java.lang.String r3 = "text-max-width"
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r3)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.textMaxWidth((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x0300:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r3)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.textSize((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x0317:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r4)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.textFont((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x032e:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            java.lang.String r3 = "text-field"
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r3)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.textField((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x0347:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            java.lang.String r3 = "icon-anchor"
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r3)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.iconAnchor((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x0360:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r14)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.iconOffset((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x0377:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r13)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.iconRotate((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x038e:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r8)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.iconImage((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x03a5:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r7)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.iconSize((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
            return
        L_0x03bc:
            r1 = 1
            r0 = r17
            com.mapbox.mapboxsdk.style.layers.Layer r2 = r0.layer
            com.mapbox.mapboxsdk.style.layers.SymbolLayer r2 = (com.mapbox.mapboxsdk.style.layers.SymbolLayer) r2
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r1 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r1]
            com.mapbox.mapboxsdk.style.expressions.Expression r3 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r6)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r3 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.symbolSortKey((com.mapbox.mapboxsdk.style.expressions.Expression) r3)
            r1[r16] = r3
            r2.setProperties(r1)
        L_0x03d2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mapbox.mapboxsdk.plugins.annotation.SymbolManager.setDataDrivenPropertyIsUsed(java.lang.String):void");
    }

    public List<Symbol> create(String str) {
        return create(FeatureCollection.fromJson(str));
    }

    public List<Symbol> create(FeatureCollection featureCollection) {
        List<Feature> features = featureCollection.features();
        ArrayList arrayList = new ArrayList();
        if (features != null) {
            for (Feature fromFeature : features) {
                SymbolOptions fromFeature2 = SymbolOptions.fromFeature(fromFeature);
                if (fromFeature2 != null) {
                    arrayList.add(fromFeature2);
                }
            }
        }
        return create(arrayList);
    }

    public String getSymbolPlacement() {
        return (String) ((SymbolLayer) this.layer).getSymbolPlacement().value;
    }

    public void setSymbolPlacement(String str) {
        PropertyValue<String> symbolPlacement = PropertyFactory.symbolPlacement(str);
        this.constantPropertyUsageMap.put(PROPERTY_SYMBOL_PLACEMENT, symbolPlacement);
        ((SymbolLayer) this.layer).setProperties(symbolPlacement);
    }

    public Float getSymbolSpacing() {
        return (Float) ((SymbolLayer) this.layer).getSymbolSpacing().value;
    }

    public void setSymbolSpacing(Float f) {
        PropertyValue<Float> symbolSpacing = PropertyFactory.symbolSpacing(f);
        this.constantPropertyUsageMap.put(PROPERTY_SYMBOL_SPACING, symbolSpacing);
        ((SymbolLayer) this.layer).setProperties(symbolSpacing);
    }

    public Boolean getSymbolAvoidEdges() {
        return (Boolean) ((SymbolLayer) this.layer).getSymbolAvoidEdges().value;
    }

    public void setSymbolAvoidEdges(Boolean bool) {
        PropertyValue<Boolean> symbolAvoidEdges = PropertyFactory.symbolAvoidEdges(bool);
        this.constantPropertyUsageMap.put(PROPERTY_SYMBOL_AVOID_EDGES, symbolAvoidEdges);
        ((SymbolLayer) this.layer).setProperties(symbolAvoidEdges);
    }

    public Boolean getIconAllowOverlap() {
        return (Boolean) ((SymbolLayer) this.layer).getIconAllowOverlap().value;
    }

    public void setIconAllowOverlap(Boolean bool) {
        PropertyValue<Boolean> iconAllowOverlap = PropertyFactory.iconAllowOverlap(bool);
        this.constantPropertyUsageMap.put(PROPERTY_ICON_ALLOW_OVERLAP, iconAllowOverlap);
        ((SymbolLayer) this.layer).setProperties(iconAllowOverlap);
    }

    public Boolean getIconIgnorePlacement() {
        return (Boolean) ((SymbolLayer) this.layer).getIconIgnorePlacement().value;
    }

    public void setIconIgnorePlacement(Boolean bool) {
        PropertyValue<Boolean> iconIgnorePlacement = PropertyFactory.iconIgnorePlacement(bool);
        this.constantPropertyUsageMap.put(PROPERTY_ICON_IGNORE_PLACEMENT, iconIgnorePlacement);
        ((SymbolLayer) this.layer).setProperties(iconIgnorePlacement);
    }

    public Boolean getIconOptional() {
        return (Boolean) ((SymbolLayer) this.layer).getIconOptional().value;
    }

    public void setIconOptional(Boolean bool) {
        PropertyValue<Boolean> iconOptional = PropertyFactory.iconOptional(bool);
        this.constantPropertyUsageMap.put(PROPERTY_ICON_OPTIONAL, iconOptional);
        ((SymbolLayer) this.layer).setProperties(iconOptional);
    }

    public String getIconRotationAlignment() {
        return (String) ((SymbolLayer) this.layer).getIconRotationAlignment().value;
    }

    public void setIconRotationAlignment(String str) {
        PropertyValue<String> iconRotationAlignment = PropertyFactory.iconRotationAlignment(str);
        this.constantPropertyUsageMap.put(PROPERTY_ICON_ROTATION_ALIGNMENT, iconRotationAlignment);
        ((SymbolLayer) this.layer).setProperties(iconRotationAlignment);
    }

    public String getIconTextFit() {
        return (String) ((SymbolLayer) this.layer).getIconTextFit().value;
    }

    public void setIconTextFit(String str) {
        PropertyValue<String> iconTextFit = PropertyFactory.iconTextFit(str);
        this.constantPropertyUsageMap.put(PROPERTY_ICON_TEXT_FIT, iconTextFit);
        ((SymbolLayer) this.layer).setProperties(iconTextFit);
    }

    public Float[] getIconTextFitPadding() {
        return (Float[]) ((SymbolLayer) this.layer).getIconTextFitPadding().value;
    }

    public void setIconTextFitPadding(Float[] fArr) {
        PropertyValue<Float[]> iconTextFitPadding = PropertyFactory.iconTextFitPadding(fArr);
        this.constantPropertyUsageMap.put(PROPERTY_ICON_TEXT_FIT_PADDING, iconTextFitPadding);
        ((SymbolLayer) this.layer).setProperties(iconTextFitPadding);
    }

    public Float getIconPadding() {
        return (Float) ((SymbolLayer) this.layer).getIconPadding().value;
    }

    public void setIconPadding(Float f) {
        PropertyValue<Float> iconPadding = PropertyFactory.iconPadding(f);
        this.constantPropertyUsageMap.put(PROPERTY_ICON_PADDING, iconPadding);
        ((SymbolLayer) this.layer).setProperties(iconPadding);
    }

    public Boolean getIconKeepUpright() {
        return (Boolean) ((SymbolLayer) this.layer).getIconKeepUpright().value;
    }

    public void setIconKeepUpright(Boolean bool) {
        PropertyValue<Boolean> iconKeepUpright = PropertyFactory.iconKeepUpright(bool);
        this.constantPropertyUsageMap.put(PROPERTY_ICON_KEEP_UPRIGHT, iconKeepUpright);
        ((SymbolLayer) this.layer).setProperties(iconKeepUpright);
    }

    public String getIconPitchAlignment() {
        return (String) ((SymbolLayer) this.layer).getIconPitchAlignment().value;
    }

    public void setIconPitchAlignment(String str) {
        PropertyValue<String> iconPitchAlignment = PropertyFactory.iconPitchAlignment(str);
        this.constantPropertyUsageMap.put(PROPERTY_ICON_PITCH_ALIGNMENT, iconPitchAlignment);
        ((SymbolLayer) this.layer).setProperties(iconPitchAlignment);
    }

    public String getTextPitchAlignment() {
        return (String) ((SymbolLayer) this.layer).getTextPitchAlignment().value;
    }

    public void setTextPitchAlignment(String str) {
        PropertyValue<String> textPitchAlignment = PropertyFactory.textPitchAlignment(str);
        this.constantPropertyUsageMap.put(PROPERTY_TEXT_PITCH_ALIGNMENT, textPitchAlignment);
        ((SymbolLayer) this.layer).setProperties(textPitchAlignment);
    }

    public String getTextRotationAlignment() {
        return (String) ((SymbolLayer) this.layer).getTextRotationAlignment().value;
    }

    public void setTextRotationAlignment(String str) {
        PropertyValue<String> textRotationAlignment = PropertyFactory.textRotationAlignment(str);
        this.constantPropertyUsageMap.put(PROPERTY_TEXT_ROTATION_ALIGNMENT, textRotationAlignment);
        ((SymbolLayer) this.layer).setProperties(textRotationAlignment);
    }

    public Float getTextLineHeight() {
        return (Float) ((SymbolLayer) this.layer).getTextLineHeight().value;
    }

    public void setTextLineHeight(Float f) {
        PropertyValue<Float> textLineHeight = PropertyFactory.textLineHeight(f);
        this.constantPropertyUsageMap.put(PROPERTY_TEXT_LINE_HEIGHT, textLineHeight);
        ((SymbolLayer) this.layer).setProperties(textLineHeight);
    }

    public String[] getTextVariableAnchor() {
        return (String[]) ((SymbolLayer) this.layer).getTextVariableAnchor().value;
    }

    public void setTextVariableAnchor(String[] strArr) {
        PropertyValue<String[]> textVariableAnchor = PropertyFactory.textVariableAnchor(strArr);
        this.constantPropertyUsageMap.put(PROPERTY_TEXT_VARIABLE_ANCHOR, textVariableAnchor);
        ((SymbolLayer) this.layer).setProperties(textVariableAnchor);
    }

    public Float getTextMaxAngle() {
        return (Float) ((SymbolLayer) this.layer).getTextMaxAngle().value;
    }

    public void setTextMaxAngle(Float f) {
        PropertyValue<Float> textMaxAngle = PropertyFactory.textMaxAngle(f);
        this.constantPropertyUsageMap.put(PROPERTY_TEXT_MAX_ANGLE, textMaxAngle);
        ((SymbolLayer) this.layer).setProperties(textMaxAngle);
    }

    public Float getTextPadding() {
        return (Float) ((SymbolLayer) this.layer).getTextPadding().value;
    }

    public void setTextPadding(Float f) {
        PropertyValue<Float> textPadding = PropertyFactory.textPadding(f);
        this.constantPropertyUsageMap.put(PROPERTY_TEXT_PADDING, textPadding);
        ((SymbolLayer) this.layer).setProperties(textPadding);
    }

    public Boolean getTextKeepUpright() {
        return (Boolean) ((SymbolLayer) this.layer).getTextKeepUpright().value;
    }

    public void setTextKeepUpright(Boolean bool) {
        PropertyValue<Boolean> textKeepUpright = PropertyFactory.textKeepUpright(bool);
        this.constantPropertyUsageMap.put(PROPERTY_TEXT_KEEP_UPRIGHT, textKeepUpright);
        ((SymbolLayer) this.layer).setProperties(textKeepUpright);
    }

    public Boolean getTextAllowOverlap() {
        return (Boolean) ((SymbolLayer) this.layer).getTextAllowOverlap().value;
    }

    public void setTextAllowOverlap(Boolean bool) {
        PropertyValue<Boolean> textAllowOverlap = PropertyFactory.textAllowOverlap(bool);
        this.constantPropertyUsageMap.put(PROPERTY_TEXT_ALLOW_OVERLAP, textAllowOverlap);
        ((SymbolLayer) this.layer).setProperties(textAllowOverlap);
    }

    public Boolean getTextIgnorePlacement() {
        return (Boolean) ((SymbolLayer) this.layer).getTextIgnorePlacement().value;
    }

    public void setTextIgnorePlacement(Boolean bool) {
        PropertyValue<Boolean> textIgnorePlacement = PropertyFactory.textIgnorePlacement(bool);
        this.constantPropertyUsageMap.put(PROPERTY_TEXT_IGNORE_PLACEMENT, textIgnorePlacement);
        ((SymbolLayer) this.layer).setProperties(textIgnorePlacement);
    }

    public Boolean getTextOptional() {
        return (Boolean) ((SymbolLayer) this.layer).getTextOptional().value;
    }

    public void setTextOptional(Boolean bool) {
        PropertyValue<Boolean> textOptional = PropertyFactory.textOptional(bool);
        this.constantPropertyUsageMap.put(PROPERTY_TEXT_OPTIONAL, textOptional);
        ((SymbolLayer) this.layer).setProperties(textOptional);
    }

    public Float[] getIconTranslate() {
        return (Float[]) ((SymbolLayer) this.layer).getIconTranslate().value;
    }

    public void setIconTranslate(Float[] fArr) {
        PropertyValue<Float[]> iconTranslate = PropertyFactory.iconTranslate(fArr);
        this.constantPropertyUsageMap.put(PROPERTY_ICON_TRANSLATE, iconTranslate);
        ((SymbolLayer) this.layer).setProperties(iconTranslate);
    }

    public String getIconTranslateAnchor() {
        return (String) ((SymbolLayer) this.layer).getIconTranslateAnchor().value;
    }

    public void setIconTranslateAnchor(String str) {
        PropertyValue<String> iconTranslateAnchor = PropertyFactory.iconTranslateAnchor(str);
        this.constantPropertyUsageMap.put(PROPERTY_ICON_TRANSLATE_ANCHOR, iconTranslateAnchor);
        ((SymbolLayer) this.layer).setProperties(iconTranslateAnchor);
    }

    public Float[] getTextTranslate() {
        return (Float[]) ((SymbolLayer) this.layer).getTextTranslate().value;
    }

    public void setTextTranslate(Float[] fArr) {
        PropertyValue<Float[]> textTranslate = PropertyFactory.textTranslate(fArr);
        this.constantPropertyUsageMap.put(PROPERTY_TEXT_TRANSLATE, textTranslate);
        ((SymbolLayer) this.layer).setProperties(textTranslate);
    }

    public String getTextTranslateAnchor() {
        return (String) ((SymbolLayer) this.layer).getTextTranslateAnchor().value;
    }

    public void setTextTranslateAnchor(String str) {
        PropertyValue<String> textTranslateAnchor = PropertyFactory.textTranslateAnchor(str);
        this.constantPropertyUsageMap.put(PROPERTY_TEXT_TRANSLATE_ANCHOR, textTranslateAnchor);
        ((SymbolLayer) this.layer).setProperties(textTranslateAnchor);
    }

    public void setFilter(Expression expression) {
        this.layerFilter = expression;
        ((SymbolLayer) this.layer).setFilter(this.layerFilter);
    }

    public Expression getFilter() {
        return ((SymbolLayer) this.layer).getFilter();
    }
}
