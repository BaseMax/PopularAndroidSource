package com.farsitel.bazaar.common.model.page;

import android.content.Context;
import c.c.a.c.a;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import com.farsitel.bazaar.common.model.PurchasableEntity;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.ShortInfo;
import com.farsitel.bazaar.common.model.common.LoadableEntity;
import h.f.b.f;
import h.f.b.j;
import h.f.b.n;
import java.util.Arrays;
import java.util.Locale;

/* compiled from: MovieItem.kt */
public abstract class MovieItem implements RecyclerData {

    /* compiled from: MovieItem.kt */
    public static final class EpisodeItem extends SerialItem implements RecyclerData, PurchasableEntity, LoadableEntity {
        public final String entityId;
        public final String episodeId;
        public boolean isBought;
        public boolean isLoading;
        public boolean showLoadingButton;

        /* JADX INFO: this call moved to the top of the method (can break code semantics) */
        public /* synthetic */ EpisodeItem(String str, String str2, Integer num, Integer num2, String str3, String str4, Integer num3, String str5, String str6, Float f2, boolean z, ShortInfo shortInfo, String str7, boolean z2, int i2, f fVar) {
            this(str, str2, num, num2, str3, str4, num3, str5, str6, f2, z, shortInfo, str7, (i2 & 8192) != 0 ? false : z2);
        }

        public final boolean getCanBePlayed() {
            return isFree() || isBought();
        }

        public String getEntityId() {
            return this.entityId;
        }

        public final String getEpisodeId() {
            return this.episodeId;
        }

        public final String getPrimaryButtonText(Context context) {
            j.b(context, "context");
            if (getCanBePlayed()) {
                String string = context.getString(a.play);
                j.a((Object) string, "context.getString(R.string.play)");
                return string;
            }
            String priceString = getPriceString();
            if (priceString != null) {
                return priceString;
            }
            n nVar = n.f14575a;
            Locale locale = Locale.getDefault();
            j.a((Object) locale, "Locale.getDefault()");
            String string2 = context.getString(a.price_placeholder);
            j.a((Object) string2, "context.getString(R.string.price_placeholder)");
            Object[] objArr = new Object[1];
            Integer price = getPrice();
            if (price != null) {
                objArr[0] = Integer.valueOf(price.intValue() / 10);
                String format = String.format(locale, string2, Arrays.copyOf(objArr, objArr.length));
                j.a((Object) format, "java.lang.String.format(locale, format, *args)");
                return format;
            }
            j.a();
            throw null;
        }

        public final boolean getShowLoadingButton() {
            return this.showLoadingButton;
        }

        public boolean isBought() {
            return this.isBought;
        }

        public boolean isLoading() {
            return this.isLoading;
        }

        public void setBought(boolean z) {
            this.isBought = z;
        }

        public void setLoading(boolean z) {
            this.isLoading = z;
        }

        public final void setShowLoadingButton(boolean z) {
            this.showLoadingButton = z;
        }

