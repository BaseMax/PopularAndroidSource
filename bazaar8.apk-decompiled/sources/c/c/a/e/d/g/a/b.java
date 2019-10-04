package c.c.a.e.d.g.a;

import c.e.d.a.c;
import h.f.b.j;

/* compiled from: CategoryResponseDto.kt */
public final class b {
    @c("game")
    public final Boolean game;
    @c("id")
    public final int id;
    @c("image")
    public final String imageUrl;
    @c("name")
    public final String name;
    @c("referrerList")
    public final String referrer;
    @c("slug")
    public final String slug;

    public final Boolean a() {
        return this.game;
    }

    public final int b() {
        return this.id;
    }

    public final String c() {
        return this.imageUrl;
    }

    public final String d() {
        return this.name;
    }

    public final String e() {
        return this.referrer;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                if (!(this.id == bVar.id) || !j.a((Object) this.name, (Object) bVar.name) || !j.a((Object) this.imageUrl, (Object) bVar.imageUrl) || !j.a((Object) this.game, (Object) bVar.game) || !j.a((Object) this.slug, (Object) bVar.slug) || !j.a((Object) this.referrer, (Object) bVar.referrer)) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public final String f() {
        return this.slug;
    }

    public int hashCode() {
        int i2 = this.id * 31;
        String str = this.name;
        int i3 = 0;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.imageUrl;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        Boolean bool = this.game;
        int hashCode3 = (hashCode2 + (bool != null ? bool.hashCode() : 0)) * 31;
        String str3 = this.slug;
        int hashCode4 = (hashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.referrer;
        if (str4 != null) {
            i3 = str4.hashCode();
        }
        return hashCode4 + i3;
    }

    public String toString() {
        return "CategoryDto(id=" + this.id + ", name=" + this.name + ", imageUrl=" + this.imageUrl + ", game=" + this.game + ", slug=" + this.slug + ", referrer=" + this.referrer + ")";
    }
}
