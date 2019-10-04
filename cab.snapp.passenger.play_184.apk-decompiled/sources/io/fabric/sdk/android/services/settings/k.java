package io.fabric.sdk.android.services.settings;

import org.a.b;
import org.a.c;

final class k implements u {
    k() {
    }

    public final s buildFromJson(io.fabric.sdk.android.services.common.k kVar, c cVar) throws b {
        c cVar2;
        long j;
        c cVar3 = cVar;
        int optInt = cVar3.optInt(t.SETTINGS_VERSION, 0);
        int optInt2 = cVar3.optInt(t.CACHE_DURATION_KEY, 3600);
        c jSONObject = cVar3.getJSONObject(t.APP_KEY);
        String string = jSONObject.getString(t.APP_IDENTIFIER_KEY);
        String string2 = jSONObject.getString("status");
        String string3 = jSONObject.getString("url");
        String string4 = jSONObject.getString(t.APP_REPORTS_URL_KEY);
        boolean optBoolean = jSONObject.optBoolean(t.APP_UPDATE_REQUIRED_KEY, false);
        if (!jSONObject.has(t.APP_ICON_KEY) || !jSONObject.getJSONObject(t.APP_ICON_KEY).has(t.ICON_HASH_KEY)) {
            cVar2 = null;
        } else {
            c jSONObject2 = jSONObject.getJSONObject(t.APP_ICON_KEY);
            cVar2 = new c(jSONObject2.getString(t.ICON_HASH_KEY), jSONObject2.getInt("width"), jSONObject2.getInt("height"));
        }
        e eVar = new e(string, string2, string3, string4, optBoolean, cVar2);
        c jSONObject3 = cVar3.getJSONObject(t.SESSION_KEY);
        p pVar = new p(jSONObject3.optInt(t.SETTINGS_LOG_BUFFER_SIZE_KEY, t.SETTINGS_LOG_BUFFER_SIZE_DEFAULT), jSONObject3.optInt(t.SETTINGS_MAX_CHAINED_EXCEPTION_DEPTH_KEY, 8), jSONObject3.optInt(t.SETTINGS_MAX_CUSTOM_EXCEPTION_EVENTS_KEY, 64), jSONObject3.optInt(t.SETTINGS_MAX_CUSTOM_KEY_VALUE_PAIRS_KEY, 64), jSONObject3.optInt(t.SETTINGS_IDENTIFIER_MASK_KEY, 255), jSONObject3.optBoolean(t.SETTINGS_SEND_SESSION_WITHOUT_CRASH_KEY, false), jSONObject3.optInt(t.SETTINGS_MAX_COMPLETE_SESSIONS_COUNT_KEY, 4));
        c jSONObject4 = cVar3.getJSONObject(t.PROMPT_KEY);
        o oVar = new o(jSONObject4.optString(t.PROMPT_TITLE_KEY, t.PROMPT_TITLE_DEFAULT), jSONObject4.optString(t.PROMPT_MESSAGE_KEY, t.PROMPT_MESSAGE_DEFAULT), jSONObject4.optString(t.PROMPT_SEND_BUTTON_TITLE_KEY, t.PROMPT_SEND_BUTTON_TITLE_DEFAULT), jSONObject4.optBoolean(t.PROMPT_SHOW_CANCEL_BUTTON_KEY, true), jSONObject4.optString(t.PROMPT_CANCEL_BUTTON_TITLE_KEY, t.PROMPT_CANCEL_BUTTON_TITLE_DEFAULT), jSONObject4.optBoolean(t.PROMPT_SHOW_ALWAYS_SEND_BUTTON_KEY, true), jSONObject4.optString(t.PROMPT_ALWAYS_SEND_BUTTON_TITLE_KEY, t.PROMPT_ALWAYS_SEND_BUTTON_TITLE_DEFAULT));
        c jSONObject5 = cVar3.getJSONObject(t.FEATURES_KEY);
        m mVar = new m(jSONObject5.optBoolean(t.FEATURES_PROMPT_ENABLED_KEY, false), jSONObject5.optBoolean(t.FEATURES_COLLECT_LOGGED_EXCEPTIONS_KEY, true), jSONObject5.optBoolean(t.FEATURES_COLLECT_REPORTS_KEY, true), jSONObject5.optBoolean(t.FEATURES_COLLECT_ANALYTICS_KEY, false));
        c jSONObject6 = cVar3.getJSONObject(t.ANALYTICS_KEY);
        b bVar = new b(jSONObject6.optString("url", t.ANALYTICS_URL_DEFAULT), jSONObject6.optInt(t.ANALYTICS_FLUSH_INTERVAL_SECS_KEY, t.ANALYTICS_FLUSH_INTERVAL_SECS_DEFAULT), jSONObject6.optInt(t.ANALYTICS_MAX_BYTE_SIZE_PER_FILE_KEY, 8000), jSONObject6.optInt(t.ANALYTICS_MAX_FILE_COUNT_PER_SEND_KEY, 1), jSONObject6.optInt(t.ANALYTICS_MAX_PENDING_SEND_FILE_COUNT_KEY, 100), jSONObject6.optBoolean(t.ANALYTICS_TRACK_CUSTOM_EVENTS_KEY, true), jSONObject6.optBoolean(t.ANALYTICS_TRACK_PREDEFINED_EVENTS_KEY, true), jSONObject6.optInt(t.ANALYTICS_SAMPLING_RATE_KEY, 1), jSONObject6.optBoolean(t.ANALYTICS_FLUSH_ON_BACKGROUND_KEY, true));
        c jSONObject7 = cVar3.getJSONObject(t.BETA_KEY);
        f fVar = new f(jSONObject7.optString(t.BETA_UPDATE_ENDPOINT, t.BETA_UPDATE_ENDPOINT_DEFAULT), jSONObject7.optInt(t.BETA_UPDATE_SUSPEND_DURATION, 3600));
        long j2 = (long) optInt2;
        if (cVar3.has(t.EXPIRES_AT_KEY)) {
            j = cVar3.getLong(t.EXPIRES_AT_KEY);
        } else {
            j = kVar.getCurrentTimeMillis() + (j2 * 1000);
        }
        s sVar = new s(j, eVar, pVar, oVar, mVar, bVar, fVar, optInt, optInt2);
        return sVar;
    }

