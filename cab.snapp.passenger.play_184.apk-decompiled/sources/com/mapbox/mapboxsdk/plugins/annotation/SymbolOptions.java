package com.mapbox.mapboxsdk.plugins.annotation;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.Point;
import com.mapbox.mapboxsdk.geometry.LatLng;

public class SymbolOptions extends Options<Symbol> {
    static final String PROPERTY_ICON_ANCHOR = "icon-anchor";
    static final String PROPERTY_ICON_COLOR = "icon-color";
    static final String PROPERTY_ICON_HALO_BLUR = "icon-halo-blur";
    static final String PROPERTY_ICON_HALO_COLOR = "icon-halo-color";
    static final String PROPERTY_ICON_HALO_WIDTH = "icon-halo-width";
    static final String PROPERTY_ICON_IMAGE = "icon-image";
    static final String PROPERTY_ICON_OFFSET = "icon-offset";
    static final String PROPERTY_ICON_OPACITY = "icon-opacity";
    static final String PROPERTY_ICON_ROTATE = "icon-rotate";
    static final String PROPERTY_ICON_SIZE = "icon-size";
    private static final String PROPERTY_IS_DRAGGABLE = "is-draggable";
    static final String PROPERTY_SYMBOL_SORT_KEY = "symbol-sort-key";
    static final String PROPERTY_TEXT_ANCHOR = "text-anchor";
    static final String PROPERTY_TEXT_COLOR = "text-color";
    static final String PROPERTY_TEXT_FIELD = "text-field";
    static final String PROPERTY_TEXT_FONT = "text-font";
    static final String PROPERTY_TEXT_HALO_BLUR = "text-halo-blur";
    static final String PROPERTY_TEXT_HALO_COLOR = "text-halo-color";
    static final String PROPERTY_TEXT_HALO_WIDTH = "text-halo-width";
    static final String PROPERTY_TEXT_JUSTIFY = "text-justify";
    static final String PROPERTY_TEXT_LETTER_SPACING = "text-letter-spacing";
    static final String PROPERTY_TEXT_MAX_WIDTH = "text-max-width";
    static final String PROPERTY_TEXT_OFFSET = "text-offset";
    static final String PROPERTY_TEXT_OPACITY = "text-opacity";
    static final String PROPERTY_TEXT_RADIAL_OFFSET = "text-radial-offset";
    static final String PROPERTY_TEXT_ROTATE = "text-rotate";
    static final String PROPERTY_TEXT_SIZE = "text-size";
    static final String PROPERTY_TEXT_TRANSFORM = "text-transform";
    private JsonElement data;
    private Point geometry;
    private String iconAnchor;
    private String iconColor;
    private Float iconHaloBlur;
    private String iconHaloColor;
    private Float iconHaloWidth;
    private String iconImage;
    private Float[] iconOffset;
    private Float iconOpacity;
    private Float iconRotate;
    private Float iconSize;
    private boolean isDraggable;
    private Float symbolSortKey;
    private String textAnchor;
    private String textColor;
    private String textField;
    private String[] textFont;
    private Float textHaloBlur;
    private String textHaloColor;
    private Float textHaloWidth;
    private String textJustify;
    private Float textLetterSpacing;
    private Float textMaxWidth;
    private Float[] textOffset;
    private Float textOpacity;
    private Float textRadialOffset;
    private Float textRotate;
    private Float textSize;
    private String textTransform;

    public SymbolOptions withSymbolSortKey(Float f) {
        this.symbolSortKey = f;
        return this;
    }

    public Float getSymbolSortKey() {
        return this.symbolSortKey;
    }

    public SymbolOptions withIconSize(Float f) {
        this.iconSize = f;
        return this;
    }

    public Float getIconSize() {
        return this.iconSize;
    }

    public SymbolOptions withIconImage(String str) {
        this.iconImage = str;
        return this;
    }

    public String getIconImage() {
        return this.iconImage;
    }

    public SymbolOptions withIconRotate(Float f) {
        this.iconRotate = f;
        return this;
    }

    public Float getIconRotate() {
        return this.iconRotate;
    }

    public SymbolOptions withIconOffset(Float[] fArr) {
        this.iconOffset = fArr;
        return this;
    }

    public Float[] getIconOffset() {
        return this.iconOffset;
    }

    public SymbolOptions withIconAnchor(String str) {
        this.iconAnchor = str;
        return this;
    }

    public String getIconAnchor() {
        return this.iconAnchor;
    }

    public SymbolOptions withTextField(String str) {
        this.textField = str;
        return this;
    }

    public String getTextField() {
        return this.textField;
    }

