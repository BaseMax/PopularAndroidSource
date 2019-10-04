package com.farsitel.bazaar.ui.reviews.thirdparty;

import h.f.b.j;
import java.io.Serializable;

/* compiled from: ThirdPartyPendingResult.kt */
public final class ThirdPartyPendingResult implements Serializable {
    public final String comment;
    public final int rate;

    public ThirdPartyPendingResult(int i2, String str) {
        j.b(str, "comment");
        this.rate = i2;
        this.comment = str;
    }

    public final String a() {
        return this.comment;
    }

    public final int b() {
        return this.rate;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ThirdPartyPendingResult) {
                ThirdPartyPendingResult thirdPartyPendingResult = (ThirdPartyPendingResult) obj;
                if (!(this.rate == thirdPartyPendingResult.rate) || !j.a((Object) this.comment, (Object) thirdPartyPendingResult.comment)) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        int a2 = Integer.valueOf(this.rate).hashCode() * 31;
        String str = this.comment;
        return a2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "ThirdPartyPendingResult(rate=" + this.rate + ", comment=" + this.comment + ")";
    }
}
