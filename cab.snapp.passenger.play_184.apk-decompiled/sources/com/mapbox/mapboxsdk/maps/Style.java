package com.mapbox.mapboxsdk.maps;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.util.Pair;
import com.mapbox.mapboxsdk.constants.MapboxConstants;
import com.mapbox.mapboxsdk.style.layers.Layer;
import com.mapbox.mapboxsdk.style.layers.TransitionOptions;
import com.mapbox.mapboxsdk.style.light.Light;
import com.mapbox.mapboxsdk.style.sources.Source;
import com.mapbox.mapboxsdk.utils.BitmapUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Style {
    public static final String DARK = "mapbox://styles/mapbox/dark-v10";
    static final String EMPTY_JSON = "{\"version\": 8,\"sources\": {},\"layers\": []}";
    public static final String LIGHT = "mapbox://styles/mapbox/light-v10";
    public static final String MAPBOX_STREETS = "mapbox://styles/mapbox/streets-v11";
    public static final String OUTDOORS = "mapbox://styles/mapbox/outdoors-v11";
    public static final String SATELLITE = "mapbox://styles/mapbox/satellite-v9";
    public static final String SATELLITE_STREETS = "mapbox://styles/mapbox/satellite-streets-v11";
    public static final String TRAFFIC_DAY = "mapbox://styles/mapbox/traffic-day-v2";
    public static final String TRAFFIC_NIGHT = "mapbox://styles/mapbox/traffic-night-v2";
    private final Builder builder;
    private boolean fullyLoaded;
    private final HashMap<String, Bitmap> images;
    private final HashMap<String, Layer> layers;
    private final NativeMap nativeMap;
    private final HashMap<String, Source> sources;

    @Retention(RetentionPolicy.SOURCE)
    public @interface StyleUrl {
    }

    static class BitmapImageConversionTask extends AsyncTask<Builder.ImageWrapper, Void, Image[]> {
        private WeakReference<NativeMap> nativeMap;

        BitmapImageConversionTask(NativeMap nativeMap2) {
            this.nativeMap = new WeakReference<>(nativeMap2);
        }

        /* access modifiers changed from: protected */
        public Image[] doInBackground(Builder.ImageWrapper... imageWrapperArr) {
            ArrayList arrayList = new ArrayList();
            for (Builder.ImageWrapper access$500 : imageWrapperArr) {
                arrayList.add(Style.toImage(access$500));
            }
            return (Image[]) arrayList.toArray(new Image[arrayList.size()]);
        }

        /* access modifiers changed from: protected */
        public void onPostExecute(Image[] imageArr) {
            super.onPostExecute(imageArr);
            NativeMap nativeMap2 = (NativeMap) this.nativeMap.get();
            if (nativeMap2 != null && !nativeMap2.isDestroyed()) {
                nativeMap2.addImages(imageArr);
            }
        }
    }

    public static class Builder {
        /* access modifiers changed from: private */
        public final List<ImageWrapper> images = new ArrayList();
        /* access modifiers changed from: private */
        public final List<LayerWrapper> layers = new ArrayList();
        /* access modifiers changed from: private */
        public final List<Source> sources = new ArrayList();
        private String styleJson;
        private String styleUri;
        /* access modifiers changed from: private */
        public TransitionOptions transitionOptions;

        static class ImageWrapper {
            Bitmap bitmap;
            String id;
            boolean sdf;

            ImageWrapper(String str, Bitmap bitmap2, boolean z) {
                this.id = str;
                this.bitmap = bitmap2;
                this.sdf = z;
            }

            static ImageWrapper[] convertToImageArray(HashMap<String, Bitmap> hashMap, boolean z) {
                ImageWrapper[] imageWrapperArr = new ImageWrapper[hashMap.size()];
                ArrayList arrayList = new ArrayList(hashMap.keySet());
                for (int i = 0; i < hashMap.size(); i++) {
                    String str = (String) arrayList.get(i);
                    imageWrapperArr[i] = new ImageWrapper(str, hashMap.get(str), z);
                }
                return imageWrapperArr;
            }
        }

        class LayerAboveWrapper extends LayerWrapper {
            String aboveLayer;

            LayerAboveWrapper(Layer layer, String str) {
                super(layer);
                this.aboveLayer = str;
            }
        }

        class LayerAtWrapper extends LayerWrapper {
            int index;

            LayerAtWrapper(Layer layer, int i) {
                super(layer);
                this.index = i;
            }
        }

        class LayerBelowWrapper extends LayerWrapper {
            String belowLayer;

            LayerBelowWrapper(Layer layer, String str) {
                super(layer);
                this.belowLayer = str;
            }
        }

        class LayerWrapper {
            Layer layer;

            LayerWrapper(Layer layer2) {
                this.layer = layer2;
            }
        }

        @Deprecated
        public Builder fromUrl(String str) {
            this.styleUri = str;
            return this;
        }

        public Builder fromUri(String str) {
            this.styleUri = str;
            return this;
        }

        public Builder fromJson(String str) {
            this.styleJson = str;
            return this;
        }

        public Builder withSource(Source source) {
            this.sources.add(source);
            return this;
        }

        public Builder withSources(Source... sourceArr) {
            this.sources.addAll(Arrays.asList(sourceArr));
            return this;
        }

        public Builder withLayer(Layer layer) {
            this.layers.add(new LayerWrapper(layer));
            return this;
        }

        public Builder withLayers(Layer... layerArr) {
            for (Layer layerWrapper : layerArr) {
                this.layers.add(new LayerWrapper(layerWrapper));
            }
            return this;
        }

        public Builder withLayerAt(Layer layer, int i) {
            this.layers.add(new LayerAtWrapper(layer, i));
            return this;
        }

        public Builder withLayerAbove(Layer layer, String str) {
            this.layers.add(new LayerAboveWrapper(layer, str));
            return this;
        }

        public Builder withLayerBelow(Layer layer, String str) {
            this.layers.add(new LayerBelowWrapper(layer, str));
            return this;
        }

        public Builder withTransition(TransitionOptions transitionOptions2) {
            this.transitionOptions = transitionOptions2;
            return this;
        }

        public Builder withImage(String str, Drawable drawable) {
            Bitmap bitmapFromDrawable = BitmapUtils.getBitmapFromDrawable(drawable);
            if (bitmapFromDrawable != null) {
                return withImage(str, bitmapFromDrawable, false);
            }
            throw new IllegalArgumentException("Provided drawable couldn't be converted to a Bitmap.");
        }

        public Builder withDrawableImages(Pair<String, Drawable>... pairArr) {
            return withDrawableImages(false, pairArr);
        }

        public Builder withImage(String str, Bitmap bitmap) {
            return withImage(str, bitmap, false);
        }

        public Builder withBitmapImages(Pair<String, Bitmap>... pairArr) {
            for (Pair<String, Bitmap> pair : pairArr) {
                withImage((String) pair.first, (Bitmap) pair.second, false);
            }
            return this;
        }

        public Builder withImage(String str, Drawable drawable, boolean z) {
            Bitmap bitmapFromDrawable = BitmapUtils.getBitmapFromDrawable(drawable);
            if (bitmapFromDrawable != null) {
                return withImage(str, bitmapFromDrawable, z);
            }
            throw new IllegalArgumentException("Provided drawable couldn't be converted to a Bitmap.");
        }

        public Builder withDrawableImages(boolean z, Pair<String, Drawable>... pairArr) {
            int length = pairArr.length;
            int i = 0;
            while (i < length) {
                Pair<String, Drawable> pair = pairArr[i];
                Bitmap bitmapFromDrawable = BitmapUtils.getBitmapFromDrawable((Drawable) pair.second);
                if (bitmapFromDrawable != null) {
                    withImage((String) pair.first, bitmapFromDrawable, z);
                    i++;
                } else {
                    throw new IllegalArgumentException("Provided drawable couldn't be converted to a Bitmap.");
                }
            }
            return this;
        }

        public Builder withImage(String str, Bitmap bitmap, boolean z) {
            this.images.add(new ImageWrapper(str, bitmap, z));
            return this;
        }

        public Builder withBitmapImages(boolean z, Pair<String, Bitmap>... pairArr) {
            for (Pair<String, Bitmap> pair : pairArr) {
                withImage((String) pair.first, (Bitmap) pair.second, z);
            }
            return this;
        }

        /* access modifiers changed from: package-private */
        public String getUri() {
            return this.styleUri;
        }

        /* access modifiers changed from: package-private */
        public String getJson() {
            return this.styleJson;
        }

        /* access modifiers changed from: package-private */
        public List<Source> getSources() {
            return this.sources;
        }

        /* access modifiers changed from: package-private */
        public List<LayerWrapper> getLayers() {
            return this.layers;
        }

        /* access modifiers changed from: package-private */
        public List<ImageWrapper> getImages() {
            return this.images;
        }

        /* access modifiers changed from: package-private */
        public TransitionOptions getTransitionOptions() {
            return this.transitionOptions;
        }

        /* access modifiers changed from: package-private */
        public Style build(NativeMap nativeMap) {
            return new Style(this, nativeMap);
        }
    }

    public interface OnStyleLoaded {
        void onStyleLoaded(Style style);
    }

    private Style(Builder builder2, NativeMap nativeMap2) {
        this.sources = new HashMap<>();
        this.layers = new HashMap<>();
        this.images = new HashMap<>();
        this.builder = builder2;
        this.nativeMap = nativeMap2;
    }

    @Deprecated
    public String getUrl() {
        validateState("getUrl");
        return this.nativeMap.getStyleUri();
    }

    public String getUri() {
        validateState("getUri");
        return this.nativeMap.getStyleUri();
    }

    public String getJson() {
        validateState("getJson");
        return this.nativeMap.getStyleJson();
    }

    public List<Source> getSources() {
        validateState("getSources");
        return this.nativeMap.getSources();
    }

    public void addSource(Source source) {
        validateState("addSource");
        this.nativeMap.addSource(source);
        this.sources.put(source.getId(), source);
    }

    public Source getSource(String str) {
        validateState("getSource");
        Source source = this.sources.get(str);
        return source == null ? this.nativeMap.getSource(str) : source;
    }

    public <T extends Source> T getSourceAs(String str) {
        validateState("getSourceAs");
        if (this.sources.containsKey(str)) {
            return (Source) this.sources.get(str);
        }
        return this.nativeMap.getSource(str);
    }

    public boolean removeSource(String str) {
        validateState("removeSource");
        this.sources.remove(str);
        return this.nativeMap.removeSource(str);
    }

    public boolean removeSource(Source source) {
        validateState("removeSource");
        this.sources.remove(source.getId());
        return this.nativeMap.removeSource(source);
    }

    public void addLayer(Layer layer) {
        validateState("addLayer");
        this.nativeMap.addLayer(layer);
        this.layers.put(layer.getId(), layer);
    }

    public void addLayerBelow(Layer layer, String str) {
        validateState("addLayerBelow");
        this.nativeMap.addLayerBelow(layer, str);
        this.layers.put(layer.getId(), layer);
    }

    public void addLayerAbove(Layer layer, String str) {
        validateState("addLayerAbove");
        this.nativeMap.addLayerAbove(layer, str);
        this.layers.put(layer.getId(), layer);
    }

    public void addLayerAt(Layer layer, int i) {
        validateState("addLayerAbove");
        this.nativeMap.addLayerAt(layer, i);
        this.layers.put(layer.getId(), layer);
    }

    public Layer getLayer(String str) {
        validateState("getLayer");
        Layer layer = this.layers.get(str);
        return layer == null ? this.nativeMap.getLayer(str) : layer;
    }

    public <T extends Layer> T getLayerAs(String str) {
        validateState("getLayerAs");
        return this.nativeMap.getLayer(str);
    }

    public List<Layer> getLayers() {
        validateState("getLayers");
        return this.nativeMap.getLayers();
    }

    public boolean removeLayer(String str) {
        validateState("removeLayer");
        this.layers.remove(str);
        return this.nativeMap.removeLayer(str);
    }

    public boolean removeLayer(Layer layer) {
        validateState("removeLayer");
        this.layers.remove(layer.getId());
        return this.nativeMap.removeLayer(layer);
    }

    public boolean removeLayerAt(int i) {
        validateState("removeLayerAt");
        return this.nativeMap.removeLayerAt(i);
    }

    public void addImage(String str, Bitmap bitmap) {
        addImage(str, bitmap, false);
    }

    public void addImage(String str, Drawable drawable) {
        Bitmap bitmapFromDrawable = BitmapUtils.getBitmapFromDrawable(drawable);
        if (bitmapFromDrawable != null) {
            addImage(str, bitmapFromDrawable, false);
            return;
        }
        throw new IllegalArgumentException("Provided drawable couldn't be converted to a Bitmap.");
    }

    public void addImage(String str, Bitmap bitmap, boolean z) {
        validateState("addImage");
        this.nativeMap.addImages(new Image[]{toImage(new Builder.ImageWrapper(str, bitmap, z))});
    }

    public void addImageAsync(String str, Bitmap bitmap) {
        addImageAsync(str, bitmap, false);
    }

    public void addImageAsync(String str, Drawable drawable) {
        Bitmap bitmapFromDrawable = BitmapUtils.getBitmapFromDrawable(drawable);
        if (bitmapFromDrawable != null) {
            addImageAsync(str, bitmapFromDrawable, false);
            return;
        }
        throw new IllegalArgumentException("Provided drawable couldn't be converted to a Bitmap.");
    }

    public void addImageAsync(String str, Bitmap bitmap, boolean z) {
        validateState("addImage");
        new BitmapImageConversionTask(this.nativeMap).execute(new Builder.ImageWrapper[]{new Builder.ImageWrapper(str, bitmap, z)});
    }

    public void addImages(HashMap<String, Bitmap> hashMap) {
        addImages(hashMap, false);
    }

    public void addImages(HashMap<String, Bitmap> hashMap, boolean z) {
        validateState("addImage");
        Image[] imageArr = new Image[hashMap.size()];
        int i = 0;
        for (Builder.ImageWrapper image : Builder.ImageWrapper.convertToImageArray(hashMap, z)) {
            imageArr[i] = toImage(image);
            i++;
        }
        this.nativeMap.addImages(imageArr);
    }

    public void addImagesAsync(HashMap<String, Bitmap> hashMap) {
        addImagesAsync(hashMap, false);
    }

    public void addImagesAsync(HashMap<String, Bitmap> hashMap, boolean z) {
        validateState("addImages");
        new BitmapImageConversionTask(this.nativeMap).execute(Builder.ImageWrapper.convertToImageArray(hashMap, z));
    }

    public void removeImage(String str) {
        validateState("removeImage");
        this.nativeMap.removeImage(str);
    }

    public Bitmap getImage(String str) {
        validateState("getImage");
        return this.nativeMap.getImage(str);
    }

    public void setTransition(TransitionOptions transitionOptions) {
        validateState("setTransition");
        this.nativeMap.setTransitionOptions(transitionOptions);
    }

    public TransitionOptions getTransition() {
        validateState("getTransition");
        return this.nativeMap.getTransitionOptions();
    }

    public Light getLight() {
        validateState("getLight");
        return this.nativeMap.getLight();
    }

    /* access modifiers changed from: package-private */
    public void clear() {
        this.fullyLoaded = false;
        for (Layer next : this.layers.values()) {
            if (next != null) {
                next.setDetached();
                this.nativeMap.removeLayer(next);
            }
        }
        for (Source next2 : this.sources.values()) {
            if (next2 != null) {
                next2.setDetached();
                this.nativeMap.removeSource(next2);
            }
        }
        for (Map.Entry next3 : this.images.entrySet()) {
            this.nativeMap.removeImage((String) next3.getKey());
            ((Bitmap) next3.getValue()).recycle();
        }
        this.sources.clear();
        this.layers.clear();
        this.images.clear();
    }

    /* access modifiers changed from: package-private */
    public void onDidFinishLoadingStyle() {
        if (!this.fullyLoaded) {
            this.fullyLoaded = true;
            for (Source addSource : this.builder.sources) {
                addSource(addSource);
            }
            for (Builder.LayerWrapper layerWrapper : this.builder.layers) {
                if (layerWrapper instanceof Builder.LayerAtWrapper) {
                    addLayerAt(layerWrapper.layer, ((Builder.LayerAtWrapper) layerWrapper).index);
                } else if (layerWrapper instanceof Builder.LayerAboveWrapper) {
                    addLayerAbove(layerWrapper.layer, ((Builder.LayerAboveWrapper) layerWrapper).aboveLayer);
                } else if (layerWrapper instanceof Builder.LayerBelowWrapper) {
                    addLayerBelow(layerWrapper.layer, ((Builder.LayerBelowWrapper) layerWrapper).belowLayer);
                } else {
                    addLayerBelow(layerWrapper.layer, MapboxConstants.LAYER_ID_ANNOTATIONS);
                }
            }
            for (Builder.ImageWrapper imageWrapper : this.builder.images) {
                addImage(imageWrapper.id, imageWrapper.bitmap, imageWrapper.sdf);
            }
            if (this.builder.transitionOptions != null) {
                setTransition(this.builder.transitionOptions);
            }
        }
    }

    public boolean isFullyLoaded() {
        return this.fullyLoaded;
    }

    private void validateState(String str) {
        if (!this.fullyLoaded) {
            throw new IllegalStateException(String.format("Calling %s when a newer style is loading/has loaded.", new Object[]{str}));
        }
    }

    /* access modifiers changed from: private */
    public static Image toImage(Builder.ImageWrapper imageWrapper) {
        Bitmap bitmap = imageWrapper.bitmap;
        if (bitmap.getConfig() != Bitmap.Config.ARGB_8888) {
            bitmap = bitmap.copy(Bitmap.Config.ARGB_8888, false);
        }
        ByteBuffer allocate = ByteBuffer.allocate(bitmap.getByteCount());
        bitmap.copyPixelsToBuffer(allocate);
        Image image = new Image(allocate.array(), ((float) bitmap.getDensity()) / 160.0f, imageWrapper.id, bitmap.getWidth(), bitmap.getHeight(), imageWrapper.sdf);
        return image;
    }
}
