package com.mapbox.mapboxsdk.style.layers;

import com.google.gson.JsonElement;
import com.mapbox.mapboxsdk.style.expressions.Expression;
import com.mapbox.mapboxsdk.style.types.Formatted;
import com.mapbox.mapboxsdk.utils.ColorUtils;

public class SymbolLayer extends Layer {
    private native Object nativeGetIconAllowOverlap();

    private native Object nativeGetIconAnchor();

    private native Object nativeGetIconColor();

    private native TransitionOptions nativeGetIconColorTransition();

    private native Object nativeGetIconHaloBlur();

    private native TransitionOptions nativeGetIconHaloBlurTransition();

    private native Object nativeGetIconHaloColor();

    private native TransitionOptions nativeGetIconHaloColorTransition();

    private native Object nativeGetIconHaloWidth();

    private native TransitionOptions nativeGetIconHaloWidthTransition();

    private native Object nativeGetIconIgnorePlacement();

    private native Object nativeGetIconImage();

    private native Object nativeGetIconKeepUpright();

    private native Object nativeGetIconOffset();

    private native Object nativeGetIconOpacity();

    private native TransitionOptions nativeGetIconOpacityTransition();

    private native Object nativeGetIconOptional();

    private native Object nativeGetIconPadding();

    private native Object nativeGetIconPitchAlignment();

    private native Object nativeGetIconRotate();

    private native Object nativeGetIconRotationAlignment();

    private native Object nativeGetIconSize();

    private native Object nativeGetIconTextFit();

    private native Object nativeGetIconTextFitPadding();

    private native Object nativeGetIconTranslate();

    private native Object nativeGetIconTranslateAnchor();

    private native TransitionOptions nativeGetIconTranslateTransition();

    private native Object nativeGetSymbolAvoidEdges();

    private native Object nativeGetSymbolPlacement();

    private native Object nativeGetSymbolSortKey();

    private native Object nativeGetSymbolSpacing();

    private native Object nativeGetSymbolZOrder();

    private native Object nativeGetTextAllowOverlap();

    private native Object nativeGetTextAnchor();

    private native Object nativeGetTextColor();

    private native TransitionOptions nativeGetTextColorTransition();

    private native Object nativeGetTextField();

    private native Object nativeGetTextFont();

    private native Object nativeGetTextHaloBlur();

    private native TransitionOptions nativeGetTextHaloBlurTransition();

    private native Object nativeGetTextHaloColor();

    private native TransitionOptions nativeGetTextHaloColorTransition();

    private native Object nativeGetTextHaloWidth();

    private native TransitionOptions nativeGetTextHaloWidthTransition();

    private native Object nativeGetTextIgnorePlacement();

    private native Object nativeGetTextJustify();

    private native Object nativeGetTextKeepUpright();

    private native Object nativeGetTextLetterSpacing();

    private native Object nativeGetTextLineHeight();

    private native Object nativeGetTextMaxAngle();

    private native Object nativeGetTextMaxWidth();

    private native Object nativeGetTextOffset();

    private native Object nativeGetTextOpacity();

    private native TransitionOptions nativeGetTextOpacityTransition();

    private native Object nativeGetTextOptional();

    private native Object nativeGetTextPadding();

    private native Object nativeGetTextPitchAlignment();

    private native Object nativeGetTextRadialOffset();

    private native Object nativeGetTextRotate();

    private native Object nativeGetTextRotationAlignment();

    private native Object nativeGetTextSize();

    private native Object nativeGetTextTransform();

    private native Object nativeGetTextTranslate();

    private native Object nativeGetTextTranslateAnchor();

    private native TransitionOptions nativeGetTextTranslateTransition();

    private native Object nativeGetTextVariableAnchor();

    private native Object nativeGetTextWritingMode();

    private native void nativeSetIconColorTransition(long j, long j2);

    private native void nativeSetIconHaloBlurTransition(long j, long j2);

    private native void nativeSetIconHaloColorTransition(long j, long j2);

    private native void nativeSetIconHaloWidthTransition(long j, long j2);

    private native void nativeSetIconOpacityTransition(long j, long j2);

    private native void nativeSetIconTranslateTransition(long j, long j2);

    private native void nativeSetTextColorTransition(long j, long j2);

    private native void nativeSetTextHaloBlurTransition(long j, long j2);

    private native void nativeSetTextHaloColorTransition(long j, long j2);

    private native void nativeSetTextHaloWidthTransition(long j, long j2);

    private native void nativeSetTextOpacityTransition(long j, long j2);

    private native void nativeSetTextTranslateTransition(long j, long j2);

