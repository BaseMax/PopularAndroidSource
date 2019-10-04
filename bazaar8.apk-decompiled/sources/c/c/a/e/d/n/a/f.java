package c.c.a.e.d.n.a;

import c.c.a.c.d.c;
import c.c.a.c.d.d;
import com.crashlytics.android.answers.SessionEventTransform;
import com.farsitel.bazaar.common.model.PlayedVideoModel;
import com.farsitel.bazaar.common.model.PlayedVideoType;
import com.farsitel.bazaar.common.model.ShortInfo;
import com.farsitel.bazaar.common.model.cinema.PlayedVideoDetails;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.MovieItem;
import h.f.b.j;
import kotlin.NoWhenBranchMatchedException;

/* compiled from: PlayedVideoEntity.kt */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f5303a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final String f5304b;

    /* renamed from: c  reason: collision with root package name */
    public final String f5305c;

    /* renamed from: d  reason: collision with root package name */
    public final String f5306d;

    /* renamed from: e  reason: collision with root package name */
    public final String f5307e;

    /* renamed from: f  reason: collision with root package name */
    public final Integer f5308f;

    /* renamed from: g  reason: collision with root package name */
    public final Integer f5309g;

    /* renamed from: h  reason: collision with root package name */
    public final PlayedVideoType f5310h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f5311i;

    /* renamed from: j  reason: collision with root package name */
    public final long f5312j;

    /* renamed from: k  reason: collision with root package name */
    public final String f5313k;

    /* renamed from: l  reason: collision with root package name */
    public final String f5314l;

    /* compiled from: PlayedVideoEntity.kt */
    public static final class a {
        public a() {
        }

        public final f a(PlayedVideoModel playedVideoModel, PlayedVideoDetails playedVideoDetails) {
            j.b(playedVideoModel, "playedVideoModel");
            j.b(playedVideoDetails, "playedVideoInfoDetails");
            String entityId = playedVideoModel.getEntityId();
            String title = playedVideoDetails.getTitle();
            String cover = playedVideoModel.getCover();
            String serialId = playedVideoModel.getSerialId();
            Integer seasonIdx = playedVideoModel.getSeasonIdx();
            Integer seasonIdx2 = playedVideoModel.getSeasonIdx();
            PlayedVideoType type = playedVideoModel.getType();
            boolean isLive = playedVideoModel.isLive();
            long date = playedVideoModel.getDate();
            ShortInfo shortInfo = playedVideoDetails.getShortInfo();
            String str = null;
            String info = shortInfo != null ? shortInfo.getInfo() : null;
            ShortInfo shortInfo2 = playedVideoDetails.getShortInfo();
            if (shortInfo2 != null) {
                str = shortInfo2.getMoreInfo();
            }
            f fVar = new f(entityId, title, cover, serialId, seasonIdx, seasonIdx2, type, isLive, date, info, str);
            return fVar;
        }

        public /* synthetic */ a(h.f.b.f fVar) {
            this();
        }
    }

    public f(String str, String str2, String str3, String str4, Integer num, Integer num2, PlayedVideoType playedVideoType, boolean z, long j2, String str5, String str6) {
        j.b(str, "entityId");
        j.b(str2, "title");
        j.b(playedVideoType, SessionEventTransform.TYPE_KEY);
        this.f5304b = str;
        this.f5305c = str2;
        this.f5306d = str3;
        this.f5307e = str4;
        this.f5308f = num;
        this.f5309g = num2;
        this.f5310h = playedVideoType;
        this.f5311i = z;
        this.f5312j = j2;
        this.f5313k = str5;
        this.f5314l = str6;
    }

    public final String a() {
        return this.f5306d;
    }

    public final long b() {
        return this.f5312j;
    }

    public final String c() {
        return this.f5304b;
    }

    public final Integer d() {
        return this.f5308f;
    }

    public final String e() {
        return this.f5314l;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof f) {
                f fVar = (f) obj;
                if (j.a((Object) this.f5304b, (Object) fVar.f5304b) && j.a((Object) this.f5305c, (Object) fVar.f5305c) && j.a((Object) this.f5306d, (Object) fVar.f5306d) && j.a((Object) this.f5307e, (Object) fVar.f5307e) && j.a((Object) this.f5308f, (Object) fVar.f5308f) && j.a((Object) this.f5309g, (Object) fVar.f5309g) && j.a((Object) this.f5310h, (Object) fVar.f5310h)) {
                    if (this.f5311i == fVar.f5311i) {
                        if (!(this.f5312j == fVar.f5312j) || !j.a((Object) this.f5313k, (Object) fVar.f5313k) || !j.a((Object) this.f5314l, (Object) fVar.f5314l)) {
                            return false;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String f() {
        return this.f5313k;
    }

    public final Integer g() {
        return this.f5309g;
    }

    public final String h() {
        return this.f5307e;
    }

    public int hashCode() {
        String str = this.f5304b;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f5305c;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f5306d;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.f5307e;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        Integer num = this.f5308f;
        int hashCode5 = (hashCode4 + (num != null ? num.hashCode() : 0)) * 31;
        Integer num2 = this.f5309g;
        int hashCode6 = (hashCode5 + (num2 != null ? num2.hashCode() : 0)) * 31;
        PlayedVideoType playedVideoType = this.f5310h;
        int hashCode7 = (hashCode6 + (playedVideoType != null ? playedVideoType.hashCode() : 0)) * 31;
        boolean z = this.f5311i;
        if (z) {
            z = true;
        }
        long j2 = this.f5312j;
        int i3 = (((hashCode7 + (z ? 1 : 0)) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        String str5 = this.f5313k;
        int hashCode8 = (i3 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.f5314l;
        if (str6 != null) {
            i2 = str6.hashCode();
        }
        return hashCode8 + i2;
    }

    public final String i() {
        return this.f5305c;
    }

    public final PlayedVideoType j() {
        return this.f5310h;
    }

    public final boolean k() {
        return this.f5311i;
    }

    public final ListItem l() {
        int i2 = g.f5315a[this.f5310h.ordinal()];
        if (i2 == 1) {
            MovieItem.VideoItem videoItem = new MovieItem.VideoItem(this.f5304b, this.f5305c, this.f5313k, this.f5314l, null, 0, null, false, this.f5311i, this.f5306d, d.a(new c.i(), null, 1, null), false, 2048, null);
            return new ListItem.Video(videoItem, false);
        } else if (i2 == 2) {
            String str = this.f5307e;
            if (str != null) {
                String str2 = this.f5304b;
                Integer num = this.f5308f;
                Integer num2 = this.f5309g;
                String str3 = this.f5306d;
                String str4 = this.f5305c;
                ShortInfo shortInfo = r2;
                ShortInfo shortInfo2 = new ShortInfo(this.f5313k, this.f5314l);
                MovieItem.EpisodeItem episodeItem = r5;
                MovieItem.EpisodeItem episodeItem2 = new MovieItem.EpisodeItem(str, str2, num, num2, str3, str4, 0, null, null, null, false, shortInfo, d.a(new c.i(), null, 1, null), false, 8192, null);
                return new ListItem.Episode(episodeItem, false);
            }
            j.a();
            throw null;
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    public String toString() {
        return "PlayedVideoEntity(entityId=" + this.f5304b + ", title=" + this.f5305c + ", cover=" + this.f5306d + ", serialId=" + this.f5307e + ", episodeIdx=" + this.f5308f + ", seasonIdx=" + this.f5309g + ", type=" + this.f5310h + ", isLive=" + this.f5311i + ", date=" + this.f5312j + ", seasonEpisodeTitle=" + this.f5313k + ", providerName=" + this.f5314l + ")";
    }
}
