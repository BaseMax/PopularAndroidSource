package c.c.a.e.d.h.c.b;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import h.a.m;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: VideoReviewsResponseDto.kt */
public final class e {
    @c("totalCount")
    public final int totalCount;
    @c("comments")
    public final List<a> videoComment;

    public final List<ReviewItem> a() {
        ArrayList arrayList = new ArrayList();
        List<a> list = this.videoComment;
        ArrayList arrayList2 = new ArrayList(m.a(list, 10));
        for (a a2 : list) {
            arrayList2.add(a2.a());
        }
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof e) {
                e eVar = (e) obj;
                if (j.a((Object) this.videoComment, (Object) eVar.videoComment)) {
                    if (this.totalCount == eVar.totalCount) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        List<a> list = this.videoComment;
        return ((list != null ? list.hashCode() : 0) * 31) + this.totalCount;
    }

    public String toString() {
        return "VideoReviewsResponseDto(videoComment=" + this.videoComment + ", totalCount=" + this.totalCount + ")";
    }
}
