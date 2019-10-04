package com.mapbox.mapboxsdk.module.telemetry;

import android.os.Bundle;
import com.google.gson.JsonObject;
import com.google.gson.b.a;
import com.google.gson.e;
import java.util.ArrayList;
import java.util.List;

class PerformanceEvent extends MapBaseEvent {
    private static final String PERFORMANCE_TRACE = "mobile.performance_trace";
    private final List<PerformanceAttribute<String>> attributes;
    private final List<PerformanceAttribute<Double>> counters;
    private final JsonObject metadata;
    private final String sessionId;

    static class PerformanceAttribute<T> {
        private final String name;
        private final T value;

        PerformanceAttribute(String str, T t) {
            this.name = str;
            this.value = t;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                PerformanceAttribute performanceAttribute = (PerformanceAttribute) obj;
                String str = this.name;
                if (str == null ? performanceAttribute.name != null : !str.equals(performanceAttribute.name)) {
                    return false;
                }
                T t = this.value;
                T t2 = performanceAttribute.value;
                if (t != null) {
                    return t.equals(t2);
                }
                if (t2 == null) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            String str = this.name;
            int i = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            T t = this.value;
            if (t != null) {
                i = t.hashCode();
            }
            return hashCode + i;
        }
    }

    /* access modifiers changed from: package-private */
    public String getEventName() {
        return PERFORMANCE_TRACE;
    }

    PerformanceEvent(PhoneState phoneState, String str, Bundle bundle) {
        super(phoneState);
        this.sessionId = str;
        this.attributes = initList(bundle.getString("attributes"), new a<ArrayList<PerformanceAttribute<String>>>() {
        });
        this.counters = initList(bundle.getString("counters"), new a<ArrayList<PerformanceAttribute<Double>>>() {
        });
        this.metadata = initMetaData(bundle.getString("metadata"));
    }

    private <T> ArrayList<PerformanceAttribute<T>> initList(String str, a aVar) {
        if (str == null || str.isEmpty()) {
            return new ArrayList<>();
        }
        return (ArrayList) new e().fromJson(str, aVar.getType());
    }

    private JsonObject initMetaData(String str) {
        if (str == null) {
            return new JsonObject();
        }
        return (JsonObject) new e().fromJson(str, JsonObject.class);
    }

    /* access modifiers changed from: package-private */
    public String getSessionId() {
        return this.sessionId;
    }

    /* access modifiers changed from: package-private */
    public List<PerformanceAttribute<String>> getAttributes() {
        return this.attributes;
    }

    /* access modifiers changed from: package-private */
    public List<PerformanceAttribute<Double>> getCounters() {
        return this.counters;
    }

    /* access modifiers changed from: package-private */
    public JsonObject getMetadata() {
        return this.metadata;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            PerformanceEvent performanceEvent = (PerformanceEvent) obj;
            String str = this.sessionId;
            if (str == null ? performanceEvent.sessionId != null : !str.equals(performanceEvent.sessionId)) {
                return false;
            }
            List<PerformanceAttribute<String>> list = this.attributes;
            if (list == null ? performanceEvent.attributes != null : !list.equals(performanceEvent.attributes)) {
                return false;
            }
            List<PerformanceAttribute<Double>> list2 = this.counters;
            if (list2 == null ? performanceEvent.counters != null : !list2.equals(performanceEvent.counters)) {
                return false;
            }
            JsonObject jsonObject = this.metadata;
            JsonObject jsonObject2 = performanceEvent.metadata;
            if (jsonObject != null) {
                return jsonObject.equals(jsonObject2);
            }
            if (jsonObject2 == null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.sessionId;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        List<PerformanceAttribute<String>> list = this.attributes;
        int hashCode2 = (hashCode + (list != null ? list.hashCode() : 0)) * 31;
        List<PerformanceAttribute<Double>> list2 = this.counters;
        int hashCode3 = (hashCode2 + (list2 != null ? list2.hashCode() : 0)) * 31;
        JsonObject jsonObject = this.metadata;
        if (jsonObject != null) {
            i = jsonObject.hashCode();
        }
        return hashCode3 + i;
    }

    public String toString() {
        return "PerformanceEvent{sessionId='" + this.sessionId + '\'' + ", attributes=" + this.attributes + ", counters=" + this.counters + ", metadata=" + this.metadata + '}';
    }
}
