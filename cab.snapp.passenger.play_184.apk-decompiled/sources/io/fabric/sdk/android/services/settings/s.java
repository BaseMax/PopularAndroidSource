package io.fabric.sdk.android.services.settings;

public final class s {
    public final b analyticsSettingsData;
    public final e appData;
    public final f betaSettingsData;
    public final int cacheDuration;
    public final long expiresAtMillis;
    public final m featuresData;
    public final o promptData;
    public final p sessionData;
    public final int settingsVersion;

    public s(long j, e eVar, p pVar, o oVar, m mVar, b bVar, f fVar, int i, int i2) {
        this.expiresAtMillis = j;
        this.appData = eVar;
        this.sessionData = pVar;
        this.promptData = oVar;
        this.featuresData = mVar;
        this.settingsVersion = i;
        this.cacheDuration = i2;
        this.analyticsSettingsData = bVar;
        this.betaSettingsData = fVar;
    }

    public final boolean isExpired(long j) {
        return this.expiresAtMillis < j;
    }
}
