package com.mapbox.mapboxsdk.snapshotter;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.os.Handler;
import android.text.Html;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import com.mapbox.mapboxsdk.Mapbox;
import com.mapbox.mapboxsdk.R;
import com.mapbox.mapboxsdk.attribution.AttributionLayout;
import com.mapbox.mapboxsdk.attribution.AttributionMeasure;
import com.mapbox.mapboxsdk.attribution.AttributionParser;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.constants.MapboxConstants;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.maps.Style;
import com.mapbox.mapboxsdk.maps.TelemetryDefinition;
import com.mapbox.mapboxsdk.storage.FileSource;
import com.mapbox.mapboxsdk.utils.FontUtils;
import com.mapbox.mapboxsdk.utils.ThreadUtils;

public class MapSnapshotter {
    private static final int LOGO_MARGIN_DP = 4;
    private static final String TAG = "Mbgl-MapSnapshotter";
    /* access modifiers changed from: private */
    public SnapshotReadyCallback callback;
    private final Context context;
    private ErrorHandler errorHandler;
    private long nativePtr = 0;

    public interface ErrorHandler {
        void onError(String str);
    }

    class Logo {
        private Bitmap large;
        private float scale;
        private Bitmap small;

        public Logo(Bitmap bitmap, Bitmap bitmap2, float f) {
            this.large = bitmap;
            this.small = bitmap2;
            this.scale = f;
        }

        public Bitmap getLarge() {
            return this.large;
        }

        public Bitmap getSmall() {
            return this.small;
        }

        public float getScale() {
            return this.scale;
        }
    }

    public static class Options {
        private String apiBaseUrl;
        /* access modifiers changed from: private */
        public CameraPosition cameraPosition;
        /* access modifiers changed from: private */
        public int height;
        /* access modifiers changed from: private */
        public String localIdeographFontFamily = MapboxConstants.DEFAULT_FONT;
        /* access modifiers changed from: private */
        public float pixelRatio = 1.0f;
        /* access modifiers changed from: private */
        public LatLngBounds region;
        /* access modifiers changed from: private */
        public boolean showLogo = true;
        /* access modifiers changed from: private */
        public String styleJson;
        /* access modifiers changed from: private */
        public String styleUri = Style.MAPBOX_STREETS;
        /* access modifiers changed from: private */
        public int width;

        public Options(int i, int i2) {
            if (i == 0 || i2 == 0) {
                throw new IllegalArgumentException("Unable to create a snapshot with width or height set to 0");
            }
            this.width = i;
            this.height = i2;
        }

        public Options withStyle(String str) {
            this.styleUri = str;
            return this;
        }

        public Options withStyleJson(String str) {
            this.styleJson = str;
            return this;
        }

        public Options withRegion(LatLngBounds latLngBounds) {
            this.region = latLngBounds;
            return this;
        }

        public Options withPixelRatio(float f) {
            this.pixelRatio = f;
            return this;
        }

        public Options withCameraPosition(CameraPosition cameraPosition2) {
            this.cameraPosition = cameraPosition2;
            return this;
        }

        public Options withLogo(boolean z) {
            this.showLogo = z;
            return this;
        }

        public Options withLocalIdeographFontFamily(String str) {
            this.localIdeographFontFamily = FontUtils.extractValidFont(str);
            return this;
        }

        public Options withLocalIdeographFontFamily(String... strArr) {
            this.localIdeographFontFamily = FontUtils.extractValidFont(strArr);
            return this;
        }

        @Deprecated
        public Options withApiBaseUrl(String str) {
            this.apiBaseUrl = str;
            return this;
        }

        public Options withApiBaseUri(String str) {
            this.apiBaseUrl = this.apiBaseUrl;
            return this;
        }

        public int getWidth() {
            return this.width;
        }

        public int getHeight() {
            return this.height;
        }

        public float getPixelRatio() {
            return this.pixelRatio;
        }

        public LatLngBounds getRegion() {
            return this.region;
        }

        @Deprecated
        public String getStyleUrl() {
            return this.styleUri;
        }

        public String getStyleUri() {
            return this.styleUri;
        }

        public CameraPosition getCameraPosition() {
            return this.cameraPosition;
        }

        public String getLocalIdeographFontFamily() {
            return this.localIdeographFontFamily;
        }

        @Deprecated
        public String getApiBaseUrl() {
            return this.apiBaseUrl;
        }

