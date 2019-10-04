package c.c.a.e.d.h.d.b;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.cinema.SeriesSeason;
import h.f.b.j;

/* compiled from: ResponseDto.kt */
public final class e {
    @c("index")
    public final int index;
    @c("title")
    public final String title;

    public final SeriesSeason a() {
        return new SeriesSeason(this.index, this.title);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof e) {
                e eVar = (e) obj;
                if (!(this.index == eVar.index) || !j.a((Object) this.title, (Object) eVar.title)) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i2 = this.index * 31;
        String str = this.title;
        return i2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "SeasonDto(index=" + this.index + ", title=" + this.title + ")";
    }
}
