package c.c.a.e.d.r;

import c.e.d.a.c;
import h.f.b.j;
import java.util.List;

/* compiled from: ReviewDto.kt */
public final class h {
    @c("reviews")
    public final List<b> reviews;

    public final List<b> a() {
        return this.reviews;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof h) && j.a((Object) this.reviews, (Object) ((h) obj).reviews));
    }

    public int hashCode() {
        List<b> list = this.reviews;
        if (list != null) {
            return list.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "ReviewsDto(reviews=" + this.reviews + ")";
    }
}