        public String getApiBaseUri() {
            return this.apiBaseUrl;
        }
    }

    public interface SnapshotReadyCallback {
        void onSnapshotReady(MapSnapshot mapSnapshot);
    }

    /* access modifiers changed from: protected */
    public native void finalize() throws Throwable;

    /* access modifiers changed from: protected */
    public native void nativeCancel();

    /* access modifiers changed from: protected */
    public native void nativeInitialize(MapSnapshotter mapSnapshotter, FileSource fileSource, float f, int i, int i2, String str, String str2, LatLngBounds latLngBounds, CameraPosition cameraPosition, boolean z, String str3, String str4);

    /* access modifiers changed from: protected */
    public native void nativeStart();

    public native void setCameraPosition(CameraPosition cameraPosition);

    public native void setRegion(LatLngBounds latLngBounds);

    public native void setSize(int i, int i2);

    public native void setStyleJson(String str);

    public native void setStyleUrl(String str);

    public MapSnapshotter(Context context2, Options options) {
        checkThread();
        this.context = context2.getApplicationContext();
        TelemetryDefinition telemetry = Mapbox.getTelemetry();
        if (telemetry != null) {
            telemetry.onAppUserTurnstileEvent();
        }
        FileSource instance = FileSource.getInstance(context2);
        String apiBaseUrl = options.getApiBaseUrl();
        if (!TextUtils.isEmpty(apiBaseUrl)) {
            instance.setApiBaseUrl(apiBaseUrl);
        }
        nativeInitialize(this, instance, options.pixelRatio, options.width, options.height, options.styleUri, options.styleJson, options.region, options.cameraPosition, options.showLogo, FileSource.getInternalCachePath(context2), options.localIdeographFontFamily);
    }

    public void start(SnapshotReadyCallback snapshotReadyCallback) {
        start(snapshotReadyCallback, null);
    }

    public void start(SnapshotReadyCallback snapshotReadyCallback, ErrorHandler errorHandler2) {
        if (this.callback == null) {
            checkThread();
            this.callback = snapshotReadyCallback;
            this.errorHandler = errorHandler2;
            nativeStart();
            return;
        }
        throw new IllegalStateException("Snapshotter was already started");
    }

    public void cancel() {
        checkThread();
        reset();
        nativeCancel();
    }

    /* access modifiers changed from: protected */
    public void addOverlay(MapSnapshot mapSnapshot) {
        Bitmap bitmap = mapSnapshot.getBitmap();
        drawOverlay(mapSnapshot, bitmap, new Canvas(bitmap), ((int) this.context.getResources().getDisplayMetrics().density) * 4);
    }

    private void drawOverlay(MapSnapshot mapSnapshot, Bitmap bitmap, Canvas canvas, int i) {
        AttributionMeasure attributionMeasure = getAttributionMeasure(mapSnapshot, bitmap, i);
        AttributionLayout measure = attributionMeasure.measure();
        drawLogo(mapSnapshot, canvas, i, measure);
        drawAttribution(mapSnapshot, canvas, attributionMeasure, measure);
    }

    private AttributionMeasure getAttributionMeasure(MapSnapshot mapSnapshot, Bitmap bitmap, int i) {
        Logo createScaledLogo = createScaledLogo(bitmap);
        TextView createTextView = createTextView(mapSnapshot, false, createScaledLogo.getScale());
        return new AttributionMeasure.Builder().setSnapshot(bitmap).setLogo(createScaledLogo.getLarge()).setLogoSmall(createScaledLogo.getSmall()).setTextView(createTextView).setTextViewShort(createTextView(mapSnapshot, true, createScaledLogo.getScale())).setMarginPadding((float) i).build();
    }

    private void drawLogo(MapSnapshot mapSnapshot, Canvas canvas, int i, AttributionLayout attributionLayout) {
        if (mapSnapshot.isShowLogo()) {
            drawLogo(mapSnapshot.getBitmap(), canvas, i, attributionLayout);
        }
    }

    private void drawLogo(Bitmap bitmap, Canvas canvas, int i, AttributionLayout attributionLayout) {
        Bitmap logo = attributionLayout.getLogo();
        if (logo != null) {
            canvas.drawBitmap(logo, (float) i, (float) ((bitmap.getHeight() - logo.getHeight()) - i), null);
        }
    }

