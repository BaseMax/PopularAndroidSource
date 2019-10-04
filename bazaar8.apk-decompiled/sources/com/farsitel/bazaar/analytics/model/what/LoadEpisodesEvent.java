package com.farsitel.bazaar.analytics.model.what;

import h.a.z;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: LoadEvent.kt */
public final class LoadEpisodesEvent extends LoadEvent {
    public final int seasonIndex;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public LoadEpisodesEvent(int i2, String str) {
        super("episode_list", str, null);
        j.b(str, "referrer");
        this.seasonIndex = i2;
    }

    public Map<String, Object> b() {
        Map<String, Object> c2 = c();
        c2.putAll(z.a(f.a("season_idx", Integer.valueOf(this.seasonIndex))));
        return c2;
    }
}