    /* access modifiers changed from: protected */
    public native void finalize() throws Throwable;

    /* access modifiers changed from: protected */
    public native void initialize(String str, String str2);

    SymbolLayer(long j) {
        super(j);
    }

    public SymbolLayer(String str, String str2) {
        initialize(str, str2);
    }

    public void setSourceLayer(String str) {
        checkThread();
        nativeSetSourceLayer(str);
    }

    public SymbolLayer withSourceLayer(String str) {
        setSourceLayer(str);
        return this;
    }

    public String getSourceId() {
        checkThread();
        return nativeGetSourceId();
    }

    public String getSourceLayer() {
        checkThread();
        return nativeGetSourceLayer();
    }

    public void setFilter(Expression expression) {
        checkThread();
        nativeSetFilter(expression.toArray());
    }

    public SymbolLayer withFilter(Expression expression) {
        setFilter(expression);
        return this;
    }

    public Expression getFilter() {
        checkThread();
        JsonElement nativeGetFilter = nativeGetFilter();
        if (nativeGetFilter != null) {
            return Expression.Converter.convert(nativeGetFilter);
        }
        return null;
    }

    public SymbolLayer withProperties(PropertyValue<?>... propertyValueArr) {
        setProperties(propertyValueArr);
        return this;
    }

    public PropertyValue<String> getSymbolPlacement() {
        checkThread();
        return new PropertyValue<>("symbol-placement", nativeGetSymbolPlacement());
    }

    public PropertyValue<Float> getSymbolSpacing() {
        checkThread();
        return new PropertyValue<>("symbol-spacing", nativeGetSymbolSpacing());
    }

    public PropertyValue<Boolean> getSymbolAvoidEdges() {
        checkThread();
        return new PropertyValue<>("symbol-avoid-edges", nativeGetSymbolAvoidEdges());
    }

    public PropertyValue<Float> getSymbolSortKey() {
        checkThread();
        return new PropertyValue<>("symbol-sort-key", nativeGetSymbolSortKey());
    }

    public PropertyValue<String> getSymbolZOrder() {
        checkThread();
        return new PropertyValue<>("symbol-z-order", nativeGetSymbolZOrder());
    }

    public PropertyValue<Boolean> getIconAllowOverlap() {
        checkThread();
        return new PropertyValue<>("icon-allow-overlap", nativeGetIconAllowOverlap());
    }

    public PropertyValue<Boolean> getIconIgnorePlacement() {
        checkThread();
        return new PropertyValue<>("icon-ignore-placement", nativeGetIconIgnorePlacement());
    }

    public PropertyValue<Boolean> getIconOptional() {
        checkThread();
        return new PropertyValue<>("icon-optional", nativeGetIconOptional());
    }

    public PropertyValue<String> getIconRotationAlignment() {
        checkThread();
        return new PropertyValue<>("icon-rotation-alignment", nativeGetIconRotationAlignment());
    }

    public PropertyValue<Float> getIconSize() {
        checkThread();
        return new PropertyValue<>("icon-size", nativeGetIconSize());
    }

    public PropertyValue<String> getIconTextFit() {
        checkThread();
        return new PropertyValue<>("icon-text-fit", nativeGetIconTextFit());
    }

    public PropertyValue<Float[]> getIconTextFitPadding() {
        checkThread();
        return new PropertyValue<>("icon-text-fit-padding", nativeGetIconTextFitPadding());
    }

    public PropertyValue<String> getIconImage() {
        checkThread();
        return new PropertyValue<>("icon-image", nativeGetIconImage());
    }

    public PropertyValue<Float> getIconRotate() {
        checkThread();
        return new PropertyValue<>("icon-rotate", nativeGetIconRotate());
    }

    public PropertyValue<Float> getIconPadding() {
        checkThread();
        return new PropertyValue<>("icon-padding", nativeGetIconPadding());
    }

    public PropertyValue<Boolean> getIconKeepUpright() {
        checkThread();
        return new PropertyValue<>("icon-keep-upright", nativeGetIconKeepUpright());
    }

    public PropertyValue<Float[]> getIconOffset() {
        checkThread();
        return new PropertyValue<>("icon-offset", nativeGetIconOffset());
    }

    public PropertyValue<String> getIconAnchor() {
        checkThread();
        return new PropertyValue<>("icon-anchor", nativeGetIconAnchor());
    }

    public PropertyValue<String> getIconPitchAlignment() {
        checkThread();
        return new PropertyValue<>("icon-pitch-alignment", nativeGetIconPitchAlignment());
    }

