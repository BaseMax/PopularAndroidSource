package com.mapbox.mapboxsdk.attribution;

import android.content.Context;
import android.os.Build;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.URLSpan;
import com.mapbox.mapboxsdk.R;
import java.lang.ref.WeakReference;
import java.util.LinkedHashSet;
import java.util.Set;

public class AttributionParser {
    private static final String IMPROVE_THIS_MAP = "Improve this map";
    private final String attributionData;
    private final Set<Attribution> attributions = new LinkedHashSet();
    private final WeakReference<Context> context;
    private final boolean withCopyrightSign;
    private final boolean withImproveMap;
    private final boolean withMapboxAttribution;
    private final boolean withTelemetryAttribution;

    public static class Options {
        private String[] attributionDataStringArray;
        private final WeakReference<Context> context;
        private boolean withCopyrightSign = true;
        private boolean withImproveMap = true;
        private boolean withMapboxAttribution = true;
        private boolean withTelemetryAttribution = false;

        public Options(Context context2) {
            this.context = new WeakReference<>(context2);
        }

        public Options withAttributionData(String... strArr) {
            this.attributionDataStringArray = strArr;
            return this;
        }

        public Options withImproveMap(boolean z) {
            this.withImproveMap = z;
            return this;
        }

        public Options withCopyrightSign(boolean z) {
            this.withCopyrightSign = z;
            return this;
        }

        public Options withTelemetryAttribution(boolean z) {
            this.withTelemetryAttribution = z;
            return this;
        }

        public Options withMapboxAttribution(boolean z) {
            this.withMapboxAttribution = z;
            return this;
        }

        public AttributionParser build() {
            String[] strArr = this.attributionDataStringArray;
            if (strArr != null) {
                AttributionParser attributionParser = new AttributionParser(this.context, parseAttribution(strArr), this.withImproveMap, this.withCopyrightSign, this.withTelemetryAttribution, this.withMapboxAttribution);
                attributionParser.parse();
                return attributionParser;
            }
            throw new IllegalStateException("Using builder without providing attribution data");
        }

        private String parseAttribution(String[] strArr) {
            StringBuilder sb = new StringBuilder();
            for (String str : strArr) {
                if (!str.isEmpty()) {
                    sb.append(str);
                }
            }
            return sb.toString();
        }
    }

    AttributionParser(WeakReference<Context> weakReference, String str, boolean z, boolean z2, boolean z3, boolean z4) {
        this.context = weakReference;
        this.attributionData = str;
        this.withImproveMap = z;
        this.withCopyrightSign = z2;
        this.withTelemetryAttribution = z3;
        this.withMapboxAttribution = z4;
    }

    public Set<Attribution> getAttributions() {
        return this.attributions;
    }

    public String createAttributionString() {
        return createAttributionString(false);
    }

    public String createAttributionString(boolean z) {
        StringBuilder sb = new StringBuilder(this.withCopyrightSign ? "" : "© ");
        int i = 0;
        for (Attribution next : this.attributions) {
            i++;
            sb.append(!z ? next.getTitle() : next.getTitleAbbreviated());
            if (i != this.attributions.size()) {
                sb.append(" / ");
            }
        }
        return sb.toString();
    }

    /* access modifiers changed from: protected */
    public void parse() {
        parseAttributions();
        addAdditionalAttributions();
    }

    private void parseAttributions() {
        SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) fromHtml(this.attributionData);
        for (URLSpan parseUrlSpan : (URLSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), URLSpan.class)) {
            parseUrlSpan(spannableStringBuilder, parseUrlSpan);
        }
    }

    private void parseUrlSpan(SpannableStringBuilder spannableStringBuilder, URLSpan uRLSpan) {
        String url = uRLSpan.getURL();
        if (isUrlValid(url)) {
            String parseAnchorValue = parseAnchorValue(spannableStringBuilder, uRLSpan);
            if (isImproveThisMapAnchor(parseAnchorValue)) {
                parseAnchorValue = translateImproveThisMapAnchor(parseAnchorValue);
            }
            this.attributions.add(new Attribution(parseAnchorValue, url));
        }
    }

    private boolean isUrlValid(String str) {
        return isValidForImproveThisMap(str) && isValidForMapbox(str);
    }

    private boolean isImproveThisMapAnchor(String str) {
        return str.equals(IMPROVE_THIS_MAP);
    }

    private String translateImproveThisMapAnchor(String str) {
        Context context2 = (Context) this.context.get();
        return context2 != null ? context2.getString(R.string.mapbox_telemetryImproveMap) : str;
    }

    private boolean isValidForImproveThisMap(String str) {
        return this.withImproveMap || !Attribution.IMPROVE_MAP_URLS.contains(str);
    }

    private boolean isValidForMapbox(String str) {
        return this.withMapboxAttribution || !str.equals("https://www.mapbox.com/about/maps/");
    }

    private String parseAnchorValue(SpannableStringBuilder spannableStringBuilder, URLSpan uRLSpan) {
        int spanStart = spannableStringBuilder.getSpanStart(uRLSpan);
        int spanEnd = spannableStringBuilder.getSpanEnd(uRLSpan);
        char[] cArr = new char[(spanEnd - spanStart)];
        spannableStringBuilder.getChars(spanStart, spanEnd, cArr, 0);
        return stripCopyright(String.valueOf(cArr));
    }

    private String stripCopyright(String str) {
        return (this.withCopyrightSign || !str.startsWith("© ")) ? str : str.substring(2, str.length());
    }

    private void addAdditionalAttributions() {
        if (this.withTelemetryAttribution) {
            Context context2 = (Context) this.context.get();
            this.attributions.add(new Attribution(context2 != null ? context2.getString(R.string.mapbox_telemetrySettings) : "Telemetry Settings", "https://www.mapbox.com/telemetry/"));
        }
    }

    private static Spanned fromHtml(String str) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Html.fromHtml(str, 0);
        }
        return Html.fromHtml(str);
    }
}
