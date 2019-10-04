package com.farsitel.bazaar.common.model.cinema;

import android.content.Context;
import c.c.a.c.a;
import c.c.a.c.g.b;
import com.farsitel.bazaar.common.model.PurchasableEntity;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;

/* compiled from: ViewHolderItem.kt */
public abstract class EpisodeModel implements Serializable, PurchasableEntity {
    public final CinemaScreenshotItem cover;
    public final Integer episodeIndex;
    public final String fullName;
    public final String identifier;
    public boolean isBought;
    public final long price;
    public final String referrer;

    public EpisodeModel(String str, CinemaScreenshotItem cinemaScreenshotItem, long j2, String str2, Integer num, String str3) {
        j.b(str, "identifier");
        j.b(str3, "referrer");
        this.identifier = str;
        this.cover = cinemaScreenshotItem;
        this.price = j2;
        this.fullName = str2;
        this.episodeIndex = num;
        this.referrer = str3;
    }

    public CinemaScreenshotItem getCover() {
        return this.cover;
    }

    public String getEntityId() {
        return getIdentifier();
    }

    public Integer getEpisodeIndex() {
        return this.episodeIndex;
    }

    public String getFullName() {
        return this.fullName;
    }

    public String getIdentifier() {
        return this.identifier;
    }

    public long getPrice() {
        return this.price;
    }

    public final String getPrimaryButtonText(Context context) {
        j.b(context, "context");
        if (!isPlayable()) {
            return b.a(context, Long.valueOf(getPrice()));
        }
        String string = context.getString(a.play);
        j.a((Object) string, "context.getString(R.string.play)");
        return string;
    }

    public String getReferrer() {
        return this.referrer;
    }

    public boolean isBought() {
        return this.isBought;
    }

    public final boolean isFree() {
        return getPrice() <= 0;
    }

    public final boolean isPlayable() {
        return isFree() || isBought();
    }

    public void setBought(boolean z) {
        this.isBought = z;
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ EpisodeModel(String str, CinemaScreenshotItem cinemaScreenshotItem, long j2, String str2, Integer num, String str3, int i2, f fVar) {
        this(str, cinemaScreenshotItem, (i2 & 4) != 0 ? 0 : j2, str2, num, str3);
    }
}
