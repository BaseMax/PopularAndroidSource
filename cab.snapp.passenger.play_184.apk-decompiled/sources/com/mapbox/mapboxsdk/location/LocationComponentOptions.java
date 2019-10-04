package com.mapbox.mapboxsdk.location;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import com.koushikdutta.async.http.d;
import com.mapbox.mapboxsdk.R;
import java.util.Arrays;

public class LocationComponentOptions implements Parcelable {
    private static final float ACCURACY_ALPHA_DEFAULT = 0.15f;
    public static final Parcelable.Creator<LocationComponentOptions> CREATOR = new Parcelable.Creator<LocationComponentOptions>() {
        public final LocationComponentOptions createFromParcel(Parcel parcel) {
            LocationComponentOptions locationComponentOptions = new LocationComponentOptions(parcel.readFloat(), parcel.readInt(), parcel.readInt(), parcel.readInt() == 0 ? parcel.readString() : null, parcel.readInt(), parcel.readInt() == 0 ? parcel.readString() : null, parcel.readInt(), parcel.readInt() == 0 ? parcel.readString() : null, parcel.readInt(), parcel.readInt() == 0 ? parcel.readString() : null, parcel.readInt(), parcel.readInt() == 0 ? parcel.readString() : null, parcel.readInt(), parcel.readInt() == 0 ? parcel.readString() : null, parcel.readInt() == 0 ? Integer.valueOf(parcel.readInt()) : null, parcel.readInt() == 0 ? Integer.valueOf(parcel.readInt()) : null, parcel.readInt() == 0 ? Integer.valueOf(parcel.readInt()) : null, parcel.readInt() == 0 ? Integer.valueOf(parcel.readInt()) : null, parcel.readInt() == 0 ? Integer.valueOf(parcel.readInt()) : null, parcel.readFloat(), parcel.readInt() == 1, parcel.readLong(), parcel.createIntArray(), parcel.readFloat(), parcel.readFloat(), parcel.readInt() == 1, parcel.readFloat(), parcel.readFloat(), parcel.readString(), parcel.readString(), parcel.readFloat(), parcel.readInt() == 1, parcel.readInt() == 1);
            return locationComponentOptions;
        }

        public final LocationComponentOptions[] newArray(int i) {
            return new LocationComponentOptions[i];
        }
    };
    private static final float MAX_ZOOM_ICON_SCALE_DEFAULT = 1.0f;
    private static final float MIN_ZOOM_ICON_SCALE_DEFAULT = 0.6f;
    private static final int[] PADDING_DEFAULT = {0, 0, 0, 0};
    private static final long STALE_STATE_DELAY_MS = 30000;
    private static final float TRACKING_ANIMATION_DURATION_MULTIPLIER_DEFAULT = 1.1f;
    private float accuracyAlpha;
    private boolean accuracyAnimationEnabled;
    private int accuracyColor;
    private int backgroundDrawable;
    private int backgroundDrawableStale;
    private String backgroundName;
    private String backgroundStaleName;
    private Integer backgroundStaleTintColor;
    private Integer backgroundTintColor;
    private int bearingDrawable;
    private String bearingName;
    private Integer bearingTintColor;
    private boolean compassAnimationEnabled;
    private float elevation;
    private boolean enableStaleState;
    private int foregroundDrawable;
    private int foregroundDrawableStale;
    private String foregroundName;
    private String foregroundStaleName;
    private Integer foregroundStaleTintColor;
    private Integer foregroundTintColor;
    private int gpsDrawable;
    private String gpsName;
    private String layerAbove;
    private String layerBelow;
    private float maxZoomIconScale;
    private float minZoomIconScale;
    private int[] padding;
    private long staleStateTimeout;
    private float trackingAnimationDurationMultiplier;
    private boolean trackingGesturesManagement;
    private float trackingInitialMoveThreshold;
    private float trackingMultiFingerMoveThreshold;

    public static class Builder {
        private Float accuracyAlpha;
        /* access modifiers changed from: private */
        public Boolean accuracyAnimationEnabled;
        private Integer accuracyColor;
        private Integer backgroundDrawable;
        private Integer backgroundDrawableStale;
        private String backgroundName;
        private String backgroundStaleName;
        private Integer backgroundStaleTintColor;
        private Integer backgroundTintColor;
        private Integer bearingDrawable;
        private String bearingName;
        private Integer bearingTintColor;
        /* access modifiers changed from: private */
        public Boolean compassAnimationEnabled;
        private Float elevation;
        private Boolean enableStaleState;
        private Integer foregroundDrawable;
        private Integer foregroundDrawableStale;
        private String foregroundName;
        private String foregroundStaleName;
        private Integer foregroundStaleTintColor;
        private Integer foregroundTintColor;
        private Integer gpsDrawable;
        private String gpsName;
        private String layerAbove;
        private String layerBelow;
        private Float maxZoomIconScale;
        private Float minZoomIconScale;
        private int[] padding;
        private Long staleStateTimeout;
        private Float trackingAnimationDurationMultiplier;
        private Boolean trackingGesturesManagement;
        private Float trackingInitialMoveThreshold;
        private Float trackingMultiFingerMoveThreshold;