    public SymbolOptions withTextFont(String[] strArr) {
        this.textFont = strArr;
        return this;
    }

    public String[] getTextFont() {
        return this.textFont;
    }

    public SymbolOptions withTextSize(Float f) {
        this.textSize = f;
        return this;
    }

    public Float getTextSize() {
        return this.textSize;
    }

    public SymbolOptions withTextMaxWidth(Float f) {
        this.textMaxWidth = f;
        return this;
    }

    public Float getTextMaxWidth() {
        return this.textMaxWidth;
    }

    public SymbolOptions withTextLetterSpacing(Float f) {
        this.textLetterSpacing = f;
        return this;
    }

    public Float getTextLetterSpacing() {
        return this.textLetterSpacing;
    }

    public SymbolOptions withTextJustify(String str) {
        this.textJustify = str;
        return this;
    }

    public String getTextJustify() {
        return this.textJustify;
    }

    public SymbolOptions withTextRadialOffset(Float f) {
        this.textRadialOffset = f;
        return this;
    }

    public Float getTextRadialOffset() {
        return this.textRadialOffset;
    }

    public SymbolOptions withTextAnchor(String str) {
        this.textAnchor = str;
        return this;
    }

    public String getTextAnchor() {
        return this.textAnchor;
    }

    public SymbolOptions withTextRotate(Float f) {
        this.textRotate = f;
        return this;
    }

    public Float getTextRotate() {
        return this.textRotate;
    }

    public SymbolOptions withTextTransform(String str) {
        this.textTransform = str;
        return this;
    }

    public String getTextTransform() {
        return this.textTransform;
    }

    public SymbolOptions withTextOffset(Float[] fArr) {
        this.textOffset = fArr;
        return this;
    }

    public Float[] getTextOffset() {
        return this.textOffset;
    }

    public SymbolOptions withIconOpacity(Float f) {
        this.iconOpacity = f;
        return this;
    }

    public Float getIconOpacity() {
        return this.iconOpacity;
    }

    public SymbolOptions withIconColor(String str) {
        this.iconColor = str;
        return this;
    }

    public String getIconColor() {
        return this.iconColor;
    }

    public SymbolOptions withIconHaloColor(String str) {
        this.iconHaloColor = str;
        return this;
    }

    public String getIconHaloColor() {
        return this.iconHaloColor;
    }

    public SymbolOptions withIconHaloWidth(Float f) {
        this.iconHaloWidth = f;
        return this;
    }

    public Float getIconHaloWidth() {
        return this.iconHaloWidth;
    }

    public SymbolOptions withIconHaloBlur(Float f) {
        this.iconHaloBlur = f;
        return this;
    }

    public Float getIconHaloBlur() {
        return this.iconHaloBlur;
    }

    public SymbolOptions withTextOpacity(Float f) {
        this.textOpacity = f;
        return this;
    }

    public Float getTextOpacity() {
        return this.textOpacity;
    }

    public SymbolOptions withTextColor(String str) {
        this.textColor = str;
        return this;
    }

    public String getTextColor() {
        return this.textColor;
    }

    public SymbolOptions withTextHaloColor(String str) {
        this.textHaloColor = str;
        return this;
    }

    public String getTextHaloColor() {
        return this.textHaloColor;
    }

    public SymbolOptions withTextHaloWidth(Float f) {
        this.textHaloWidth = f;
        return this;
    }

    public Float getTextHaloWidth() {
        return this.textHaloWidth;
    }

    public SymbolOptions withTextHaloBlur(Float f) {
        this.textHaloBlur = f;
        return this;
    }

    public Float getTextHaloBlur() {
        return this.textHaloBlur;
    }

    public SymbolOptions withLatLng(LatLng latLng) {
        this.geometry = Point.fromLngLat(latLng.getLongitude(), latLng.getLatitude());
        return this;
    }

    public LatLng getLatLng() {
        Point point = this.geometry;
        if (point == null) {
            return null;
        }
        return new LatLng(point.latitude(), this.geometry.longitude());
    }

    public SymbolOptions withGeometry(Point point) {
        this.geometry = point;
        return this;
    }

    public Point getGeometry() {
        return this.geometry;
    }

    public boolean getDraggable() {
        return this.isDraggable;
    }

    public SymbolOptions withDraggable(boolean z) {
        this.isDraggable = z;
        return this;
    }

    public SymbolOptions withData(JsonElement jsonElement) {
        this.data = jsonElement;
        return this;
    }

    public JsonElement getData() {
        return this.data;
    }

