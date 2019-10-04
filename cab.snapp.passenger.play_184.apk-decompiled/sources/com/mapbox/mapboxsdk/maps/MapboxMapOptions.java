package com.mapbox.mapboxsdk.maps;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.core.content.res.ResourcesCompat;
import com.mapbox.mapboxsdk.R;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.constants.MapboxConstants;
import com.mapbox.mapboxsdk.utils.BitmapUtils;
import com.mapbox.mapboxsdk.utils.FontUtils;
import java.util.Arrays;

public class MapboxMapOptions implements Parcelable {
    public static final Parcelable.Creator<MapboxMapOptions> CREATOR = new Parcelable.Creator<MapboxMapOptions>() {
        public final MapboxMapOptions createFromParcel(Parcel parcel) {
            return new MapboxMapOptions(parcel);
        }

        public final MapboxMapOptions[] newArray(int i) {
            return new MapboxMapOptions[i];
        }
    };
    private static final float FOUR_DP = 4.0f;
    private static final int LIGHT_GRAY = -988703;
    private static final float NINETY_TWO_DP = 92.0f;
    private static final int UNDEFINED_COLOR = -1;
    private String apiBaseUri;
    private boolean attributionEnabled;
    private int attributionGravity;
    private int[] attributionMargins;
    private int attributionTintColor;
    private CameraPosition cameraPosition;
    private boolean compassEnabled;
    private int compassGravity;
    private Drawable compassImage;
    private int[] compassMargins;
    private boolean crossSourceCollisions;
    private boolean debugActive;
    private boolean doubleTapGesturesEnabled;
    private boolean fadeCompassFacingNorth;
    private int foregroundLoadColor;
    private String localIdeographFontFamily;
    private boolean logoEnabled;
    private int logoGravity;
    private int[] logoMargins;
    private double maxZoom;
    private double minZoom;
    private float pixelRatio;
    private boolean prefetchesTiles;
    private boolean quickZoomGesturesEnabled;
    private boolean rotateGesturesEnabled;
    private boolean scrollGesturesEnabled;
    private boolean textureMode;
    private boolean tiltGesturesEnabled;
    private boolean translucentTextureSurface;
    private boolean zMediaOverlay;
    private boolean zoomGesturesEnabled;

    public int describeContents() {
        return 0;
    }

    @Deprecated
    public MapboxMapOptions() {
        this.compassEnabled = true;
        this.fadeCompassFacingNorth = true;
        this.compassGravity = 8388661;
        this.logoEnabled = true;
        this.logoGravity = 8388691;
        this.attributionTintColor = -1;
        this.attributionEnabled = true;
        this.attributionGravity = 8388691;
        this.minZoom = 0.0d;
        this.maxZoom = 25.5d;
        this.rotateGesturesEnabled = true;
        this.scrollGesturesEnabled = true;
        this.tiltGesturesEnabled = true;
        this.zoomGesturesEnabled = true;
        this.doubleTapGesturesEnabled = true;
        this.quickZoomGesturesEnabled = true;
        this.prefetchesTiles = true;
        this.zMediaOverlay = false;
        this.crossSourceCollisions = true;
    }