        public LocationComponentOptions build() {
            LocationComponentOptions autoBuild = autoBuild();
            if (autoBuild.accuracyAlpha() < 0.0f || autoBuild.accuracyAlpha() > 1.0f) {
                throw new IllegalArgumentException("Accuracy alpha value must be between 0.0 and 1.0.");
            } else if (autoBuild.elevation() < 0.0f) {
                throw new IllegalArgumentException("Invalid shadow size " + autoBuild.elevation() + ". Must be >= 0");
            } else if (autoBuild.layerAbove() == null || autoBuild.layerBelow() == null) {
                return autoBuild;
            } else {
                throw new IllegalArgumentException("You cannot set both layerAbove and layerBelow options.Choose one or the other.");
            }
        }

        Builder() {
        }

        private Builder(LocationComponentOptions locationComponentOptions) {
            this.accuracyAlpha = Float.valueOf(locationComponentOptions.accuracyAlpha());
            this.accuracyColor = Integer.valueOf(locationComponentOptions.accuracyColor());
            this.backgroundDrawableStale = Integer.valueOf(locationComponentOptions.backgroundDrawableStale());
            this.backgroundStaleName = locationComponentOptions.backgroundStaleName();
            this.foregroundDrawableStale = Integer.valueOf(locationComponentOptions.foregroundDrawableStale());
            this.foregroundStaleName = locationComponentOptions.foregroundStaleName();
            this.gpsDrawable = Integer.valueOf(locationComponentOptions.gpsDrawable());
            this.gpsName = locationComponentOptions.gpsName();
            this.foregroundDrawable = Integer.valueOf(locationComponentOptions.foregroundDrawable());
            this.foregroundName = locationComponentOptions.foregroundName();
            this.backgroundDrawable = Integer.valueOf(locationComponentOptions.backgroundDrawable());
            this.backgroundName = locationComponentOptions.backgroundName();
            this.bearingDrawable = Integer.valueOf(locationComponentOptions.bearingDrawable());
            this.bearingName = locationComponentOptions.bearingName();
            this.bearingTintColor = locationComponentOptions.bearingTintColor();
            this.foregroundTintColor = locationComponentOptions.foregroundTintColor();
            this.backgroundTintColor = locationComponentOptions.backgroundTintColor();
            this.foregroundStaleTintColor = locationComponentOptions.foregroundStaleTintColor();
            this.backgroundStaleTintColor = locationComponentOptions.backgroundStaleTintColor();
            this.elevation = Float.valueOf(locationComponentOptions.elevation());
            this.enableStaleState = Boolean.valueOf(locationComponentOptions.enableStaleState());
            this.staleStateTimeout = Long.valueOf(locationComponentOptions.staleStateTimeout());
            this.padding = locationComponentOptions.padding();
            this.maxZoomIconScale = Float.valueOf(locationComponentOptions.maxZoomIconScale());
            this.minZoomIconScale = Float.valueOf(locationComponentOptions.minZoomIconScale());
            this.trackingGesturesManagement = Boolean.valueOf(locationComponentOptions.trackingGesturesManagement());
            this.trackingInitialMoveThreshold = Float.valueOf(locationComponentOptions.trackingInitialMoveThreshold());
            this.trackingMultiFingerMoveThreshold = Float.valueOf(locationComponentOptions.trackingMultiFingerMoveThreshold());
            this.layerAbove = locationComponentOptions.layerAbove();
            this.layerBelow = locationComponentOptions.layerBelow();
            this.trackingAnimationDurationMultiplier = Float.valueOf(locationComponentOptions.trackingAnimationDurationMultiplier());
            this.compassAnimationEnabled = Boolean.valueOf(locationComponentOptions.compassAnimationEnabled());
            this.accuracyAnimationEnabled = Boolean.valueOf(locationComponentOptions.accuracyAnimationEnabled());
        }

        public Builder accuracyAlpha(float f) {
            this.accuracyAlpha = Float.valueOf(f);
            return this;
        }

        public Builder accuracyColor(int i) {
            this.accuracyColor = Integer.valueOf(i);
            return this;
        }

        public Builder backgroundDrawableStale(int i) {
            this.backgroundDrawableStale = Integer.valueOf(i);
            return this;
        }

        public Builder backgroundStaleName(String str) {
            this.backgroundStaleName = str;
            return this;
        }

        public Builder foregroundDrawableStale(int i) {
            this.foregroundDrawableStale = Integer.valueOf(i);
            return this;
        }

        public Builder foregroundStaleName(String str) {
            this.foregroundStaleName = str;
            return this;
        }

        public Builder gpsDrawable(int i) {
            this.gpsDrawable = Integer.valueOf(i);
            return this;
        }

        public Builder gpsName(String str) {
            this.gpsName = str;
            return this;
        }

        public Builder foregroundDrawable(int i) {
            this.foregroundDrawable = Integer.valueOf(i);
            return this;
        }