    public final c toJson(s sVar) throws b {
        c put = new c().put(t.EXPIRES_AT_KEY, sVar.expiresAtMillis).put(t.CACHE_DURATION_KEY, sVar.cacheDuration).put(t.SETTINGS_VERSION, sVar.settingsVersion);
        m mVar = sVar.featuresData;
        c put2 = put.put(t.FEATURES_KEY, (Object) new c().put(t.FEATURES_COLLECT_LOGGED_EXCEPTIONS_KEY, mVar.collectLoggedException).put(t.FEATURES_COLLECT_REPORTS_KEY, mVar.collectReports).put(t.FEATURES_COLLECT_ANALYTICS_KEY, mVar.collectAnalytics));
        b bVar = sVar.analyticsSettingsData;
        c put3 = put2.put(t.ANALYTICS_KEY, (Object) new c().put("url", (Object) bVar.analyticsURL).put(t.ANALYTICS_FLUSH_INTERVAL_SECS_KEY, bVar.flushIntervalSeconds).put(t.ANALYTICS_MAX_BYTE_SIZE_PER_FILE_KEY, bVar.maxByteSizePerFile).put(t.ANALYTICS_MAX_FILE_COUNT_PER_SEND_KEY, bVar.maxFileCountPerSend).put(t.ANALYTICS_MAX_PENDING_SEND_FILE_COUNT_KEY, bVar.maxPendingSendFileCount));
        f fVar = sVar.betaSettingsData;
        c put4 = put3.put(t.BETA_KEY, (Object) new c().put(t.BETA_UPDATE_ENDPOINT, (Object) fVar.updateUrl).put(t.BETA_UPDATE_SUSPEND_DURATION, fVar.updateSuspendDurationSeconds));
        e eVar = sVar.appData;
        c put5 = new c().put(t.APP_IDENTIFIER_KEY, (Object) eVar.identifier).put("status", (Object) eVar.status).put("url", (Object) eVar.url).put(t.APP_REPORTS_URL_KEY, (Object) eVar.reportsUrl).put(t.APP_UPDATE_REQUIRED_KEY, eVar.updateRequired);
        if (eVar.icon != null) {
            c cVar = eVar.icon;
            put5.put(t.APP_ICON_KEY, (Object) new c().put(t.ICON_HASH_KEY, (Object) cVar.hash).put("width", cVar.width).put("height", cVar.height));
        }
        c put6 = put4.put(t.APP_KEY, (Object) put5);
        p pVar = sVar.sessionData;
        c put7 = put6.put(t.SESSION_KEY, (Object) new c().put(t.SETTINGS_LOG_BUFFER_SIZE_KEY, pVar.logBufferSize).put(t.SETTINGS_MAX_CHAINED_EXCEPTION_DEPTH_KEY, pVar.maxChainedExceptionDepth).put(t.SETTINGS_MAX_CUSTOM_EXCEPTION_EVENTS_KEY, pVar.maxCustomExceptionEvents).put(t.SETTINGS_MAX_CUSTOM_KEY_VALUE_PAIRS_KEY, pVar.maxCustomKeyValuePairs).put(t.SETTINGS_IDENTIFIER_MASK_KEY, pVar.identifierMask).put(t.SETTINGS_SEND_SESSION_WITHOUT_CRASH_KEY, pVar.sendSessionWithoutCrash));
        o oVar = sVar.promptData;
        return put7.put(t.PROMPT_KEY, (Object) new c().put(t.PROMPT_TITLE_KEY, (Object) oVar.title).put(t.PROMPT_MESSAGE_KEY, (Object) oVar.message).put(t.PROMPT_SEND_BUTTON_TITLE_KEY, (Object) oVar.sendButtonTitle).put(t.PROMPT_SHOW_CANCEL_BUTTON_KEY, oVar.showCancelButton).put(t.PROMPT_CANCEL_BUTTON_TITLE_KEY, (Object) oVar.cancelButtonTitle).put(t.PROMPT_SHOW_ALWAYS_SEND_BUTTON_KEY, oVar.showAlwaysSendButton).put(t.PROMPT_ALWAYS_SEND_BUTTON_TITLE_KEY, (Object) oVar.alwaysSendButtonTitle));
    }
}
