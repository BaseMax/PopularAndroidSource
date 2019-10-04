package c.c.a.e.d.d.a;

import c.c.a.c.d.c;
import c.c.a.c.d.d;
import com.farsitel.bazaar.common.model.bookmark.BookmarkModel;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.PageAppItem;
import com.farsitel.bazaar.data.entity.EntityDatabaseStatus;
import com.farsitel.bazaar.data.feature.bookmark.local.BookmarkStatus;
import h.f.b.f;

/* compiled from: BookmarkEntity.kt */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public final String f5050a;

    /* renamed from: b  reason: collision with root package name */
    public final String f5051b;

    /* renamed from: c  reason: collision with root package name */
    public final String f5052c;

    /* renamed from: d  reason: collision with root package name */
    public final int f5053d;

    /* renamed from: e  reason: collision with root package name */
    public final String f5054e;

    /* renamed from: f  reason: collision with root package name */
    public final BookmarkStatus f5055f;

    /* renamed from: g  reason: collision with root package name */
    public EntityDatabaseStatus f5056g;

    public j(String str, String str2, String str3, int i2, String str4, BookmarkStatus bookmarkStatus, EntityDatabaseStatus entityDatabaseStatus) {
        h.f.b.j.b(str, "entityId");
        h.f.b.j.b(str2, "iconUrl");
        h.f.b.j.b(str3, "entityName");
        h.f.b.j.b(bookmarkStatus, "bookmarkStatus");
        h.f.b.j.b(entityDatabaseStatus, "entityDatabaseStatus");
        this.f5050a = str;
        this.f5051b = str2;
        this.f5052c = str3;
        this.f5053d = i2;
        this.f5054e = str4;
        this.f5055f = bookmarkStatus;
        this.f5056g = entityDatabaseStatus;
    }

    public static /* synthetic */ j a(j jVar, String str, String str2, String str3, int i2, String str4, BookmarkStatus bookmarkStatus, EntityDatabaseStatus entityDatabaseStatus, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = jVar.f5050a;
        }
        if ((i3 & 2) != 0) {
            str2 = jVar.f5051b;
        }
        String str5 = str2;
        if ((i3 & 4) != 0) {
            str3 = jVar.f5052c;
        }
        String str6 = str3;
        if ((i3 & 8) != 0) {
            i2 = jVar.f5053d;
        }
        int i4 = i2;
        if ((i3 & 16) != 0) {
            str4 = jVar.f5054e;
        }
        String str7 = str4;
        if ((i3 & 32) != 0) {
            bookmarkStatus = jVar.f5055f;
        }
        BookmarkStatus bookmarkStatus2 = bookmarkStatus;
        if ((i3 & 64) != 0) {
            entityDatabaseStatus = jVar.f5056g;
        }
        return jVar.a(str, str5, str6, i4, str7, bookmarkStatus2, entityDatabaseStatus);
    }

    public final j a(String str, String str2, String str3, int i2, String str4, BookmarkStatus bookmarkStatus, EntityDatabaseStatus entityDatabaseStatus) {
        h.f.b.j.b(str, "entityId");
        h.f.b.j.b(str2, "iconUrl");
        h.f.b.j.b(str3, "entityName");
        h.f.b.j.b(bookmarkStatus, "bookmarkStatus");
        EntityDatabaseStatus entityDatabaseStatus2 = entityDatabaseStatus;
        h.f.b.j.b(entityDatabaseStatus2, "entityDatabaseStatus");
        j jVar = new j(str, str2, str3, i2, str4, bookmarkStatus, entityDatabaseStatus2);
        return jVar;
    }

    public final BookmarkStatus a() {
        return this.f5055f;
    }

    public final EntityDatabaseStatus b() {
        return this.f5056g;
    }

    public final String c() {
        return this.f5050a;
    }

    public final String d() {
        return this.f5052c;
    }

    public final String e() {
        return this.f5051b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof j) {
                j jVar = (j) obj;
                if (h.f.b.j.a((Object) this.f5050a, (Object) jVar.f5050a) && h.f.b.j.a((Object) this.f5051b, (Object) jVar.f5051b) && h.f.b.j.a((Object) this.f5052c, (Object) jVar.f5052c)) {
                    if (!(this.f5053d == jVar.f5053d) || !h.f.b.j.a((Object) this.f5054e, (Object) jVar.f5054e) || !h.f.b.j.a((Object) this.f5055f, (Object) jVar.f5055f) || !h.f.b.j.a((Object) this.f5056g, (Object) jVar.f5056g)) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int f() {
        return this.f5053d;
    }

    public final String g() {
        return this.f5054e;
    }

    public final BookmarkModel h() {
        BookmarkModel bookmarkModel = new BookmarkModel(this.f5050a, this.f5051b, this.f5052c, this.f5055f == BookmarkStatus.BOOKMARK, this.f5053d, this.f5054e);
        return bookmarkModel;
    }

    public int hashCode() {
        String str = this.f5050a;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f5051b;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f5052c;
        int hashCode3 = (((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.f5053d) * 31;
        String str4 = this.f5054e;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        BookmarkStatus bookmarkStatus = this.f5055f;
        int hashCode5 = (hashCode4 + (bookmarkStatus != null ? bookmarkStatus.hashCode() : 0)) * 31;
        EntityDatabaseStatus entityDatabaseStatus = this.f5056g;
        if (entityDatabaseStatus != null) {
            i2 = entityDatabaseStatus.hashCode();
        }
        return hashCode5 + i2;
    }

    public final ListItem.App i() {
        PageAppItem pageAppItem = new PageAppItem(this.f5050a, this.f5052c, null, null, null, this.f5053d, this.f5054e, null, true, null, false, null, null, null, true, d.a(new c.C0071c(), null, 1, null), null, null, null, null, null, 1966080, null);
        ListItem.App app = new ListItem.App(pageAppItem, false, false, 4, null);
        return app;
    }

    public String toString() {
        return "BookmarkEntity(entityId=" + this.f5050a + ", iconUrl=" + this.f5051b + ", entityName=" + this.f5052c + ", price=" + this.f5053d + ", priceString=" + this.f5054e + ", bookmarkStatus=" + this.f5055f + ", entityDatabaseStatus=" + this.f5056g + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j(String str, String str2, String str3, int i2, String str4, BookmarkStatus bookmarkStatus, EntityDatabaseStatus entityDatabaseStatus, int i3, f fVar) {
        this(str, str2, str3, i2, str4, bookmarkStatus, (i3 & 64) != 0 ? EntityDatabaseStatus.PENDING : entityDatabaseStatus);
    }

    public final void a(EntityDatabaseStatus entityDatabaseStatus) {
        h.f.b.j.b(entityDatabaseStatus, "<set-?>");
        this.f5056g = entityDatabaseStatus;
    }
}
