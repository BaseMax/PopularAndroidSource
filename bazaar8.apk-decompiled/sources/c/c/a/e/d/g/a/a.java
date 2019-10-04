package c.c.a.e.d.g.a;

import c.e.d.a.c;
import h.f.b.j;
import java.util.List;

/* compiled from: CategoryResponseDto.kt */
public final class a {
    @c("categories")
    public final List<b> categories;

    public final List<b> a() {
        return this.categories;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof a) && j.a((Object) this.categories, (Object) ((a) obj).categories));
    }

    public int hashCode() {
        List<b> list = this.categories;
        if (list != null) {
            return list.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "CategoriesResponseDto(categories=" + this.categories + ")";
    }
}