    private MapboxMapOptions(Parcel parcel) {
        boolean z = true;
        this.compassEnabled = true;
        this.fadeCompassFacingNorth = true;
        this.compassGravity = 8388661;
        this.logoEnabled = true;
        this.logoGravity = 8388691;
        this.attributionTintColor = -1;
        this.attributionEnabled = true;
        this.attributionGravity = 8388691;
        this.minZoom = 0.0d;
        this.maxZoom = 25.5d;
        this.rotateGesturesEnabled = true;
        this.scrollGesturesEnabled = true;
        this.tiltGesturesEnabled = true;
        this.zoomGesturesEnabled = true;
        this.doubleTapGesturesEnabled = true;
        this.quickZoomGesturesEnabled = true;
        this.prefetchesTiles = true;
        this.zMediaOverlay = false;
        this.crossSourceCollisions = true;
        this.cameraPosition = (CameraPosition) parcel.readParcelable(CameraPosition.class.getClassLoader());
        this.debugActive = parcel.readByte() != 0;
        this.compassEnabled = parcel.readByte() != 0;
        this.compassGravity = parcel.readInt();
        this.compassMargins = parcel.createIntArray();
        this.fadeCompassFacingNorth = parcel.readByte() != 0;
        Bitmap bitmap = (Bitmap) parcel.readParcelable(getClass().getClassLoader());
        if (bitmap != null) {
            this.compassImage = new BitmapDrawable(bitmap);
        }
        this.logoEnabled = parcel.readByte() != 0;
        this.logoGravity = parcel.readInt();
        this.logoMargins = parcel.createIntArray();
        this.attributionEnabled = parcel.readByte() != 0;
        this.attributionGravity = parcel.readInt();
        this.attributionMargins = parcel.createIntArray();
        this.attributionTintColor = parcel.readInt();
        this.minZoom = parcel.readDouble();
        this.maxZoom = parcel.readDouble();
        this.rotateGesturesEnabled = parcel.readByte() != 0;
        this.scrollGesturesEnabled = parcel.readByte() != 0;
        this.tiltGesturesEnabled = parcel.readByte() != 0;
        this.zoomGesturesEnabled = parcel.readByte() != 0;
        this.doubleTapGesturesEnabled = parcel.readByte() != 0;
        this.quickZoomGesturesEnabled = parcel.readByte() != 0;
        this.apiBaseUri = parcel.readString();
        this.textureMode = parcel.readByte() != 0;
        this.translucentTextureSurface = parcel.readByte() != 0;
        this.prefetchesTiles = parcel.readByte() != 0;
        this.zMediaOverlay = parcel.readByte() != 0;
        this.localIdeographFontFamily = parcel.readString();
        this.pixelRatio = parcel.readFloat();
        this.foregroundLoadColor = parcel.readInt();
        this.crossSourceCollisions = parcel.readByte() == 0 ? false : z;
    }

    public static MapboxMapOptions createFromAttributes(Context context) {
        return createFromAttributes(context, null);
    }