        /* JADX WARNING: Illegal instructions before constructor call */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public EpisodeItem(java.lang.String r16, java.lang.String r17, java.lang.Integer r18, java.lang.Integer r19, java.lang.String r20, java.lang.String r21, java.lang.Integer r22, java.lang.String r23, java.lang.String r24, java.lang.Float r25, boolean r26, com.farsitel.bazaar.common.model.ShortInfo r27, java.lang.String r28, boolean r29) {
            /*
                r15 = this;
                r13 = r15
                r14 = r17
                java.lang.String r0 = "serialId"
                r1 = r16
                h.f.b.j.b(r1, r0)
                java.lang.String r0 = "episodeId"
                h.f.b.j.b(r14, r0)
                java.lang.String r0 = "name"
                r5 = r21
                h.f.b.j.b(r5, r0)
                java.lang.String r0 = "referrer"
                r12 = r28
                h.f.b.j.b(r12, r0)
                r0 = r15
                r2 = r18
                r3 = r19
                r4 = r20
                r6 = r22
                r7 = r23
                r8 = r24
                r9 = r25
                r10 = r26
                r11 = r27
                r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)
                r13.episodeId = r14
                r0 = r29
                r13.isLoading = r0
                java.lang.String r0 = r13.episodeId
                r13.entityId = r0
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.page.MovieItem.EpisodeItem.<init>(java.lang.String, java.lang.String, java.lang.Integer, java.lang.Integer, java.lang.String, java.lang.String, java.lang.Integer, java.lang.String, java.lang.String, java.lang.Float, boolean, com.farsitel.bazaar.common.model.ShortInfo, java.lang.String, boolean):void");
        }
    }

    /* compiled from: MovieItem.kt */
    public static class SerialItem extends MovieItem implements RecyclerData {
        public final String coverUrl;
        public final Integer episodeIdx;
        public final boolean isAd;
        public final boolean isFree;
        public final String name;
        public final Integer price;
        public final String priceBeforeDiscountString;
        public final String priceString;
        public final Float rate;
        public final String referrer;
        public final Integer seasonIdx;
        public final String serialId;
        public final ShortInfo shortInfo;
        public final int viewType = CommonItemType.VITRIN_SERIAL.getValue();

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public SerialItem(String str, Integer num, Integer num2, String str2, String str3, Integer num3, String str4, String str5, Float f2, boolean z, ShortInfo shortInfo2, String str6) {
            super(null);
            j.b(str, "serialId");
            j.b(str3, DefaultAppMeasurementEventListenerRegistrar.NAME);
            j.b(str6, "referrer");
            this.serialId = str;
            this.episodeIdx = num;
            this.seasonIdx = num2;
            this.coverUrl = str2;
            this.name = str3;
            this.price = num3;
            this.priceString = str4;
            this.priceBeforeDiscountString = str5;
            this.rate = f2;
            this.isAd = z;
            this.shortInfo = shortInfo2;
            this.referrer = str6;
            Integer num4 = this.price;
            this.isFree = (num4 != null ? num4.intValue() : 0) == 0;
        }

        public final String getCoverUrl() {
            return this.coverUrl;
        }

        public final Integer getEpisodeIdx() {
            return this.episodeIdx;
        }

        public final String getName() {
            return this.name;
        }

        public final Integer getPrice() {
            return this.price;
        }

        public final String getPriceBeforeDiscountString() {
            return this.priceBeforeDiscountString;
        }

        public final String getPriceString() {
            return this.priceString;
        }

        public final Float getRate() {
            return this.rate;
        }

        public final String getReferrer() {
            return this.referrer;
        }

        public final Integer getSeasonIdx() {
            return this.seasonIdx;
        }

        public final String getSerialId() {
            return this.serialId;
        }

        public final ShortInfo getShortInfo() {
            return this.shortInfo;
        }

        public int getViewType() {
            return this.viewType;
        }

        public final boolean isAd() {
            return this.isAd;
        }

        public final boolean isFree() {
            return this.isFree;
        }
    }

    /* compiled from: MovieItem.kt */
    public static final class VideoItem extends MovieItem implements RecyclerData, PurchasableEntity, LoadableEntity {
        public final String coverUrl;
        public final String entityId;
        public final String info;
        public final boolean isAd;
        public boolean isBought;
        public final boolean isFree;
        public final boolean isLive;
        public boolean isLoading;
        public final String moreInfo;
        public final int price;
        public final String priceString;
        public final Float rate;
        public final String referrer;
        public final String videoId;
        public final String videoName;
        public final int viewType;

        /* JADX INFO: this call moved to the top of the method (can break code semantics) */
        public /* synthetic */ VideoItem(String str, String str2, String str3, String str4, Float f2, int i2, String str5, boolean z, boolean z2, String str6, String str7, boolean z3, int i3, f fVar) {
            this(str, str2, str3, str4, f2, i2, str5, z, z2, str6, str7, (i3 & 2048) != 0 ? false : z3);
        }

        public final boolean getCanBePlayed() {
            return this.isFree || isBought();
        }

        public final String getCoverUrl() {
            return this.coverUrl;
        }

        public String getEntityId() {
            return this.entityId;
        }

        public final String getInfo() {
            return this.info;
        }

        public final String getMoreInfo() {
            return this.moreInfo;
        }

        public final int getPrice() {
            return this.price;
        }

        public final String getPriceString() {
            return this.priceString;
        }

        public final String getPrimaryButtonText(Context context) {
            j.b(context, "context");
            if (getCanBePlayed()) {
                String string = context.getString(a.play);
                j.a((Object) string, "context.getString(R.string.play)");
                return string;
            }
            String str = this.priceString;
            if (str != null) {
                return str;
            }
            n nVar = n.f14575a;
            Locale locale = Locale.getDefault();
            j.a((Object) locale, "Locale.getDefault()");
            String string2 = context.getString(a.price_placeholder);
            j.a((Object) string2, "context.getString(R.string.price_placeholder)");
            Object[] objArr = {Integer.valueOf(this.price / 10)};
            String format = String.format(locale, string2, Arrays.copyOf(objArr, objArr.length));
            j.a((Object) format, "java.lang.String.format(locale, format, *args)");
            return format;
        }

        public final Float getRate() {
            return this.rate;
        }

        public final String getReferrer() {
            return this.referrer;
        }

        public final String getVideoId() {
            return this.videoId;
        }

        public final String getVideoName() {
            return this.videoName;
        }

        public int getViewType() {
            return this.viewType;
        }

        public final boolean isAd() {
            return this.isAd;
        }

        public boolean isBought() {
            return this.isBought;
        }

        public final boolean isFree() {
            return this.isFree;
        }

        public final boolean isLive() {
            return this.isLive;
        }

        public boolean isLoading() {
            return this.isLoading;
        }

        public void setBought(boolean z) {
            this.isBought = z;
        }

        public void setLoading(boolean z) {
            this.isLoading = z;
        }

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public VideoItem(String str, String str2, String str3, String str4, Float f2, int i2, String str5, boolean z, boolean z2, String str6, String str7, boolean z3) {
            super(null);
            j.b(str, "videoId");
            j.b(str2, "videoName");
            j.b(str7, "referrer");
            this.videoId = str;
            this.videoName = str2;
            this.info = str3;
            this.moreInfo = str4;
            this.rate = f2;
            this.price = i2;
            this.priceString = str5;
            this.isAd = z;
            this.isLive = z2;
            this.coverUrl = str6;
            this.referrer = str7;
            this.isLoading = z3;
            this.entityId = this.videoId;
            this.viewType = CommonItemType.VITRIN_VIDEO.getValue();
            this.isFree = this.price == 0;
        }
    }

    public MovieItem() {
    }

    public /* synthetic */ MovieItem(f fVar) {
        this();
    }
}
