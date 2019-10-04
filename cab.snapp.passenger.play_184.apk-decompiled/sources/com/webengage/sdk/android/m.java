package com.webengage.sdk.android;

import java.util.HashMap;
import java.util.Map;

class m {

    /* renamed from: a  reason: collision with root package name */
    Map<String, String> f5554a;

    public m() {
        this.f5554a = null;
        this.f5554a = new HashMap();
        this.f5554a.put("utm_campaign", am.CAMPAIGN_ID.toString());
        this.f5554a.put("utm_source", am.CAMPAIGN_SOURCE.toString());
        this.f5554a.put("utm_medium", am.CAMPAIGN_MEDIUM.toString());
        this.f5554a.put("utm_term", am.CAMPAIGN_TERM.toString());
        this.f5554a.put("utm_content", am.CAMPAIGN_CONTENT.toString());
        this.f5554a.put("gclid", am.CAMPAIGN_GCLID.toString());
    }

    public Map<String, Object> a(String str) {
        HashMap hashMap = new HashMap();
        for (String split : str.split("&")) {
            String[] split2 = split.split("=");
            if (this.f5554a.containsKey(split2[0]) && split2.length > 1) {
                hashMap.put(this.f5554a.get(split2[0]), split2[1]);
            }
        }
        return hashMap;
    }
}
