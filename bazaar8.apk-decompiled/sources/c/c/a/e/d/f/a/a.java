package c.c.a.e.d.f.a;

import c.e.d.a.c;
import com.farsitel.bazaar.data.dto.responsedto.PageRowDto;
import h.f.b.j;
import java.util.List;

/* compiled from: BoughtVideoDto.kt */
public final class a {
    @c("rows")
    public final List<PageRowDto> pageRows;

    public final List<PageRowDto> a() {
        return this.pageRows;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof a) && j.a((Object) this.pageRows, (Object) ((a) obj).pageRows));
    }

    public int hashCode() {
        List<PageRowDto> list = this.pageRows;
        if (list != null) {
            return list.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "BoughtVideoDto(pageRows=" + this.pageRows + ")";
    }
}
