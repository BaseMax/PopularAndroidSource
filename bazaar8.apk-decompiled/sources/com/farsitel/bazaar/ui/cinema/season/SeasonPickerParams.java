package com.farsitel.bazaar.ui.cinema.season;

import h.f.b.j;
import java.io.Serializable;

/* compiled from: SeasonPickerParams.kt */
public final class SeasonPickerParams implements Serializable {
    public final String id;
    public final String referrer;
    public final int seasonIdx;

    public SeasonPickerParams(String str, int i2, String str2) {
        j.b(str, "id");
        j.b(str2, "referrer");
        this.id = str;
        this.seasonIdx = i2;
        this.referrer = str2;
    }

    public final String a() {
        return this.id;
    }

    public final int b() {
        return this.seasonIdx;
    }

    public final String getReferrer() {
        return this.referrer;
    }
}
