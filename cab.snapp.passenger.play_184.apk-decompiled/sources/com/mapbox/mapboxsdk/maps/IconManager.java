package com.mapbox.mapboxsdk.maps;

import android.graphics.Bitmap;
import com.mapbox.mapboxsdk.Mapbox;
import com.mapbox.mapboxsdk.annotations.Icon;
import com.mapbox.mapboxsdk.annotations.IconFactory;
import com.mapbox.mapboxsdk.annotations.Marker;
import java.util.HashMap;
import java.util.Map;

class IconManager {
    private int highestIconHeight;
    private int highestIconWidth;
    private final Map<Icon, Integer> iconMap = new HashMap();
    private NativeMap nativeMap;

    IconManager(NativeMap nativeMap2) {
        this.nativeMap = nativeMap2;
    }

    /* access modifiers changed from: package-private */
    public Icon loadIconForMarker(Marker marker) {
        Icon icon = marker.getIcon();
        if (icon == null) {
            icon = loadDefaultIconForMarker(marker);
        } else {
            updateHighestIconSize(icon);
        }
        addIcon(icon);
        return icon;
    }

    /* access modifiers changed from: package-private */
    public int getTopOffsetPixelsForIcon(Icon icon) {
        double topOffsetPixelsForAnnotationSymbol = this.nativeMap.getTopOffsetPixelsForAnnotationSymbol(icon.getId());
        double pixelRatio = (double) this.nativeMap.getPixelRatio();
        Double.isNaN(pixelRatio);
        return (int) (topOffsetPixelsForAnnotationSymbol * pixelRatio);
    }

    /* access modifiers changed from: package-private */
    public int getHighestIconWidth() {
        return this.highestIconWidth;
    }

    /* access modifiers changed from: package-private */
    public int getHighestIconHeight() {
        return this.highestIconHeight;
    }

    private Icon loadDefaultIconForMarker(Marker marker) {
        Icon defaultMarker = IconFactory.getInstance(Mapbox.getApplicationContext()).defaultMarker();
        Bitmap bitmap = defaultMarker.getBitmap();
        updateHighestIconSize(bitmap.getWidth(), bitmap.getHeight() / 2);
        marker.setIcon(defaultMarker);
        return defaultMarker;
    }

    private void addIcon(Icon icon) {
        addIcon(icon, true);
    }

    private void addIcon(Icon icon, boolean z) {
        if (!this.iconMap.keySet().contains(icon)) {
            this.iconMap.put(icon, 1);
            if (z) {
                loadIcon(icon);
            }
        } else {
            Map<Icon, Integer> map = this.iconMap;
            map.put(icon, Integer.valueOf(map.get(icon).intValue() + 1));
        }
    }

    private void updateHighestIconSize(Icon icon) {
        updateHighestIconSize(icon.getBitmap());
    }

    private void updateHighestIconSize(Bitmap bitmap) {
        updateHighestIconSize(bitmap.getWidth(), bitmap.getHeight());
    }

    private void updateHighestIconSize(int i, int i2) {
        if (i > this.highestIconWidth) {
            this.highestIconWidth = i;
        }
        if (i2 > this.highestIconHeight) {
            this.highestIconHeight = i2;
        }
    }

    private void loadIcon(Icon icon) {
        Bitmap bitmap = icon.getBitmap();
        this.nativeMap.addAnnotationIcon(icon.getId(), bitmap.getWidth(), bitmap.getHeight(), icon.getScale(), icon.toBytes());
    }

    /* access modifiers changed from: package-private */
    public void reloadIcons() {
        for (Icon loadIcon : this.iconMap.keySet()) {
            loadIcon(loadIcon);
        }
    }

    /* access modifiers changed from: package-private */
    public void ensureIconLoaded(Marker marker, MapboxMap mapboxMap) {
        Icon icon = marker.getIcon();
        if (icon == null) {
            icon = loadDefaultIconForMarker(marker);
        }
        addIcon(icon);
        setTopOffsetPixels(marker, mapboxMap, icon);
    }

    private void setTopOffsetPixels(Marker marker, MapboxMap mapboxMap, Icon icon) {
        Marker marker2 = marker.getId() != -1 ? (Marker) mapboxMap.getAnnotation(marker.getId()) : null;
        if (marker2 == null || marker2.getIcon() == null || marker2.getIcon() != marker.getIcon()) {
            marker.setTopOffsetPixels(getTopOffsetPixelsForIcon(icon));
        }
    }

    /* access modifiers changed from: package-private */
    public void iconCleanup(Icon icon) {
        Integer num = this.iconMap.get(icon);
        if (num != null) {
            Integer valueOf = Integer.valueOf(num.intValue() - 1);
            if (valueOf.intValue() == 0) {
                remove(icon);
                return;
            }
            updateIconRefCounter(icon, valueOf.intValue());
        }
    }

    private void remove(Icon icon) {
        this.nativeMap.removeAnnotationIcon(icon.getId());
        this.iconMap.remove(icon);
    }

    private void updateIconRefCounter(Icon icon, int i) {
        this.iconMap.put(icon, Integer.valueOf(i));
    }
}