    public static MapboxMapOptions createFromAttributes(Context context, AttributeSet attributeSet) {
        MapboxMapOptions mapboxMapOptions = new MapboxMapOptions();
        float f = context.getResources().getDisplayMetrics().density;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.mapbox_MapView, 0, 0);
        try {
            mapboxMapOptions.camera(new CameraPosition.Builder(obtainStyledAttributes).build());
            mapboxMapOptions.apiBaseUrl(obtainStyledAttributes.getString(R.styleable.mapbox_MapView_mapbox_apiBaseUrl));
            String string = obtainStyledAttributes.getString(R.styleable.mapbox_MapView_mapbox_apiBaseUri);
            if (!TextUtils.isEmpty(string)) {
                mapboxMapOptions.apiBaseUri(string);
            }
            mapboxMapOptions.zoomGesturesEnabled(obtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_uiZoomGestures, true));
            mapboxMapOptions.scrollGesturesEnabled(obtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_uiScrollGestures, true));
            mapboxMapOptions.rotateGesturesEnabled(obtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_uiRotateGestures, true));
            mapboxMapOptions.tiltGesturesEnabled(obtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_uiTiltGestures, true));
            mapboxMapOptions.doubleTapGesturesEnabled(obtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_uiDoubleTapGestures, true));
            mapboxMapOptions.quickZoomGesturesEnabled(obtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_uiQuickZoomGestures, true));
            mapboxMapOptions.maxZoomPreference((double) obtainStyledAttributes.getFloat(R.styleable.mapbox_MapView_mapbox_cameraZoomMax, 25.5f));
            mapboxMapOptions.minZoomPreference((double) obtainStyledAttributes.getFloat(R.styleable.mapbox_MapView_mapbox_cameraZoomMin, 0.0f));
            mapboxMapOptions.compassEnabled(obtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_uiCompass, true));
            mapboxMapOptions.compassGravity(obtainStyledAttributes.getInt(R.styleable.mapbox_MapView_mapbox_uiCompassGravity, 8388661));
            int i = R.styleable.mapbox_MapView_mapbox_uiCompassMarginLeft;
            float f2 = FOUR_DP * f;
            mapboxMapOptions.compassMargins(new int[]{(int) obtainStyledAttributes.getDimension(i, f2), (int) obtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_uiCompassMarginTop, f2), (int) obtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_uiCompassMarginRight, f2), (int) obtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_uiCompassMarginBottom, f2)});
            mapboxMapOptions.compassFadesWhenFacingNorth(obtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_uiCompassFadeFacingNorth, true));
            Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.mapbox_MapView_mapbox_uiCompassDrawable);
            if (drawable == null) {
                drawable = ResourcesCompat.getDrawable(context.getResources(), R.drawable.mapbox_compass_icon, null);
            }
            mapboxMapOptions.compassImage(drawable);
            mapboxMapOptions.logoEnabled(obtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_uiLogo, true));
            mapboxMapOptions.logoGravity(obtainStyledAttributes.getInt(R.styleable.mapbox_MapView_mapbox_uiLogoGravity, 8388691));
            mapboxMapOptions.logoMargins(new int[]{(int) obtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_uiLogoMarginLeft, f2), (int) obtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_uiLogoMarginTop, f2), (int) obtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_uiLogoMarginRight, f2), (int) obtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_uiLogoMarginBottom, f2)});
            mapboxMapOptions.attributionTintColor(obtainStyledAttributes.getColor(R.styleable.mapbox_MapView_mapbox_uiAttributionTintColor, -1));
            mapboxMapOptions.attributionEnabled(obtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_uiAttribution, true));
            mapboxMapOptions.attributionGravity(obtainStyledAttributes.getInt(R.styleable.mapbox_MapView_mapbox_uiAttributionGravity, 8388691));
            mapboxMapOptions.attributionMargins(new int[]{(int) obtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_uiAttributionMarginLeft, f * NINETY_TWO_DP), (int) obtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_uiAttributionMarginTop, f2), (int) obtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_uiAttributionMarginRight, f2), (int) obtainStyledAttributes.getDimension(R.styleable.mapbox_MapView_mapbox_uiAttributionMarginBottom, f2)});
            mapboxMapOptions.textureMode(obtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_renderTextureMode, false));
            mapboxMapOptions.translucentTextureSurface(obtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_renderTextureTranslucentSurface, false));
            mapboxMapOptions.setPrefetchesTiles(obtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_enableTilePrefetch, true));
            mapboxMapOptions.renderSurfaceOnTop(obtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_enableZMediaOverlay, false));
            String string2 = obtainStyledAttributes.getString(R.styleable.mapbox_MapView_mapbox_localIdeographFontFamily);
            if (string2 == null) {
                string2 = MapboxConstants.DEFAULT_FONT;
            }
            mapboxMapOptions.localIdeographFontFamily(string2);
            mapboxMapOptions.pixelRatio(obtainStyledAttributes.getFloat(R.styleable.mapbox_MapView_mapbox_pixelRatio, 0.0f));
            mapboxMapOptions.foregroundLoadColor(obtainStyledAttributes.getInt(R.styleable.mapbox_MapView_mapbox_foregroundLoadColor, LIGHT_GRAY));
            mapboxMapOptions.crossSourceCollisions(obtainStyledAttributes.getBoolean(R.styleable.mapbox_MapView_mapbox_cross_source_collisions, true));
            return mapboxMapOptions;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @Deprecated
    public MapboxMapOptions apiBaseUrl(String str) {
        this.apiBaseUri = str;
        return this;
    }

    public MapboxMapOptions apiBaseUri(String str) {
        this.apiBaseUri = str;
        return this;
    }

    public MapboxMapOptions camera(CameraPosition cameraPosition2) {
        this.cameraPosition = cameraPosition2;
        return this;
    }

    public MapboxMapOptions debugActive(boolean z) {
        this.debugActive = z;
        return this;
    }

    public MapboxMapOptions minZoomPreference(double d) {
        this.minZoom = d;
        return this;
    }

    public MapboxMapOptions maxZoomPreference(double d) {
        this.maxZoom = d;
        return this;
    }

    public MapboxMapOptions compassEnabled(boolean z) {
        this.compassEnabled = z;
        return this;
    }

    public MapboxMapOptions compassGravity(int i) {
        this.compassGravity = i;
        return this;
    }

    public MapboxMapOptions compassMargins(int[] iArr) {
        this.compassMargins = iArr;
        return this;
    }

    public MapboxMapOptions compassFadesWhenFacingNorth(boolean z) {
        this.fadeCompassFacingNorth = z;
        return this;
    }

    public MapboxMapOptions compassImage(Drawable drawable) {
        this.compassImage = drawable;
        return this;
    }

    public MapboxMapOptions logoEnabled(boolean z) {
        this.logoEnabled = z;
        return this;
    }

    public MapboxMapOptions logoGravity(int i) {
        this.logoGravity = i;
        return this;
    }

    public MapboxMapOptions logoMargins(int[] iArr) {
        this.logoMargins = iArr;
        return this;
    }

    public MapboxMapOptions attributionEnabled(boolean z) {
        this.attributionEnabled = z;
        return this;
    }

    public MapboxMapOptions attributionGravity(int i) {
        this.attributionGravity = i;
        return this;
    }

    public MapboxMapOptions attributionMargins(int[] iArr) {
        this.attributionMargins = iArr;
        return this;
    }

    public MapboxMapOptions attributionTintColor(int i) {
        this.attributionTintColor = i;
        return this;
    }

    public MapboxMapOptions rotateGesturesEnabled(boolean z) {
        this.rotateGesturesEnabled = z;
        return this;
    }

    public MapboxMapOptions scrollGesturesEnabled(boolean z) {
        this.scrollGesturesEnabled = z;
        return this;
    }

    public MapboxMapOptions tiltGesturesEnabled(boolean z) {
        this.tiltGesturesEnabled = z;
        return this;
    }

    public MapboxMapOptions zoomGesturesEnabled(boolean z) {
        this.zoomGesturesEnabled = z;
        return this;
    }

    public MapboxMapOptions doubleTapGesturesEnabled(boolean z) {
        this.doubleTapGesturesEnabled = z;
        return this;
    }

    public MapboxMapOptions quickZoomGesturesEnabled(boolean z) {
        this.quickZoomGesturesEnabled = z;
        return this;
    }

    public MapboxMapOptions textureMode(boolean z) {
        this.textureMode = z;
        return this;
    }

    public MapboxMapOptions translucentTextureSurface(boolean z) {
        this.translucentTextureSurface = z;
        return this;
    }

    public MapboxMapOptions foregroundLoadColor(int i) {
        this.foregroundLoadColor = i;
        return this;
    }

    public MapboxMapOptions setPrefetchesTiles(boolean z) {
        this.prefetchesTiles = z;
        return this;
    }

    public MapboxMapOptions crossSourceCollisions(boolean z) {
        this.crossSourceCollisions = z;
        return this;
    }

    public MapboxMapOptions localIdeographFontFamily(String str) {
        this.localIdeographFontFamily = FontUtils.extractValidFont(str);
        return this;
    }

    public MapboxMapOptions localIdeographFontFamily(String... strArr) {
        this.localIdeographFontFamily = FontUtils.extractValidFont(strArr);
        return this;
    }

    public MapboxMapOptions pixelRatio(float f) {
        this.pixelRatio = f;
        return this;
    }

    public boolean getPrefetchesTiles() {
        return this.prefetchesTiles;
    }

    public boolean getCrossSourceCollisions() {
        return this.crossSourceCollisions;
    }

    public void renderSurfaceOnTop(boolean z) {
        this.zMediaOverlay = z;
    }

    public boolean getRenderSurfaceOnTop() {
        return this.zMediaOverlay;
    }

    @Deprecated
    public String getApiBaseUrl() {
        return this.apiBaseUri;
    }

    public String getApiBaseUri() {
        return this.apiBaseUri;
    }

    public CameraPosition getCamera() {
        return this.cameraPosition;
    }

    public double getMinZoomPreference() {
        return this.minZoom;
    }

    public double getMaxZoomPreference() {
        return this.maxZoom;
    }

    public boolean getCompassEnabled() {
        return this.compassEnabled;
    }

    public int getCompassGravity() {
        return this.compassGravity;
    }

    public int[] getCompassMargins() {
        return this.compassMargins;
    }

    public boolean getCompassFadeFacingNorth() {
        return this.fadeCompassFacingNorth;
    }

    public Drawable getCompassImage() {
        return this.compassImage;
    }

    public boolean getLogoEnabled() {
        return this.logoEnabled;
    }

    public int getLogoGravity() {
        return this.logoGravity;
    }

    public int[] getLogoMargins() {
        return this.logoMargins;
    }

    public boolean getRotateGesturesEnabled() {
        return this.rotateGesturesEnabled;
    }

    public boolean getScrollGesturesEnabled() {
        return this.scrollGesturesEnabled;
    }

    public boolean getTiltGesturesEnabled() {
        return this.tiltGesturesEnabled;
    }

    public boolean getZoomGesturesEnabled() {
        return this.zoomGesturesEnabled;
    }

    public boolean getDoubleTapGesturesEnabled() {
        return this.doubleTapGesturesEnabled;
    }

    public boolean getQuickZoomGesturesEnabled() {
        return this.quickZoomGesturesEnabled;
    }

    public boolean getAttributionEnabled() {
        return this.attributionEnabled;
    }

    public int getAttributionGravity() {
        return this.attributionGravity;
    }

    public int[] getAttributionMargins() {
        return this.attributionMargins;
    }

    public int getAttributionTintColor() {
        return this.attributionTintColor;
    }

    public boolean getDebugActive() {
        return this.debugActive;
    }

    public boolean getTextureMode() {
        return this.textureMode;
    }

    public boolean getTranslucentTextureSurface() {
        return this.translucentTextureSurface;
    }

    public int getForegroundLoadColor() {
        return this.foregroundLoadColor;
    }

    public String getLocalIdeographFontFamily() {
        return this.localIdeographFontFamily;
    }

    public float getPixelRatio() {
        return this.pixelRatio;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.cameraPosition, i);
        parcel.writeByte(this.debugActive ? (byte) 1 : 0);
        parcel.writeByte(this.compassEnabled ? (byte) 1 : 0);
        parcel.writeInt(this.compassGravity);
        parcel.writeIntArray(this.compassMargins);
        parcel.writeByte(this.fadeCompassFacingNorth ? (byte) 1 : 0);
        Drawable drawable = this.compassImage;
        parcel.writeParcelable(drawable != null ? BitmapUtils.getBitmapFromDrawable(drawable) : null, i);
        parcel.writeByte(this.logoEnabled ? (byte) 1 : 0);
        parcel.writeInt(this.logoGravity);
        parcel.writeIntArray(this.logoMargins);
        parcel.writeByte(this.attributionEnabled ? (byte) 1 : 0);
        parcel.writeInt(this.attributionGravity);
        parcel.writeIntArray(this.attributionMargins);
        parcel.writeInt(this.attributionTintColor);
        parcel.writeDouble(this.minZoom);
        parcel.writeDouble(this.maxZoom);
        parcel.writeByte(this.rotateGesturesEnabled ? (byte) 1 : 0);
        parcel.writeByte(this.scrollGesturesEnabled ? (byte) 1 : 0);
        parcel.writeByte(this.tiltGesturesEnabled ? (byte) 1 : 0);
        parcel.writeByte(this.zoomGesturesEnabled ? (byte) 1 : 0);
        parcel.writeByte(this.doubleTapGesturesEnabled ? (byte) 1 : 0);
        parcel.writeByte(this.quickZoomGesturesEnabled ? (byte) 1 : 0);
        parcel.writeString(this.apiBaseUri);
        parcel.writeByte(this.textureMode ? (byte) 1 : 0);
        parcel.writeByte(this.translucentTextureSurface ? (byte) 1 : 0);
        parcel.writeByte(this.prefetchesTiles ? (byte) 1 : 0);
        parcel.writeByte(this.zMediaOverlay ? (byte) 1 : 0);
        parcel.writeString(this.localIdeographFontFamily);
        parcel.writeFloat(this.pixelRatio);
        parcel.writeInt(this.foregroundLoadColor);
        parcel.writeByte(this.crossSourceCollisions ? (byte) 1 : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            MapboxMapOptions mapboxMapOptions = (MapboxMapOptions) obj;
            if (this.debugActive != mapboxMapOptions.debugActive || this.compassEnabled != mapboxMapOptions.compassEnabled || this.fadeCompassFacingNorth != mapboxMapOptions.fadeCompassFacingNorth) {
                return false;
            }
            Drawable drawable = this.compassImage;
            if (drawable == null ? mapboxMapOptions.compassImage != null : !drawable.equals(mapboxMapOptions.compassImage)) {
                return false;
            }
            if (this.compassGravity != mapboxMapOptions.compassGravity || this.logoEnabled != mapboxMapOptions.logoEnabled || this.logoGravity != mapboxMapOptions.logoGravity || this.attributionTintColor != mapboxMapOptions.attributionTintColor || this.attributionEnabled != mapboxMapOptions.attributionEnabled || this.attributionGravity != mapboxMapOptions.attributionGravity || Double.compare(mapboxMapOptions.minZoom, this.minZoom) != 0 || Double.compare(mapboxMapOptions.maxZoom, this.maxZoom) != 0 || this.rotateGesturesEnabled != mapboxMapOptions.rotateGesturesEnabled || this.scrollGesturesEnabled != mapboxMapOptions.scrollGesturesEnabled || this.tiltGesturesEnabled != mapboxMapOptions.tiltGesturesEnabled || this.zoomGesturesEnabled != mapboxMapOptions.zoomGesturesEnabled || this.doubleTapGesturesEnabled != mapboxMapOptions.doubleTapGesturesEnabled || this.quickZoomGesturesEnabled != mapboxMapOptions.quickZoomGesturesEnabled) {
                return false;
            }
            CameraPosition cameraPosition2 = this.cameraPosition;
            if (cameraPosition2 == null ? mapboxMapOptions.cameraPosition != null : !cameraPosition2.equals(mapboxMapOptions.cameraPosition)) {
                return false;
            }
            if (!Arrays.equals(this.compassMargins, mapboxMapOptions.compassMargins) || !Arrays.equals(this.logoMargins, mapboxMapOptions.logoMargins) || !Arrays.equals(this.attributionMargins, mapboxMapOptions.attributionMargins)) {
                return false;
            }
            String str = this.apiBaseUri;
            if (str == null ? mapboxMapOptions.apiBaseUri != null : !str.equals(mapboxMapOptions.apiBaseUri)) {
                return false;
            }
            if (this.prefetchesTiles == mapboxMapOptions.prefetchesTiles && this.zMediaOverlay == mapboxMapOptions.zMediaOverlay && this.localIdeographFontFamily.equals(mapboxMapOptions.localIdeographFontFamily) && this.pixelRatio == mapboxMapOptions.pixelRatio && this.crossSourceCollisions != mapboxMapOptions.crossSourceCollisions) {
            }
        }
        return false;
    }

    public int hashCode() {
        CameraPosition cameraPosition2 = this.cameraPosition;
        int i = 0;
        int hashCode = (((((((((cameraPosition2 != null ? cameraPosition2.hashCode() : 0) * 31) + (this.debugActive ? 1 : 0)) * 31) + (this.compassEnabled ? 1 : 0)) * 31) + (this.fadeCompassFacingNorth ? 1 : 0)) * 31) + this.compassGravity) * 31;
        Drawable drawable = this.compassImage;
        int hashCode2 = ((((((((((((((((hashCode + (drawable != null ? drawable.hashCode() : 0)) * 31) + Arrays.hashCode(this.compassMargins)) * 31) + (this.logoEnabled ? 1 : 0)) * 31) + this.logoGravity) * 31) + Arrays.hashCode(this.logoMargins)) * 31) + this.attributionTintColor) * 31) + (this.attributionEnabled ? 1 : 0)) * 31) + this.attributionGravity) * 31) + Arrays.hashCode(this.attributionMargins);
        long doubleToLongBits = Double.doubleToLongBits(this.minZoom);
        long doubleToLongBits2 = Double.doubleToLongBits(this.maxZoom);
        int i2 = ((((((((((((((((hashCode2 * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31) + (this.rotateGesturesEnabled ? 1 : 0)) * 31) + (this.scrollGesturesEnabled ? 1 : 0)) * 31) + (this.tiltGesturesEnabled ? 1 : 0)) * 31) + (this.zoomGesturesEnabled ? 1 : 0)) * 31) + (this.doubleTapGesturesEnabled ? 1 : 0)) * 31) + (this.quickZoomGesturesEnabled ? 1 : 0)) * 31;
        String str = this.apiBaseUri;
        int hashCode3 = (((((((((i2 + (str != null ? str.hashCode() : 0)) * 31) + (this.textureMode ? 1 : 0)) * 31) + (this.translucentTextureSurface ? 1 : 0)) * 31) + (this.prefetchesTiles ? 1 : 0)) * 31) + (this.zMediaOverlay ? 1 : 0)) * 31;
        String str2 = this.localIdeographFontFamily;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((hashCode3 + i) * 31) + ((int) this.pixelRatio)) * 31) + (this.crossSourceCollisions ? 1 : 0);
    }
}
