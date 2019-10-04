package c.c.a.e.d.h.e.b;

import c.e.d.a.c;
import c.e.d.p;
import com.farsitel.bazaar.common.model.cinema.RefreshData;
import h.f.b.j;

/* compiled from: ResponseDto.kt */
public final class g {
    @c("rate")
    public final int rate;
    @c("vendorData")
    public final p vendorData;

    public final RefreshData a() {
        return new RefreshData(this.rate, String.valueOf(this.vendorData));
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof g) {
                g gVar = (g) obj;
                if (!(this.rate == gVar.rate) || !j.a((Object) this.vendorData, (Object) gVar.vendorData)) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i2 = this.rate * 31;
        p pVar = this.vendorData;
        return i2 + (pVar != null ? pVar.hashCode() : 0);
    }

    public String toString() {
        return "RefreshDataDto(rate=" + this.rate + ", vendorData=" + this.vendorData + ")";
    }
}
