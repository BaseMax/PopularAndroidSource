package com.mapbox.mapboxsdk.maps;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Toast;
import com.mapbox.mapboxsdk.MapStrictMode;
import com.mapbox.mapboxsdk.Mapbox;
import com.mapbox.mapboxsdk.R;
import com.mapbox.mapboxsdk.attribution.Attribution;
import com.mapbox.mapboxsdk.attribution.AttributionParser;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.style.sources.Source;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Locale;
import java.util.Set;

public class AttributionDialogManager implements DialogInterface.OnClickListener, View.OnClickListener {
    private static final String MAP_FEEDBACK_LOCATION_FORMAT = "https://apps.mapbox.com/feedback/#/%f/%f/%d";
    private static final String MAP_FEEDBACK_URL = "https://apps.mapbox.com/feedback";
    private Set<Attribution> attributionSet;
    /* access modifiers changed from: private */
    public final Context context;
    private AlertDialog dialog;
    private final MapboxMap mapboxMap;

    static class AttributionBuilder {
        private final WeakReference<Context> context;
        private final MapboxMap mapboxMap;

        AttributionBuilder(MapboxMap mapboxMap2, Context context2) {
            this.mapboxMap = mapboxMap2;
            this.context = new WeakReference<>(context2);
        }

        /* access modifiers changed from: private */
        public Set<Attribution> build() {
            Context context2 = (Context) this.context.get();
            if (context2 == null) {
                return Collections.emptySet();
            }
            ArrayList arrayList = new ArrayList();
            if (this.mapboxMap.getStyle() != null) {
                for (Source next : this.mapboxMap.getStyle().getSources()) {
                    if (!next.getAttribution().isEmpty()) {
                        arrayList.add(next.getAttribution());
                    }
                }
            }
            return new AttributionParser.Options(context2).withCopyrightSign(true).withImproveMap(true).withTelemetryAttribution(true).withAttributionData((String[]) arrayList.toArray(new String[arrayList.size()])).build().getAttributions();
        }
    }

    public AttributionDialogManager(Context context2, MapboxMap mapboxMap2) {
        this.context = context2;
        this.mapboxMap = mapboxMap2;
    }

    public void onClick(View view) {
        this.attributionSet = new AttributionBuilder(this.mapboxMap, view.getContext()).build();
        Context context2 = this.context;
        if (!(context2 instanceof Activity ? ((Activity) context2).isFinishing() : false)) {
            showAttributionDialog(getAttributionTitles());
        }
    }

    /* access modifiers changed from: protected */
    public void showAttributionDialog(String[] strArr) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setTitle(R.string.mapbox_attributionsDialogTitle);
        builder.setAdapter(new ArrayAdapter(this.context, R.layout.mapbox_attribution_list_item, strArr), this);
        this.dialog = builder.show();
    }

    private String[] getAttributionTitles() {
        ArrayList arrayList = new ArrayList();
        for (Attribution title : this.attributionSet) {
            arrayList.add(title.getTitle());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (isLatestEntry(i)) {
            showTelemetryDialog();
        } else {
            showMapFeedbackWebPage(i);
        }
    }

    public void onStop() {
        AlertDialog alertDialog = this.dialog;
        if (alertDialog != null && alertDialog.isShowing()) {
            this.dialog.dismiss();
        }
    }

    private boolean isLatestEntry(int i) {
        return i == getAttributionTitles().length - 1;
    }

    private void showTelemetryDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setTitle(R.string.mapbox_attributionTelemetryTitle);
        builder.setMessage(R.string.mapbox_attributionTelemetryMessage);
        builder.setPositiveButton(R.string.mapbox_attributionTelemetryPositive, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                TelemetryDefinition telemetry = Mapbox.getTelemetry();
                if (telemetry != null) {
                    telemetry.setUserTelemetryRequestState(true);
                }
                dialogInterface.cancel();
            }
        });
        builder.setNeutralButton(R.string.mapbox_attributionTelemetryNeutral, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                AttributionDialogManager attributionDialogManager = AttributionDialogManager.this;
                attributionDialogManager.showWebPage(attributionDialogManager.context.getResources().getString(R.string.mapbox_telemetryLink));
                dialogInterface.cancel();
            }
        });
        builder.setNegativeButton(R.string.mapbox_attributionTelemetryNegative, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                TelemetryDefinition telemetry = Mapbox.getTelemetry();
                if (telemetry != null) {
                    telemetry.setUserTelemetryRequestState(false);
                }
                dialogInterface.cancel();
            }
        });
        builder.show();
    }

    private void showMapFeedbackWebPage(int i) {
        Set<Attribution> set = this.attributionSet;
        String url = ((Attribution[]) set.toArray(new Attribution[set.size()]))[i].getUrl();
        if (url.contains(MAP_FEEDBACK_URL)) {
            url = buildMapFeedbackMapUrl(this.mapboxMap.getCameraPosition());
        }
        showWebPage(url);
    }

    private String buildMapFeedbackMapUrl(CameraPosition cameraPosition) {
        if (cameraPosition == null) {
            return MAP_FEEDBACK_URL;
        }
        return String.format(Locale.getDefault(), MAP_FEEDBACK_LOCATION_FORMAT, new Object[]{Double.valueOf(cameraPosition.target.getLongitude()), Double.valueOf(cameraPosition.target.getLatitude()), Integer.valueOf((int) cameraPosition.zoom)});
    }

    /* access modifiers changed from: private */
    public void showWebPage(String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            this.context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            Toast.makeText(this.context, R.string.mapbox_attributionErrorNoBrowser, 1).show();
            MapStrictMode.strictModeViolation((Throwable) e);
        }
    }
}