    public PropertyValue<String> getTextPitchAlignment() {
        checkThread();
        return new PropertyValue<>("text-pitch-alignment", nativeGetTextPitchAlignment());
    }

    public PropertyValue<String> getTextRotationAlignment() {
        checkThread();
        return new PropertyValue<>("text-rotation-alignment", nativeGetTextRotationAlignment());
    }

    public PropertyValue<Formatted> getTextField() {
        checkThread();
        return new PropertyValue<>("text-field", nativeGetTextField());
    }

    public PropertyValue<String[]> getTextFont() {
        checkThread();
        return new PropertyValue<>("text-font", nativeGetTextFont());
    }

    public PropertyValue<Float> getTextSize() {
        checkThread();
        return new PropertyValue<>("text-size", nativeGetTextSize());
    }

    public PropertyValue<Float> getTextMaxWidth() {
        checkThread();
        return new PropertyValue<>("text-max-width", nativeGetTextMaxWidth());
    }

    public PropertyValue<Float> getTextLineHeight() {
        checkThread();
        return new PropertyValue<>("text-line-height", nativeGetTextLineHeight());
    }

    public PropertyValue<Float> getTextLetterSpacing() {
        checkThread();
        return new PropertyValue<>("text-letter-spacing", nativeGetTextLetterSpacing());
    }

    public PropertyValue<String> getTextJustify() {
        checkThread();
        return new PropertyValue<>("text-justify", nativeGetTextJustify());
    }

    public PropertyValue<Float> getTextRadialOffset() {
        checkThread();
        return new PropertyValue<>("text-radial-offset", nativeGetTextRadialOffset());
    }

    public PropertyValue<String[]> getTextVariableAnchor() {
        checkThread();
        return new PropertyValue<>("text-variable-anchor", nativeGetTextVariableAnchor());
    }

    public PropertyValue<String> getTextAnchor() {
        checkThread();
        return new PropertyValue<>("text-anchor", nativeGetTextAnchor());
    }

    public PropertyValue<Float> getTextMaxAngle() {
        checkThread();
        return new PropertyValue<>("text-max-angle", nativeGetTextMaxAngle());
    }

    public PropertyValue<String[]> getTextWritingMode() {
        checkThread();
        return new PropertyValue<>("text-writing-mode", nativeGetTextWritingMode());
    }

    public PropertyValue<Float> getTextRotate() {
        checkThread();
        return new PropertyValue<>("text-rotate", nativeGetTextRotate());
    }

    public PropertyValue<Float> getTextPadding() {
        checkThread();
        return new PropertyValue<>("text-padding", nativeGetTextPadding());
    }

    public PropertyValue<Boolean> getTextKeepUpright() {
        checkThread();
        return new PropertyValue<>("text-keep-upright", nativeGetTextKeepUpright());
    }

    public PropertyValue<String> getTextTransform() {
        checkThread();
        return new PropertyValue<>("text-transform", nativeGetTextTransform());
    }

    public PropertyValue<Float[]> getTextOffset() {
        checkThread();
        return new PropertyValue<>("text-offset", nativeGetTextOffset());
    }

    public PropertyValue<Boolean> getTextAllowOverlap() {
        checkThread();
        return new PropertyValue<>("text-allow-overlap", nativeGetTextAllowOverlap());
    }

    public PropertyValue<Boolean> getTextIgnorePlacement() {
        checkThread();
        return new PropertyValue<>("text-ignore-placement", nativeGetTextIgnorePlacement());
    }

    public PropertyValue<Boolean> getTextOptional() {
        checkThread();
        return new PropertyValue<>("text-optional", nativeGetTextOptional());
    }

    public PropertyValue<Float> getIconOpacity() {
        checkThread();
        return new PropertyValue<>("icon-opacity", nativeGetIconOpacity());
    }

    public TransitionOptions getIconOpacityTransition() {
        checkThread();
        return nativeGetIconOpacityTransition();
    }

    public void setIconOpacityTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetIconOpacityTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<String> getIconColor() {
        checkThread();
        return new PropertyValue<>("icon-color", nativeGetIconColor());
    }

    public int getIconColorAsInt() {
        checkThread();
        PropertyValue<String> iconColor = getIconColor();
        if (iconColor.isValue()) {
            return ColorUtils.rgbaToColor(iconColor.getValue());
        }
        throw new RuntimeException("icon-color was set as a Function");
    }

    public TransitionOptions getIconColorTransition() {
        checkThread();
        return nativeGetIconColorTransition();
    }

    public void setIconColorTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetIconColorTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<String> getIconHaloColor() {
        checkThread();
        return new PropertyValue<>("icon-halo-color", nativeGetIconHaloColor());
    }

