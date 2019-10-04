package c.c.a.e.d.m.b.b;

import c.c.a.e.j.b;
import c.e.d.a.c;
import java.util.List;

/* compiled from: GetSKUDetailsResponseDto.kt */
public final class j {
    @c("products")
    public final List<a> products;

    /* compiled from: GetSKUDetailsResponseDto.kt */
    public static final class a {
        @c("description")
        public final String description;
        @c("price")
        public final String price;
        @c("productId")
        public final String productId;
        @c("title")
        public final String title;
        @c("type")
        public final String type;

        public String toString() {
            String a2 = b.f5549b.a().a((Object) this);
            h.f.b.j.a((Object) a2, "GSON().toJson(this)");
            return a2;
        }
    }

    public final List<a> a() {
        return this.products;
    }
}