    /* access modifiers changed from: package-private */
    public Symbol build(long j, AnnotationManager<?, Symbol, ?, ?, ?, ?> annotationManager) {
        if (this.geometry != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty(PROPERTY_SYMBOL_SORT_KEY, (Number) this.symbolSortKey);
            jsonObject.addProperty(PROPERTY_ICON_SIZE, (Number) this.iconSize);
            jsonObject.addProperty(PROPERTY_ICON_IMAGE, this.iconImage);
            jsonObject.addProperty(PROPERTY_ICON_ROTATE, (Number) this.iconRotate);
            jsonObject.add(PROPERTY_ICON_OFFSET, ConvertUtils.convertArray(this.iconOffset));
            jsonObject.addProperty(PROPERTY_ICON_ANCHOR, this.iconAnchor);
            jsonObject.addProperty(PROPERTY_TEXT_FIELD, this.textField);
            jsonObject.add(PROPERTY_TEXT_FONT, ConvertUtils.convertArray(this.textFont));
            jsonObject.addProperty(PROPERTY_TEXT_SIZE, (Number) this.textSize);
            jsonObject.addProperty(PROPERTY_TEXT_MAX_WIDTH, (Number) this.textMaxWidth);
            jsonObject.addProperty(PROPERTY_TEXT_LETTER_SPACING, (Number) this.textLetterSpacing);
            jsonObject.addProperty(PROPERTY_TEXT_JUSTIFY, this.textJustify);
            jsonObject.addProperty(PROPERTY_TEXT_RADIAL_OFFSET, (Number) this.textRadialOffset);
            jsonObject.addProperty(PROPERTY_TEXT_ANCHOR, this.textAnchor);
            jsonObject.addProperty(PROPERTY_TEXT_ROTATE, (Number) this.textRotate);
            jsonObject.addProperty(PROPERTY_TEXT_TRANSFORM, this.textTransform);
            jsonObject.add(PROPERTY_TEXT_OFFSET, ConvertUtils.convertArray(this.textOffset));
            jsonObject.addProperty(PROPERTY_ICON_OPACITY, (Number) this.iconOpacity);
            jsonObject.addProperty(PROPERTY_ICON_COLOR, this.iconColor);
            jsonObject.addProperty(PROPERTY_ICON_HALO_COLOR, this.iconHaloColor);
            jsonObject.addProperty(PROPERTY_ICON_HALO_WIDTH, (Number) this.iconHaloWidth);
            jsonObject.addProperty(PROPERTY_ICON_HALO_BLUR, (Number) this.iconHaloBlur);
            jsonObject.addProperty(PROPERTY_TEXT_OPACITY, (Number) this.textOpacity);
            jsonObject.addProperty(PROPERTY_TEXT_COLOR, this.textColor);
            jsonObject.addProperty(PROPERTY_TEXT_HALO_COLOR, this.textHaloColor);
            jsonObject.addProperty(PROPERTY_TEXT_HALO_WIDTH, (Number) this.textHaloWidth);
            jsonObject.addProperty(PROPERTY_TEXT_HALO_BLUR, (Number) this.textHaloBlur);
            Symbol symbol = new Symbol(j, annotationManager, jsonObject, this.geometry);
            symbol.setDraggable(this.isDraggable);
            symbol.setData(this.data);
            return symbol;
        }
        throw new RuntimeException("geometry field is required");
    }

