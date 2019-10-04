package c.c.a.e.d.c.a;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.appdetail.EditorChoice;
import h.f.b.j;

/* compiled from: AppDetailResponseDto.kt */
public final class k {
    @c("enabled")
    public final boolean enable;
    @c("referrerList")
    public final String referrer;
    @c("slug")
    public final String slug;
    @c("title")
    public final String title;

    public final EditorChoice a() {
        return new EditorChoice(this.enable, this.slug, this.title, this.referrer);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof k) {
                k kVar = (k) obj;
                if (!(this.enable == kVar.enable) || !j.a((Object) this.slug, (Object) kVar.slug) || !j.a((Object) this.title, (Object) kVar.title) || !j.a((Object) this.referrer, (Object) kVar.referrer)) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.enable;
        if (z) {
            z = true;
        }
        int i2 = (z ? 1 : 0) * true;
        String str = this.slug;
        int i3 = 0;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.title;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.referrer;
        if (str3 != null) {
            i3 = str3.hashCode();
        }
        return hashCode2 + i3;
    }

    public String toString() {
        return "EditorChoiceDto(enable=" + this.enable + ", slug=" + this.slug + ", title=" + this.title + ", referrer=" + this.referrer + ")";
    }
}
