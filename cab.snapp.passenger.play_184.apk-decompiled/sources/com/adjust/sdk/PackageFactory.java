package com.adjust.sdk;

import android.net.Uri;
import android.net.UrlQuerySanitizer;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class PackageFactory {
    private static final String ADJUST_PREFIX = "adjust_";

    public static ActivityPackage buildReftagSdkClickPackage(String str, long j, ActivityState activityState, AdjustConfig adjustConfig, a aVar, SessionParameters sessionParameters) {
        String str2;
        if (str == null || str.length() == 0) {
            return null;
        }
        try {
            str2 = URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            str2 = Constants.MALFORMED;
        }
        AdjustFactory.getLogger().verbose("Referrer to parse (%s)", str2);
        UrlQuerySanitizer urlQuerySanitizer = new UrlQuerySanitizer();
        urlQuerySanitizer.setUnregisteredParameterValueSanitizer(UrlQuerySanitizer.getAllButNulLegal());
        urlQuerySanitizer.setAllowUnregisteredParamaters(true);
        urlQuerySanitizer.parseQuery(str2);
        b queryStringClickPackageBuilder = queryStringClickPackageBuilder(urlQuerySanitizer.getParameterList(), activityState, adjustConfig, aVar, sessionParameters);
        if (queryStringClickPackageBuilder == null) {
            return null;
        }
        queryStringClickPackageBuilder.d = str2;
        queryStringClickPackageBuilder.g = j;
        queryStringClickPackageBuilder.e = str;
        return queryStringClickPackageBuilder.buildClickPackage(Constants.REFTAG);
    }

    public static ActivityPackage buildDeeplinkSdkClickPackage(Uri uri, long j, ActivityState activityState, AdjustConfig adjustConfig, a aVar, SessionParameters sessionParameters) {
        if (uri == null) {
            return null;
        }
        String uri2 = uri.toString();
        if (uri2 == null || uri2.length() == 0) {
            return null;
        }
        AdjustFactory.getLogger().verbose("Url to parse (%s)", uri);
        UrlQuerySanitizer urlQuerySanitizer = new UrlQuerySanitizer();
        urlQuerySanitizer.setUnregisteredParameterValueSanitizer(UrlQuerySanitizer.getAllButNulLegal());
        urlQuerySanitizer.setAllowUnregisteredParamaters(true);
        urlQuerySanitizer.parseUrl(uri2);
        b queryStringClickPackageBuilder = queryStringClickPackageBuilder(urlQuerySanitizer.getParameterList(), activityState, adjustConfig, aVar, sessionParameters);
        if (queryStringClickPackageBuilder == null) {
            return null;
        }
        queryStringClickPackageBuilder.f = uri.toString();
        queryStringClickPackageBuilder.g = j;
        return queryStringClickPackageBuilder.buildClickPackage(Constants.DEEPLINK);
    }

    public static ActivityPackage buildInstallReferrerSdkClickPackage(String str, long j, long j2, ActivityState activityState, AdjustConfig adjustConfig, a aVar, SessionParameters sessionParameters) {
        String str2 = str;
        if (str2 == null || str.length() == 0) {
            return null;
        }
        b bVar = new b(adjustConfig, aVar, activityState, sessionParameters, System.currentTimeMillis());
        bVar.d = str2;
        bVar.h = j;
        bVar.i = j2;
        return bVar.buildClickPackage(Constants.INSTALL_REFERRER);
    }

    private static b queryStringClickPackageBuilder(List<UrlQuerySanitizer.ParameterValuePair> list, ActivityState activityState, AdjustConfig adjustConfig, a aVar, SessionParameters sessionParameters) {
        if (list == null) {
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        AdjustAttribution adjustAttribution = new AdjustAttribution();
        for (UrlQuerySanitizer.ParameterValuePair next : list) {
            readQueryString(next.mParameter, next.mValue, linkedHashMap, adjustAttribution);
        }
        long currentTimeMillis = System.currentTimeMillis();
        String str = (String) linkedHashMap.remove(Constants.REFTAG);
        if (activityState != null) {
            activityState.lastInterval = currentTimeMillis - activityState.lastActivity;
        }
        b bVar = new b(adjustConfig, aVar, activityState, sessionParameters, currentTimeMillis);
        bVar.f1943a = linkedHashMap;
        bVar.f1944b = adjustAttribution;
        bVar.c = str;
        return bVar;
    }

    private static boolean readQueryString(String str, String str2, Map<String, String> map, AdjustAttribution adjustAttribution) {
        if (str == null || str2 == null || !str.startsWith(ADJUST_PREFIX)) {
            return false;
        }
        String substring = str.substring(7);
        if (substring.length() == 0 || str2.length() == 0) {
            return false;
        }
        if (!tryToSetAttribution(adjustAttribution, substring, str2)) {
            map.put(substring, str2);
        }
        return true;
    }

    private static boolean tryToSetAttribution(AdjustAttribution adjustAttribution, String str, String str2) {
        if (str.equals("tracker")) {
            adjustAttribution.trackerName = str2;
            return true;
        } else if (str.equals(FirebaseAnalytics.b.CAMPAIGN)) {
            adjustAttribution.campaign = str2;
            return true;
        } else if (str.equals("adgroup")) {
            adjustAttribution.adgroup = str2;
            return true;
        } else if (!str.equals("creative")) {
            return false;
        } else {
            adjustAttribution.creative = str2;
            return true;
        }
    }
}
