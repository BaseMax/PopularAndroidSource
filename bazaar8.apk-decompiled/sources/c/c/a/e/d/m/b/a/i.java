package c.c.a.e.d.m.b.a;

import c.c.a.c.f.a.h;
import c.e.d.a.c;

@h("singleRequest.getTransactionsRequest")
/* compiled from: GetTransactionsRequestDto.kt */
public final class i {
    @c("limit")
    public final int limit;
    @c("offset")
    public final int offset;

    public i(int i2, int i3) {
        this.offset = i2;
        this.limit = i3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof i) {
                i iVar = (i) obj;
                if (this.offset == iVar.offset) {
                    if (this.limit == iVar.limit) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        return (this.offset * 31) + this.limit;
    }

    public String toString() {
        return "GetTransactionsRequestDto(offset=" + this.offset + ", limit=" + this.limit + ")";
    }
}