        public Builder foregroundName(String str) {
            this.foregroundName = str;
            return this;
        }

        public Builder backgroundDrawable(int i) {
            this.backgroundDrawable = Integer.valueOf(i);
            return this;
        }

        public Builder backgroundName(String str) {
            this.backgroundName = str;
            return this;
        }

        public Builder bearingDrawable(int i) {
            this.bearingDrawable = Integer.valueOf(i);
            return this;
        }

        public Builder bearingName(String str) {
            this.bearingName = str;
            return this;
        }

        public Builder bearingTintColor(Integer num) {
            this.bearingTintColor = num;
            return this;
        }

        public Builder foregroundTintColor(Integer num) {
            this.foregroundTintColor = num;
            return this;
        }

        public Builder backgroundTintColor(Integer num) {
            this.backgroundTintColor = num;
            return this;
        }

        public Builder foregroundStaleTintColor(Integer num) {
            this.foregroundStaleTintColor = num;
            return this;
        }

        public Builder backgroundStaleTintColor(Integer num) {
            this.backgroundStaleTintColor = num;
            return this;
        }

        public Builder elevation(float f) {
            this.elevation = Float.valueOf(f);
            return this;
        }

        public Builder enableStaleState(boolean z) {
            this.enableStaleState = Boolean.valueOf(z);
            return this;
        }

        public Builder staleStateTimeout(long j) {
            this.staleStateTimeout = Long.valueOf(j);
            return this;
        }

        public Builder padding(int[] iArr) {
            if (iArr != null) {
                this.padding = iArr;
                return this;
            }
            throw new NullPointerException("Null padding");
        }

        public Builder maxZoomIconScale(float f) {
            this.maxZoomIconScale = Float.valueOf(f);
            return this;
        }

        public Builder minZoomIconScale(float f) {
            this.minZoomIconScale = Float.valueOf(f);
            return this;
        }

        public Builder trackingGesturesManagement(boolean z) {
            this.trackingGesturesManagement = Boolean.valueOf(z);
            return this;
        }

        public Builder trackingInitialMoveThreshold(float f) {
            this.trackingInitialMoveThreshold = Float.valueOf(f);
            return this;
        }

        public Builder trackingMultiFingerMoveThreshold(float f) {
            this.trackingMultiFingerMoveThreshold = Float.valueOf(f);
            return this;
        }

        public Builder layerAbove(String str) {
            this.layerAbove = str;
            return this;
        }

        public Builder layerBelow(String str) {
            this.layerBelow = str;
            return this;
        }

        public Builder trackingAnimationDurationMultiplier(float f) {
            this.trackingAnimationDurationMultiplier = Float.valueOf(f);
            return this;
        }

        public Builder compassAnimationEnabled(Boolean bool) {
            this.compassAnimationEnabled = bool;
            return this;
        }

        public Builder accuracyAnimationEnabled(Boolean bool) {
            this.accuracyAnimationEnabled = bool;
            return this;
        }

