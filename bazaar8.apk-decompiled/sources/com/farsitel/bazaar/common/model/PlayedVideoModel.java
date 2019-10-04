package com.farsitel.bazaar.common.model;

import com.crashlytics.android.answers.SessionEventTransform;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;

/* compiled from: PlayedVideoModel.kt */
public final class PlayedVideoModel implements Serializable {
    public final String cover;
    public final long date;
    public final String entityId;
    public final Integer episodeIdx;
    public final boolean isLive;
    public final Integer seasonIdx;
    public final String serialId;
    public final String title;
    public final PlayedVideoType type;

    public PlayedVideoModel(String str, String str2, String str3, String str4, Integer num, Integer num2, PlayedVideoType playedVideoType, boolean z, long j2) {
        j.b(str, "entityId");
        j.b(str2, "title");
        j.b(playedVideoType, SessionEventTransform.TYPE_KEY);
        this.entityId = str;
        this.title = str2;
        this.cover = str3;
        this.serialId = str4;
        this.episodeIdx = num;
        this.seasonIdx = num2;
        this.type = playedVideoType;
        this.isLive = z;
        this.date = j2;
    }

    public static /* synthetic */ PlayedVideoModel copy$default(PlayedVideoModel playedVideoModel, String str, String str2, String str3, String str4, Integer num, Integer num2, PlayedVideoType playedVideoType, boolean z, long j2, int i2, Object obj) {
        PlayedVideoModel playedVideoModel2 = playedVideoModel;
        int i3 = i2;
        return playedVideoModel.copy((i3 & 1) != 0 ? playedVideoModel2.entityId : str, (i3 & 2) != 0 ? playedVideoModel2.title : str2, (i3 & 4) != 0 ? playedVideoModel2.cover : str3, (i3 & 8) != 0 ? playedVideoModel2.serialId : str4, (i3 & 16) != 0 ? playedVideoModel2.episodeIdx : num, (i3 & 32) != 0 ? playedVideoModel2.seasonIdx : num2, (i3 & 64) != 0 ? playedVideoModel2.type : playedVideoType, (i3 & 128) != 0 ? playedVideoModel2.isLive : z, (i3 & 256) != 0 ? playedVideoModel2.date : j2);
    }

    public final String component1() {
        return this.entityId;
    }

    public final String component2() {
        return this.title;
    }

    public final String component3() {
        return this.cover;
    }

    public final String component4() {
        return this.serialId;
    }

    public final Integer component5() {
        return this.episodeIdx;
    }

    public final Integer component6() {
        return this.seasonIdx;
    }

    public final PlayedVideoType component7() {
        return this.type;
    }

    public final boolean component8() {
        return this.isLive;
    }

    public final long component9() {
        return this.date;
    }

    public final PlayedVideoModel copy(String str, String str2, String str3, String str4, Integer num, Integer num2, PlayedVideoType playedVideoType, boolean z, long j2) {
        j.b(str, "entityId");
        j.b(str2, "title");
        PlayedVideoType playedVideoType2 = playedVideoType;
        j.b(playedVideoType2, SessionEventTransform.TYPE_KEY);
        PlayedVideoModel playedVideoModel = new PlayedVideoModel(str, str2, str3, str4, num, num2, playedVideoType2, z, j2);
        return playedVideoModel;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof PlayedVideoModel) {
                PlayedVideoModel playedVideoModel = (PlayedVideoModel) obj;
                if (j.a((Object) this.entityId, (Object) playedVideoModel.entityId) && j.a((Object) this.title, (Object) playedVideoModel.title) && j.a((Object) this.cover, (Object) playedVideoModel.cover) && j.a((Object) this.serialId, (Object) playedVideoModel.serialId) && j.a((Object) this.episodeIdx, (Object) playedVideoModel.episodeIdx) && j.a((Object) this.seasonIdx, (Object) playedVideoModel.seasonIdx) && j.a((Object) this.type, (Object) playedVideoModel.type)) {
                    if (this.isLive == playedVideoModel.isLive) {
                        if (this.date == playedVideoModel.date) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String getCover() {
        return this.cover;
    }

    public final long getDate() {
        return this.date;
    }

    public final String getEntityId() {
        return this.entityId;
    }

    public final Integer getEpisodeIdx() {
        return this.episodeIdx;
    }

    public final Integer getSeasonIdx() {
        return this.seasonIdx;
    }

    public final String getSerialId() {
        return this.serialId;
    }

    public final String getTitle() {
        return this.title;
    }

    public final PlayedVideoType getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.entityId;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.title;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.cover;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.serialId;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        Integer num = this.episodeIdx;
        int hashCode5 = (hashCode4 + (num != null ? num.hashCode() : 0)) * 31;
        Integer num2 = this.seasonIdx;
        int hashCode6 = (hashCode5 + (num2 != null ? num2.hashCode() : 0)) * 31;
        PlayedVideoType playedVideoType = this.type;
        if (playedVideoType != null) {
            i2 = playedVideoType.hashCode();
        }
        int i3 = (hashCode6 + i2) * 31;
        boolean z = this.isLive;
        if (z) {
            z = true;
        }
        long j2 = this.date;
        return ((i3 + (z ? 1 : 0)) * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    public final boolean isLive() {
        return this.isLive;
    }

    public String toString() {
        return "PlayedVideoModel(entityId=" + this.entityId + ", title=" + this.title + ", cover=" + this.cover + ", serialId=" + this.serialId + ", episodeIdx=" + this.episodeIdx + ", seasonIdx=" + this.seasonIdx + ", type=" + this.type + ", isLive=" + this.isLive + ", date=" + this.date + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PlayedVideoModel(String str, String str2, String str3, String str4, Integer num, Integer num2, PlayedVideoType playedVideoType, boolean z, long j2, int i2, f fVar) {
        this(str, str2, str3, str4, num, num2, playedVideoType, z, (i2 & 256) != 0 ? System.currentTimeMillis() : j2);
    }
}