    public int getIconHaloColorAsInt() {
        checkThread();
        PropertyValue<String> iconHaloColor = getIconHaloColor();
        if (iconHaloColor.isValue()) {
            return ColorUtils.rgbaToColor(iconHaloColor.getValue());
        }
        throw new RuntimeException("icon-halo-color was set as a Function");
    }

    public TransitionOptions getIconHaloColorTransition() {
        checkThread();
        return nativeGetIconHaloColorTransition();
    }

    public void setIconHaloColorTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetIconHaloColorTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float> getIconHaloWidth() {
        checkThread();
        return new PropertyValue<>("icon-halo-width", nativeGetIconHaloWidth());
    }

    public TransitionOptions getIconHaloWidthTransition() {
        checkThread();
        return nativeGetIconHaloWidthTransition();
    }

    public void setIconHaloWidthTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetIconHaloWidthTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float> getIconHaloBlur() {
        checkThread();
        return new PropertyValue<>("icon-halo-blur", nativeGetIconHaloBlur());
    }

    public TransitionOptions getIconHaloBlurTransition() {
        checkThread();
        return nativeGetIconHaloBlurTransition();
    }

    public void setIconHaloBlurTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetIconHaloBlurTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float[]> getIconTranslate() {
        checkThread();
        return new PropertyValue<>("icon-translate", nativeGetIconTranslate());
    }

    public TransitionOptions getIconTranslateTransition() {
        checkThread();
        return nativeGetIconTranslateTransition();
    }

    public void setIconTranslateTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetIconTranslateTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<String> getIconTranslateAnchor() {
        checkThread();
        return new PropertyValue<>("icon-translate-anchor", nativeGetIconTranslateAnchor());
    }

    public PropertyValue<Float> getTextOpacity() {
        checkThread();
        return new PropertyValue<>("text-opacity", nativeGetTextOpacity());
    }

    public TransitionOptions getTextOpacityTransition() {
        checkThread();
        return nativeGetTextOpacityTransition();
    }

    public void setTextOpacityTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetTextOpacityTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<String> getTextColor() {
        checkThread();
        return new PropertyValue<>("text-color", nativeGetTextColor());
    }

    public int getTextColorAsInt() {
        checkThread();
        PropertyValue<String> textColor = getTextColor();
        if (textColor.isValue()) {
            return ColorUtils.rgbaToColor(textColor.getValue());
        }
        throw new RuntimeException("text-color was set as a Function");
    }

    public TransitionOptions getTextColorTransition() {
        checkThread();
        return nativeGetTextColorTransition();
    }

    public void setTextColorTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetTextColorTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<String> getTextHaloColor() {
        checkThread();
        return new PropertyValue<>("text-halo-color", nativeGetTextHaloColor());
    }

    public int getTextHaloColorAsInt() {
        checkThread();
        PropertyValue<String> textHaloColor = getTextHaloColor();
        if (textHaloColor.isValue()) {
            return ColorUtils.rgbaToColor(textHaloColor.getValue());
        }
        throw new RuntimeException("text-halo-color was set as a Function");
    }

    public TransitionOptions getTextHaloColorTransition() {
        checkThread();
        return nativeGetTextHaloColorTransition();
    }

    public void setTextHaloColorTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetTextHaloColorTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float> getTextHaloWidth() {
        checkThread();
        return new PropertyValue<>("text-halo-width", nativeGetTextHaloWidth());
    }

    public TransitionOptions getTextHaloWidthTransition() {
        checkThread();
        return nativeGetTextHaloWidthTransition();
    }

    public void setTextHaloWidthTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetTextHaloWidthTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float> getTextHaloBlur() {
        checkThread();
        return new PropertyValue<>("text-halo-blur", nativeGetTextHaloBlur());
    }

    public TransitionOptions getTextHaloBlurTransition() {
        checkThread();
        return nativeGetTextHaloBlurTransition();
    }

    public void setTextHaloBlurTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetTextHaloBlurTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<Float[]> getTextTranslate() {
        checkThread();
        return new PropertyValue<>("text-translate", nativeGetTextTranslate());
    }

    public TransitionOptions getTextTranslateTransition() {
        checkThread();
        return nativeGetTextTranslateTransition();
    }

    public void setTextTranslateTransition(TransitionOptions transitionOptions) {
        checkThread();
        nativeSetTextTranslateTransition(transitionOptions.getDuration(), transitionOptions.getDelay());
    }

    public PropertyValue<String> getTextTranslateAnchor() {
        checkThread();
        return new PropertyValue<>("text-translate-anchor", nativeGetTextTranslateAnchor());
    }
}
