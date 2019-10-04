package c.c.a.e.d.h.d.a.a;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.data.dto.responsedto.PageRowDto;
import h.a.l;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;

/* compiled from: ResponseDto.kt */
public final class j {
    @c("background")
    public final String background;
    @c("description")
    public final String description;
    @c("rows")
    public final List<PageRowDto> episodeRows;
    @c("referrer")
    public final String referrer;
    @c("seasonEpisodesCount")
    public final int seasonEpisodesCount;
    @c("textColor")
    public final String textColor;
    @c("title")
    public final String title;

    public final Pair<Integer, List<RecyclerData>> a() {
        List list;
        List<PageRowDto> list2 = this.episodeRows;
        if (!(list2 == null || list2.isEmpty())) {
            list = new ArrayList();
            for (PageRowDto next : this.episodeRows) {
                if (next.notEmptyAtLeastOneField()) {
                    list.addAll(next.toPageTypeItem());
                }
            }
        } else {
            list = l.a();
        }
        return new Pair<>(Integer.valueOf(this.seasonEpisodesCount), list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof j) {
                j jVar = (j) obj;
                if (h.f.b.j.a((Object) this.title, (Object) jVar.title) && h.f.b.j.a((Object) this.description, (Object) jVar.description) && h.f.b.j.a((Object) this.background, (Object) jVar.background) && h.f.b.j.a((Object) this.textColor, (Object) jVar.textColor) && h.f.b.j.a((Object) this.episodeRows, (Object) jVar.episodeRows) && h.f.b.j.a((Object) this.referrer, (Object) jVar.referrer)) {
                    if (this.seasonEpisodesCount == jVar.seasonEpisodesCount) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.title;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.description;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.background;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.textColor;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        List<PageRowDto> list = this.episodeRows;
        int hashCode5 = (hashCode4 + (list != null ? list.hashCode() : 0)) * 31;
        String str5 = this.referrer;
        if (str5 != null) {
            i2 = str5.hashCode();
        }
        return ((hashCode5 + i2) * 31) + this.seasonEpisodesCount;
    }

    public String toString() {
        return "SeasonPageResponseDto(title=" + this.title + ", description=" + this.description + ", background=" + this.background + ", textColor=" + this.textColor + ", episodeRows=" + this.episodeRows + ", referrer=" + this.referrer + ", seasonEpisodesCount=" + this.seasonEpisodesCount + ")";
    }
}