    private void drawAttribution(MapSnapshot mapSnapshot, Canvas canvas, AttributionMeasure attributionMeasure, AttributionLayout attributionLayout) {
        PointF anchorPoint = attributionLayout.getAnchorPoint();
        if (anchorPoint != null) {
            drawAttribution(canvas, attributionMeasure, anchorPoint);
            return;
        }
        Bitmap bitmap = mapSnapshot.getBitmap();
        Logger.e(TAG, String.format("Could not generate attribution for snapshot size: %s x %s. You are required to provide your own attribution for the used sources: %s", new Object[]{Integer.valueOf(bitmap.getWidth()), Integer.valueOf(bitmap.getHeight()), mapSnapshot.getAttributions()}));
    }

    private void drawAttribution(Canvas canvas, AttributionMeasure attributionMeasure, PointF pointF) {
        canvas.save();
        canvas.translate(pointF.x, pointF.y);
        attributionMeasure.getTextView().draw(canvas);
        canvas.restore();
    }

    private TextView createTextView(MapSnapshot mapSnapshot, boolean z, float f) {
        int color = ResourcesCompat.getColor(this.context.getResources(), R.color.mapbox_gray_dark, this.context.getTheme());
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        TextView textView = new TextView(this.context);
        textView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        textView.setSingleLine(true);
        textView.setTextSize(f * 10.0f);
        textView.setTextColor(color);
        textView.setBackgroundResource(R.drawable.mapbox_rounded_corner);
        textView.setText(Html.fromHtml(createAttributionString(mapSnapshot, z)));
        textView.measure(makeMeasureSpec, makeMeasureSpec2);
        textView.layout(0, 0, textView.getMeasuredWidth(), textView.getMeasuredHeight());
        return textView;
    }

    private String createAttributionString(MapSnapshot mapSnapshot, boolean z) {
        return new AttributionParser.Options(this.context).withAttributionData(mapSnapshot.getAttributions()).withCopyrightSign(false).withImproveMap(false).build().createAttributionString(z);
    }

    private Logo createScaledLogo(Bitmap bitmap) {
        Bitmap decodeResource = BitmapFactory.decodeResource(this.context.getResources(), R.drawable.mapbox_logo_icon, null);
        float calculateLogoScale = calculateLogoScale(bitmap, decodeResource);
        Matrix matrix = new Matrix();
        matrix.postScale(calculateLogoScale, calculateLogoScale);
        Bitmap decodeResource2 = BitmapFactory.decodeResource(this.context.getResources(), R.drawable.mapbox_logo_helmet, null);
        return new Logo(Bitmap.createBitmap(decodeResource, 0, 0, decodeResource.getWidth(), decodeResource.getHeight(), matrix, true), Bitmap.createBitmap(decodeResource2, 0, 0, decodeResource2.getWidth(), decodeResource2.getHeight(), matrix, true), calculateLogoScale);
    }

    private float calculateLogoScale(Bitmap bitmap, Bitmap bitmap2) {
        DisplayMetrics displayMetrics = this.context.getResources().getDisplayMetrics();
        float height = (float) (displayMetrics.heightPixels / bitmap.getHeight());
        float min = Math.min((((float) bitmap2.getWidth()) / ((float) (displayMetrics.widthPixels / bitmap.getWidth()))) / ((float) bitmap2.getWidth()), (((float) bitmap2.getHeight()) / height) / ((float) bitmap2.getHeight())) * 2.0f;
        if (min > 1.0f) {
            return 1.0f;
        }
        if (min < 0.6f) {
            return 0.6f;
        }
        return min;
    }

    /* access modifiers changed from: protected */
    public void onSnapshotReady(final MapSnapshot mapSnapshot) {
        new Handler().post(new Runnable() {
            public void run() {
                if (MapSnapshotter.this.callback != null) {
                    MapSnapshotter.this.addOverlay(mapSnapshot);
                    MapSnapshotter.this.callback.onSnapshotReady(mapSnapshot);
                    MapSnapshotter.this.reset();
                }
            }
        });
    }

    /* access modifiers changed from: protected */
    public void onSnapshotFailed(String str) {
        ErrorHandler errorHandler2 = this.errorHandler;
        if (errorHandler2 != null) {
            errorHandler2.onError(str);
            reset();
        }
    }

    private void checkThread() {
        ThreadUtils.checkThread(TAG);
    }

    /* access modifiers changed from: protected */
    public void reset() {
        this.callback = null;
        this.errorHandler = null;
    }
}
