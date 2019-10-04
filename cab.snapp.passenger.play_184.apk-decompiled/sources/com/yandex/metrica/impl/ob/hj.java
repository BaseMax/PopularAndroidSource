package com.yandex.metrica.impl.ob;

import android.content.pm.FeatureInfo;

public abstract class hj {

    public static class a extends hj {
        public hk a(FeatureInfo featureInfo) {
            return new hk(featureInfo.name, featureInfo.version, c(featureInfo));
        }
    }

    public static class b extends hj {
        public hk a(FeatureInfo featureInfo) {
            return new hk(featureInfo.name, c(featureInfo));
        }
    }

    /* access modifiers changed from: protected */
    public abstract hk a(FeatureInfo featureInfo);

    public hk b(FeatureInfo featureInfo) {
        if (featureInfo.name != null) {
            return a(featureInfo);
        }
        if (featureInfo.reqGlEsVersion == 0) {
            return a(featureInfo);
        }
        return new hk("openGlFeature", featureInfo.reqGlEsVersion, c(featureInfo));
    }

    /* access modifiers changed from: package-private */
    public boolean c(FeatureInfo featureInfo) {
        return (featureInfo.flags & 1) != 0;
    }
}