    static SymbolOptions fromFeature(Feature feature) {
        if (feature.geometry() == null) {
            throw new RuntimeException("geometry field is required");
        } else if (!(feature.geometry() instanceof Point)) {
            return null;
        } else {
            SymbolOptions symbolOptions = new SymbolOptions();
            symbolOptions.geometry = (Point) feature.geometry();
            if (feature.hasProperty(PROPERTY_SYMBOL_SORT_KEY)) {
                symbolOptions.symbolSortKey = Float.valueOf(feature.getProperty(PROPERTY_SYMBOL_SORT_KEY).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_ICON_SIZE)) {
                symbolOptions.iconSize = Float.valueOf(feature.getProperty(PROPERTY_ICON_SIZE).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_ICON_IMAGE)) {
                symbolOptions.iconImage = feature.getProperty(PROPERTY_ICON_IMAGE).getAsString();
            }
            if (feature.hasProperty(PROPERTY_ICON_ROTATE)) {
                symbolOptions.iconRotate = Float.valueOf(feature.getProperty(PROPERTY_ICON_ROTATE).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_ICON_OFFSET)) {
                symbolOptions.iconOffset = ConvertUtils.toFloatArray(feature.getProperty(PROPERTY_ICON_OFFSET).getAsJsonArray());
            }
            if (feature.hasProperty(PROPERTY_ICON_ANCHOR)) {
                symbolOptions.iconAnchor = feature.getProperty(PROPERTY_ICON_ANCHOR).getAsString();
            }
            if (feature.hasProperty(PROPERTY_TEXT_FIELD)) {
                symbolOptions.textField = feature.getProperty(PROPERTY_TEXT_FIELD).getAsString();
            }
            if (feature.hasProperty(PROPERTY_TEXT_FONT)) {
                symbolOptions.textFont = ConvertUtils.toStringArray(feature.getProperty(PROPERTY_TEXT_FONT).getAsJsonArray());
            }
            if (feature.hasProperty(PROPERTY_TEXT_SIZE)) {
                symbolOptions.textSize = Float.valueOf(feature.getProperty(PROPERTY_TEXT_SIZE).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_TEXT_MAX_WIDTH)) {
                symbolOptions.textMaxWidth = Float.valueOf(feature.getProperty(PROPERTY_TEXT_MAX_WIDTH).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_TEXT_LETTER_SPACING)) {
                symbolOptions.textLetterSpacing = Float.valueOf(feature.getProperty(PROPERTY_TEXT_LETTER_SPACING).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_TEXT_JUSTIFY)) {
                symbolOptions.textJustify = feature.getProperty(PROPERTY_TEXT_JUSTIFY).getAsString();
            }
            if (feature.hasProperty(PROPERTY_TEXT_RADIAL_OFFSET)) {
                symbolOptions.textRadialOffset = Float.valueOf(feature.getProperty(PROPERTY_TEXT_RADIAL_OFFSET).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_TEXT_ANCHOR)) {
                symbolOptions.textAnchor = feature.getProperty(PROPERTY_TEXT_ANCHOR).getAsString();
            }
            if (feature.hasProperty(PROPERTY_TEXT_ROTATE)) {
                symbolOptions.textRotate = Float.valueOf(feature.getProperty(PROPERTY_TEXT_ROTATE).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_TEXT_TRANSFORM)) {
                symbolOptions.textTransform = feature.getProperty(PROPERTY_TEXT_TRANSFORM).getAsString();
            }
            if (feature.hasProperty(PROPERTY_TEXT_OFFSET)) {
                symbolOptions.textOffset = ConvertUtils.toFloatArray(feature.getProperty(PROPERTY_TEXT_OFFSET).getAsJsonArray());
            }
            if (feature.hasProperty(PROPERTY_ICON_OPACITY)) {
                symbolOptions.iconOpacity = Float.valueOf(feature.getProperty(PROPERTY_ICON_OPACITY).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_ICON_COLOR)) {
                symbolOptions.iconColor = feature.getProperty(PROPERTY_ICON_COLOR).getAsString();
            }
            if (feature.hasProperty(PROPERTY_ICON_HALO_COLOR)) {
                symbolOptions.iconHaloColor = feature.getProperty(PROPERTY_ICON_HALO_COLOR).getAsString();
            }
            if (feature.hasProperty(PROPERTY_ICON_HALO_WIDTH)) {
                symbolOptions.iconHaloWidth = Float.valueOf(feature.getProperty(PROPERTY_ICON_HALO_WIDTH).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_ICON_HALO_BLUR)) {
                symbolOptions.iconHaloBlur = Float.valueOf(feature.getProperty(PROPERTY_ICON_HALO_BLUR).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_TEXT_OPACITY)) {
                symbolOptions.textOpacity = Float.valueOf(feature.getProperty(PROPERTY_TEXT_OPACITY).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_TEXT_COLOR)) {
                symbolOptions.textColor = feature.getProperty(PROPERTY_TEXT_COLOR).getAsString();
            }
            if (feature.hasProperty(PROPERTY_TEXT_HALO_COLOR)) {
                symbolOptions.textHaloColor = feature.getProperty(PROPERTY_TEXT_HALO_COLOR).getAsString();
            }
            if (feature.hasProperty(PROPERTY_TEXT_HALO_WIDTH)) {
                symbolOptions.textHaloWidth = Float.valueOf(feature.getProperty(PROPERTY_TEXT_HALO_WIDTH).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_TEXT_HALO_BLUR)) {
                symbolOptions.textHaloBlur = Float.valueOf(feature.getProperty(PROPERTY_TEXT_HALO_BLUR).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_IS_DRAGGABLE)) {
                symbolOptions.isDraggable = feature.getProperty(PROPERTY_IS_DRAGGABLE).getAsBoolean();
            }
            return symbolOptions;
        }
    }
}