        /* access modifiers changed from: package-private */
        public LocationComponentOptions autoBuild() {
            String str = "";
            if (this.accuracyAlpha == null) {
                str = str + " accuracyAlpha";
            }
            if (this.accuracyColor == null) {
                str = str + " accuracyColor";
            }
            if (this.backgroundDrawableStale == null) {
                str = str + " backgroundDrawableStale";
            }
            if (this.foregroundDrawableStale == null) {
                str = str + " foregroundDrawableStale";
            }
            if (this.gpsDrawable == null) {
                str = str + " gpsDrawable";
            }
            if (this.foregroundDrawable == null) {
                str = str + " foregroundDrawable";
            }
            if (this.backgroundDrawable == null) {
                str = str + " backgroundDrawable";
            }
            if (this.bearingDrawable == null) {
                str = str + " bearingDrawable";
            }
            if (this.elevation == null) {
                str = str + " elevation";
            }
            if (this.enableStaleState == null) {
                str = str + " enableStaleState";
            }
            if (this.staleStateTimeout == null) {
                str = str + " staleStateTimeout";
            }
            if (this.padding == null) {
                str = str + " padding";
            }
            if (this.maxZoomIconScale == null) {
                str = str + " maxZoomIconScale";
            }
            if (this.minZoomIconScale == null) {
                str = str + " minZoomIconScale";
            }
            if (this.trackingGesturesManagement == null) {
                str = str + " trackingGesturesManagement";
            }
            if (this.trackingInitialMoveThreshold == null) {
                str = str + " trackingInitialMoveThreshold";
            }
            if (this.trackingMultiFingerMoveThreshold == null) {
                str = str + " trackingMultiFingerMoveThreshold";
            }
            if (this.trackingAnimationDurationMultiplier == null) {
                str = str + " trackingAnimationDurationMultiplier";
            }
            if (str.isEmpty()) {
                LocationComponentOptions locationComponentOptions = new LocationComponentOptions(this.accuracyAlpha.floatValue(), this.accuracyColor.intValue(), this.backgroundDrawableStale.intValue(), this.backgroundStaleName, this.foregroundDrawableStale.intValue(), this.foregroundStaleName, this.gpsDrawable.intValue(), this.gpsName, this.foregroundDrawable.intValue(), this.foregroundName, this.backgroundDrawable.intValue(), this.backgroundName, this.bearingDrawable.intValue(), this.bearingName, this.bearingTintColor, this.foregroundTintColor, this.backgroundTintColor, this.foregroundStaleTintColor, this.backgroundStaleTintColor, this.elevation.floatValue(), this.enableStaleState.booleanValue(), this.staleStateTimeout.longValue(), this.padding, this.maxZoomIconScale.floatValue(), this.minZoomIconScale.floatValue(), this.trackingGesturesManagement.booleanValue(), this.trackingInitialMoveThreshold.floatValue(), this.trackingMultiFingerMoveThreshold.floatValue(), this.layerAbove, this.layerBelow, this.trackingAnimationDurationMultiplier.floatValue(), this.compassAnimationEnabled.booleanValue(), this.accuracyAnimationEnabled.booleanValue());
                return locationComponentOptions;
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str)));
        }
    }

    public int describeContents() {
        return 0;
    }

    public LocationComponentOptions(float f, int i, int i2, String str, int i3, String str2, int i4, String str3, int i5, String str4, int i6, String str5, int i7, String str6, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, float f2, boolean z, long j, int[] iArr, float f3, float f4, boolean z2, float f5, float f6, String str7, String str8, float f7, boolean z3, boolean z4) {
        int[] iArr2 = iArr;
        this.accuracyAlpha = f;
        this.accuracyColor = i;
        this.backgroundDrawableStale = i2;
        this.backgroundStaleName = str;
        this.foregroundDrawableStale = i3;
        this.foregroundStaleName = str2;
        this.gpsDrawable = i4;
        this.gpsName = str3;
        this.foregroundDrawable = i5;
        this.foregroundName = str4;
        this.backgroundDrawable = i6;
        this.backgroundName = str5;
        this.bearingDrawable = i7;
        this.bearingName = str6;
        this.bearingTintColor = num;
        this.foregroundTintColor = num2;
        this.backgroundTintColor = num3;
        this.foregroundStaleTintColor = num4;
        this.backgroundStaleTintColor = num5;
        this.elevation = f2;
        this.enableStaleState = z;
        this.staleStateTimeout = j;
        if (iArr2 != null) {
            this.padding = iArr2;
            this.maxZoomIconScale = f3;
            this.minZoomIconScale = f4;
            this.trackingGesturesManagement = z2;
            this.trackingInitialMoveThreshold = f5;
            this.trackingMultiFingerMoveThreshold = f6;
            this.layerAbove = str7;
            this.layerBelow = str8;
            this.trackingAnimationDurationMultiplier = f7;
            this.compassAnimationEnabled = z3;
            this.accuracyAnimationEnabled = z4;
            return;
        }
        throw new NullPointerException("Null padding");
    }

    public static LocationComponentOptions createFromAttributes(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, R.styleable.mapbox_LocationComponent);
        Builder padding2 = new Builder().enableStaleState(true).staleStateTimeout(30000).maxZoomIconScale(1.0f).minZoomIconScale(MIN_ZOOM_ICON_SCALE_DEFAULT).padding(PADDING_DEFAULT);
        padding2.foregroundDrawable(obtainStyledAttributes.getResourceId(R.styleable.mapbox_LocationComponent_mapbox_foregroundDrawable, -1));
        if (obtainStyledAttributes.hasValue(R.styleable.mapbox_LocationComponent_mapbox_foregroundTintColor)) {
            padding2.foregroundTintColor(Integer.valueOf(obtainStyledAttributes.getColor(R.styleable.mapbox_LocationComponent_mapbox_foregroundTintColor, -1)));
        }
        padding2.backgroundDrawable(obtainStyledAttributes.getResourceId(R.styleable.mapbox_LocationComponent_mapbox_backgroundDrawable, -1));
        if (obtainStyledAttributes.hasValue(R.styleable.mapbox_LocationComponent_mapbox_backgroundTintColor)) {
            padding2.backgroundTintColor(Integer.valueOf(obtainStyledAttributes.getColor(R.styleable.mapbox_LocationComponent_mapbox_backgroundTintColor, -1)));
        }
        padding2.foregroundDrawableStale(obtainStyledAttributes.getResourceId(R.styleable.mapbox_LocationComponent_mapbox_foregroundDrawableStale, -1));
        if (obtainStyledAttributes.hasValue(R.styleable.mapbox_LocationComponent_mapbox_foregroundStaleTintColor)) {
            padding2.foregroundStaleTintColor(Integer.valueOf(obtainStyledAttributes.getColor(R.styleable.mapbox_LocationComponent_mapbox_foregroundStaleTintColor, -1)));
        }
        padding2.backgroundDrawableStale(obtainStyledAttributes.getResourceId(R.styleable.mapbox_LocationComponent_mapbox_backgroundDrawableStale, -1));
        if (obtainStyledAttributes.hasValue(R.styleable.mapbox_LocationComponent_mapbox_backgroundStaleTintColor)) {
            padding2.backgroundStaleTintColor(Integer.valueOf(obtainStyledAttributes.getColor(R.styleable.mapbox_LocationComponent_mapbox_backgroundStaleTintColor, -1)));
        }
        padding2.bearingDrawable(obtainStyledAttributes.getResourceId(R.styleable.mapbox_LocationComponent_mapbox_bearingDrawable, -1));
        if (obtainStyledAttributes.hasValue(R.styleable.mapbox_LocationComponent_mapbox_bearingTintColor)) {
            padding2.bearingTintColor(Integer.valueOf(obtainStyledAttributes.getColor(R.styleable.mapbox_LocationComponent_mapbox_bearingTintColor, -1)));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.mapbox_LocationComponent_mapbox_enableStaleState)) {
            padding2.enableStaleState(obtainStyledAttributes.getBoolean(R.styleable.mapbox_LocationComponent_mapbox_enableStaleState, true));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.mapbox_LocationComponent_mapbox_staleStateTimeout)) {
            padding2.staleStateTimeout((long) obtainStyledAttributes.getInteger(R.styleable.mapbox_LocationComponent_mapbox_staleStateTimeout, d.DEFAULT_TIMEOUT));
        }
        padding2.gpsDrawable(obtainStyledAttributes.getResourceId(R.styleable.mapbox_LocationComponent_mapbox_gpsDrawable, -1));
        float dimension = obtainStyledAttributes.getDimension(R.styleable.mapbox_LocationComponent_mapbox_elevation, 0.0f);
        padding2.accuracyColor(obtainStyledAttributes.getColor(R.styleable.mapbox_LocationComponent_mapbox_accuracyColor, -1));
        padding2.accuracyAlpha(obtainStyledAttributes.getFloat(R.styleable.mapbox_LocationComponent_mapbox_accuracyAlpha, 0.15f));
        padding2.elevation(dimension);
        padding2.trackingGesturesManagement(obtainStyledAttributes.getBoolean(R.styleable.mapbox_LocationComponent_mapbox_trackingGesturesManagement, false));
        padding2.trackingInitialMoveThreshold(obtainStyledAttributes.getDimension(R.styleable.mapbox_LocationComponent_mapbox_trackingInitialMoveThreshold, context.getResources().getDimension(R.dimen.mapbox_locationComponentTrackingInitialMoveThreshold)));
        padding2.trackingMultiFingerMoveThreshold(obtainStyledAttributes.getDimension(R.styleable.mapbox_LocationComponent_mapbox_trackingMultiFingerMoveThreshold, context.getResources().getDimension(R.dimen.mapbox_locationComponentTrackingMultiFingerMoveThreshold)));
        padding2.padding(new int[]{obtainStyledAttributes.getInt(R.styleable.mapbox_LocationComponent_mapbox_iconPaddingLeft, 0), obtainStyledAttributes.getInt(R.styleable.mapbox_LocationComponent_mapbox_iconPaddingTop, 0), obtainStyledAttributes.getInt(R.styleable.mapbox_LocationComponent_mapbox_iconPaddingRight, 0), obtainStyledAttributes.getInt(R.styleable.mapbox_LocationComponent_mapbox_iconPaddingBottom, 0)});
        padding2.layerAbove(obtainStyledAttributes.getString(R.styleable.mapbox_LocationComponent_mapbox_layer_above));
        padding2.layerBelow(obtainStyledAttributes.getString(R.styleable.mapbox_LocationComponent_mapbox_layer_below));
        float f = obtainStyledAttributes.getFloat(R.styleable.mapbox_LocationComponent_mapbox_minZoomIconScale, MIN_ZOOM_ICON_SCALE_DEFAULT);
        float f2 = obtainStyledAttributes.getFloat(R.styleable.mapbox_LocationComponent_mapbox_maxZoomIconScale, 1.0f);
        padding2.minZoomIconScale(f);
        padding2.maxZoomIconScale(f2);
        padding2.trackingAnimationDurationMultiplier(obtainStyledAttributes.getFloat(R.styleable.mapbox_LocationComponent_mapbox_trackingAnimationDurationMultiplier, TRACKING_ANIMATION_DURATION_MULTIPLIER_DEFAULT));
        Boolean unused = padding2.compassAnimationEnabled = Boolean.valueOf(obtainStyledAttributes.getBoolean(R.styleable.mapbox_LocationComponent_mapbox_compassAnimationEnabled, true));
        Boolean unused2 = padding2.accuracyAnimationEnabled = Boolean.valueOf(obtainStyledAttributes.getBoolean(R.styleable.mapbox_LocationComponent_mapbox_accuracyAnimationEnabled, true));
        obtainStyledAttributes.recycle();
        return padding2.build();
    }

    public Builder toBuilder() {
        return new Builder();
    }

    public static Builder builder(Context context) {
        return createFromAttributes(context, R.style.mapbox_LocationComponent).toBuilder();
    }

    public float accuracyAlpha() {
        return this.accuracyAlpha;
    }

    public int accuracyColor() {
        return this.accuracyColor;
    }

    public int backgroundDrawableStale() {
        return this.backgroundDrawableStale;
    }

    public String backgroundStaleName() {
        return this.backgroundStaleName;
    }

    public int foregroundDrawableStale() {
        return this.foregroundDrawableStale;
    }

    public String foregroundStaleName() {
        return this.foregroundStaleName;
    }

    public int gpsDrawable() {
        return this.gpsDrawable;
    }

    public String gpsName() {
        return this.gpsName;
    }

    public int foregroundDrawable() {
        return this.foregroundDrawable;
    }

    public String foregroundName() {
        return this.foregroundName;
    }

    public int backgroundDrawable() {
        return this.backgroundDrawable;
    }

    public String backgroundName() {
        return this.backgroundName;
    }

    public int bearingDrawable() {
        return this.bearingDrawable;
    }

    public String bearingName() {
        return this.bearingName;
    }

    public Integer bearingTintColor() {
        return this.bearingTintColor;
    }

    public Integer foregroundTintColor() {
        return this.foregroundTintColor;
    }

    public Integer backgroundTintColor() {
        return this.backgroundTintColor;
    }

    public Integer foregroundStaleTintColor() {
        return this.foregroundStaleTintColor;
    }

    public Integer backgroundStaleTintColor() {
        return this.backgroundStaleTintColor;
    }

    public float elevation() {
        return this.elevation;
    }

    public boolean enableStaleState() {
        return this.enableStaleState;
    }

    public long staleStateTimeout() {
        return this.staleStateTimeout;
    }

    public int[] padding() {
        return this.padding;
    }

    public float maxZoomIconScale() {
        return this.maxZoomIconScale;
    }

    public float minZoomIconScale() {
        return this.minZoomIconScale;
    }

    public boolean trackingGesturesManagement() {
        return this.trackingGesturesManagement;
    }

    public float trackingInitialMoveThreshold() {
        return this.trackingInitialMoveThreshold;
    }

    public float trackingMultiFingerMoveThreshold() {
        return this.trackingMultiFingerMoveThreshold;
    }

    public String layerAbove() {
        return this.layerAbove;
    }

    public String layerBelow() {
        return this.layerBelow;
    }

    public float trackingAnimationDurationMultiplier() {
        return this.trackingAnimationDurationMultiplier;
    }

    public boolean compassAnimationEnabled() {
        return this.compassAnimationEnabled;
    }

    public boolean accuracyAnimationEnabled() {
        return this.accuracyAnimationEnabled;
    }

    public String toString() {
        return "LocationComponentOptions{accuracyAlpha=" + this.accuracyAlpha + ", accuracyColor=" + this.accuracyColor + ", backgroundDrawableStale=" + this.backgroundDrawableStale + ", backgroundStaleName=" + this.backgroundStaleName + ", foregroundDrawableStale=" + this.foregroundDrawableStale + ", foregroundStaleName=" + this.foregroundStaleName + ", gpsDrawable=" + this.gpsDrawable + ", gpsName=" + this.gpsName + ", foregroundDrawable=" + this.foregroundDrawable + ", foregroundName=" + this.foregroundName + ", backgroundDrawable=" + this.backgroundDrawable + ", backgroundName=" + this.backgroundName + ", bearingDrawable=" + this.bearingDrawable + ", bearingName=" + this.bearingName + ", bearingTintColor=" + this.bearingTintColor + ", foregroundTintColor=" + this.foregroundTintColor + ", backgroundTintColor=" + this.backgroundTintColor + ", foregroundStaleTintColor=" + this.foregroundStaleTintColor + ", backgroundStaleTintColor=" + this.backgroundStaleTintColor + ", elevation=" + this.elevation + ", enableStaleState=" + this.enableStaleState + ", staleStateTimeout=" + this.staleStateTimeout + ", padding=" + Arrays.toString(this.padding) + ", maxZoomIconScale=" + this.maxZoomIconScale + ", minZoomIconScale=" + this.minZoomIconScale + ", trackingGesturesManagement=" + this.trackingGesturesManagement + ", trackingInitialMoveThreshold=" + this.trackingInitialMoveThreshold + ", trackingMultiFingerMoveThreshold=" + this.trackingMultiFingerMoveThreshold + ", layerAbove=" + this.layerAbove + "layerBelow=" + this.layerBelow + "trackingAnimationDurationMultiplier=" + this.trackingAnimationDurationMultiplier + "}";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            LocationComponentOptions locationComponentOptions = (LocationComponentOptions) obj;
            if (Float.compare(locationComponentOptions.accuracyAlpha, this.accuracyAlpha) != 0 || this.accuracyColor != locationComponentOptions.accuracyColor || this.backgroundDrawableStale != locationComponentOptions.backgroundDrawableStale || this.foregroundDrawableStale != locationComponentOptions.foregroundDrawableStale || this.gpsDrawable != locationComponentOptions.gpsDrawable || this.foregroundDrawable != locationComponentOptions.foregroundDrawable || this.backgroundDrawable != locationComponentOptions.backgroundDrawable || this.bearingDrawable != locationComponentOptions.bearingDrawable || Float.compare(locationComponentOptions.elevation, this.elevation) != 0 || this.enableStaleState != locationComponentOptions.enableStaleState || this.staleStateTimeout != locationComponentOptions.staleStateTimeout || Float.compare(locationComponentOptions.maxZoomIconScale, this.maxZoomIconScale) != 0 || Float.compare(locationComponentOptions.minZoomIconScale, this.minZoomIconScale) != 0 || this.trackingGesturesManagement != locationComponentOptions.trackingGesturesManagement || Float.compare(locationComponentOptions.trackingInitialMoveThreshold, this.trackingInitialMoveThreshold) != 0 || Float.compare(locationComponentOptions.trackingMultiFingerMoveThreshold, this.trackingMultiFingerMoveThreshold) != 0 || Float.compare(locationComponentOptions.trackingAnimationDurationMultiplier, this.trackingAnimationDurationMultiplier) != 0 || this.compassAnimationEnabled != locationComponentOptions.compassAnimationEnabled || this.accuracyAnimationEnabled != locationComponentOptions.accuracyAnimationEnabled) {
                return false;
            }
            String str = this.backgroundStaleName;
            if (str == null ? locationComponentOptions.backgroundStaleName != null : !str.equals(locationComponentOptions.backgroundStaleName)) {
                return false;
            }
            String str2 = this.foregroundStaleName;
            if (str2 == null ? locationComponentOptions.foregroundStaleName != null : !str2.equals(locationComponentOptions.foregroundStaleName)) {
                return false;
            }
            String str3 = this.gpsName;
            if (str3 == null ? locationComponentOptions.gpsName != null : !str3.equals(locationComponentOptions.gpsName)) {
                return false;
            }
            String str4 = this.foregroundName;
            if (str4 == null ? locationComponentOptions.foregroundName != null : !str4.equals(locationComponentOptions.foregroundName)) {
                return false;
            }
            String str5 = this.backgroundName;
            if (str5 == null ? locationComponentOptions.backgroundName != null : !str5.equals(locationComponentOptions.backgroundName)) {
                return false;
            }
            String str6 = this.bearingName;
            if (str6 == null ? locationComponentOptions.bearingName != null : !str6.equals(locationComponentOptions.bearingName)) {
                return false;
            }
            Integer num = this.bearingTintColor;
            if (num == null ? locationComponentOptions.bearingTintColor != null : !num.equals(locationComponentOptions.bearingTintColor)) {
                return false;
            }
            Integer num2 = this.foregroundTintColor;
            if (num2 == null ? locationComponentOptions.foregroundTintColor != null : !num2.equals(locationComponentOptions.foregroundTintColor)) {
                return false;
            }
            Integer num3 = this.backgroundTintColor;
            if (num3 == null ? locationComponentOptions.backgroundTintColor != null : !num3.equals(locationComponentOptions.backgroundTintColor)) {
                return false;
            }
            Integer num4 = this.foregroundStaleTintColor;
            if (num4 == null ? locationComponentOptions.foregroundStaleTintColor != null : !num4.equals(locationComponentOptions.foregroundStaleTintColor)) {
                return false;
            }
            Integer num5 = this.backgroundStaleTintColor;
            if (num5 == null ? locationComponentOptions.backgroundStaleTintColor != null : !num5.equals(locationComponentOptions.backgroundStaleTintColor)) {
                return false;
            }
            if (!Arrays.equals(this.padding, locationComponentOptions.padding)) {
                return false;
            }
            String str7 = this.layerAbove;
            if (str7 == null ? locationComponentOptions.layerAbove != null : !str7.equals(locationComponentOptions.layerAbove)) {
                return false;
            }
            String str8 = this.layerBelow;
            String str9 = locationComponentOptions.layerBelow;
            if (str8 != null) {
                return str8.equals(str9);
            }
            if (str9 == null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        float f = this.accuracyAlpha;
        int i = 0;
        int floatToIntBits = (((((f != 0.0f ? Float.floatToIntBits(f) : 0) * 31) + this.accuracyColor) * 31) + this.backgroundDrawableStale) * 31;
        String str = this.backgroundStaleName;
        int hashCode = (((floatToIntBits + (str != null ? str.hashCode() : 0)) * 31) + this.foregroundDrawableStale) * 31;
        String str2 = this.foregroundStaleName;
        int hashCode2 = (((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.gpsDrawable) * 31;
        String str3 = this.gpsName;
        int hashCode3 = (((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.foregroundDrawable) * 31;
        String str4 = this.foregroundName;
        int hashCode4 = (((hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31) + this.backgroundDrawable) * 31;
        String str5 = this.backgroundName;
        int hashCode5 = (((hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31) + this.bearingDrawable) * 31;
        String str6 = this.bearingName;
        int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        Integer num = this.bearingTintColor;
        int hashCode7 = (hashCode6 + (num != null ? num.hashCode() : 0)) * 31;
        Integer num2 = this.foregroundTintColor;
        int hashCode8 = (hashCode7 + (num2 != null ? num2.hashCode() : 0)) * 31;
        Integer num3 = this.backgroundTintColor;
        int hashCode9 = (hashCode8 + (num3 != null ? num3.hashCode() : 0)) * 31;
        Integer num4 = this.foregroundStaleTintColor;
        int hashCode10 = (hashCode9 + (num4 != null ? num4.hashCode() : 0)) * 31;
        Integer num5 = this.backgroundStaleTintColor;
        int hashCode11 = (hashCode10 + (num5 != null ? num5.hashCode() : 0)) * 31;
        float f2 = this.elevation;
        int floatToIntBits2 = f2 != 0.0f ? Float.floatToIntBits(f2) : 0;
        long j = this.staleStateTimeout;
        int hashCode12 = (((((((hashCode11 + floatToIntBits2) * 31) + (this.enableStaleState ? 1 : 0)) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + Arrays.hashCode(this.padding)) * 31;
        float f3 = this.maxZoomIconScale;
        int floatToIntBits3 = (hashCode12 + (f3 != 0.0f ? Float.floatToIntBits(f3) : 0)) * 31;
        float f4 = this.minZoomIconScale;
        int floatToIntBits4 = (((floatToIntBits3 + (f4 != 0.0f ? Float.floatToIntBits(f4) : 0)) * 31) + (this.trackingGesturesManagement ? 1 : 0)) * 31;
        float f5 = this.trackingInitialMoveThreshold;
        int floatToIntBits5 = (floatToIntBits4 + (f5 != 0.0f ? Float.floatToIntBits(f5) : 0)) * 31;
        float f6 = this.trackingMultiFingerMoveThreshold;
        int floatToIntBits6 = (floatToIntBits5 + (f6 != 0.0f ? Float.floatToIntBits(f6) : 0)) * 31;
        String str7 = this.layerAbove;
        int hashCode13 = (floatToIntBits6 + (str7 != null ? str7.hashCode() : 0)) * 31;
        String str8 = this.layerBelow;
        int hashCode14 = (hashCode13 + (str8 != null ? str8.hashCode() : 0)) * 31;
        float f7 = this.trackingAnimationDurationMultiplier;
        if (f7 != 0.0f) {
            i = Float.floatToIntBits(f7);
        }
        return ((((hashCode14 + i) * 31) + (this.compassAnimationEnabled ? 1 : 0)) * 31) + (this.accuracyAnimationEnabled ? 1 : 0);
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(accuracyAlpha());
        parcel.writeInt(accuracyColor());
        parcel.writeInt(backgroundDrawableStale());
        if (backgroundStaleName() == null) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
            parcel.writeString(backgroundStaleName());
        }
        parcel.writeInt(foregroundDrawableStale());
        if (foregroundStaleName() == null) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
            parcel.writeString(foregroundStaleName());
        }
        parcel.writeInt(gpsDrawable());
        if (gpsName() == null) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
            parcel.writeString(gpsName());
        }
        parcel.writeInt(foregroundDrawable());
        if (foregroundName() == null) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
            parcel.writeString(foregroundName());
        }
        parcel.writeInt(backgroundDrawable());
        if (backgroundName() == null) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
            parcel.writeString(backgroundName());
        }
        parcel.writeInt(bearingDrawable());
        if (bearingName() == null) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
            parcel.writeString(bearingName());
        }
        if (bearingTintColor() == null) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
            parcel.writeInt(bearingTintColor().intValue());
        }
        if (foregroundTintColor() == null) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
            parcel.writeInt(foregroundTintColor().intValue());
        }
        if (backgroundTintColor() == null) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
            parcel.writeInt(backgroundTintColor().intValue());
        }
        if (foregroundStaleTintColor() == null) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
            parcel.writeInt(foregroundStaleTintColor().intValue());
        }
        if (backgroundStaleTintColor() == null) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
            parcel.writeInt(backgroundStaleTintColor().intValue());
        }
        parcel.writeFloat(elevation());
        parcel.writeInt(enableStaleState() ? 1 : 0);
        parcel.writeLong(staleStateTimeout());
        parcel.writeIntArray(padding());
        parcel.writeFloat(maxZoomIconScale());
        parcel.writeFloat(minZoomIconScale());
        parcel.writeInt(trackingGesturesManagement() ? 1 : 0);
        parcel.writeFloat(trackingInitialMoveThreshold());
        parcel.writeFloat(trackingMultiFingerMoveThreshold());
        parcel.writeString(layerAbove());
        parcel.writeString(layerBelow());
        parcel.writeFloat(this.trackingAnimationDurationMultiplier);
        parcel.writeInt(compassAnimationEnabled() ? 1 : 0);
        parcel.writeInt(accuracyAnimationEnabled() ? 1 : 0);
    }
}
