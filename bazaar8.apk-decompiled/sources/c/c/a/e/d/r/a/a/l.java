package c.c.a.e.d.r.a.a;

import com.farsitel.bazaar.data.entity.EntityDatabaseStatus;
import h.f.b.f;
import h.f.b.j;

/* compiled from: CommentActionEntity.kt */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public final Long f5350a;

    /* renamed from: b  reason: collision with root package name */
    public final int f5351b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f5352c;

    /* renamed from: d  reason: collision with root package name */
    public final int f5353d;

    /* renamed from: e  reason: collision with root package name */
    public final String f5354e;

    /* renamed from: f  reason: collision with root package name */
    public EntityDatabaseStatus f5355f;

    public l(Long l2, int i2, boolean z, int i3, String str, EntityDatabaseStatus entityDatabaseStatus) {
        j.b(str, "commentActionName");
        j.b(entityDatabaseStatus, "entityDatabaseStatus");
        this.f5350a = l2;
        this.f5351b = i2;
        this.f5352c = z;
        this.f5353d = i3;
        this.f5354e = str;
        this.f5355f = entityDatabaseStatus;
    }

    public final String a() {
        return this.f5354e;
    }

    public final EntityDatabaseStatus b() {
        return this.f5355f;
    }

    public final int c() {
        return this.f5353d;
    }

    public final Long d() {
        return this.f5350a;
    }

    public final int e() {
        return this.f5351b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof l) {
                l lVar = (l) obj;
                if (j.a((Object) this.f5350a, (Object) lVar.f5350a)) {
                    if (this.f5351b == lVar.f5351b) {
                        if (this.f5352c == lVar.f5352c) {
                            if (!(this.f5353d == lVar.f5353d) || !j.a((Object) this.f5354e, (Object) lVar.f5354e) || !j.a((Object) this.f5355f, (Object) lVar.f5355f)) {
                                return false;
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final boolean f() {
        return this.f5352c;
    }

    public int hashCode() {
        Long l2 = this.f5350a;
        int i2 = 0;
        int hashCode = (((l2 != null ? l2.hashCode() : 0) * 31) + this.f5351b) * 31;
        boolean z = this.f5352c;
        if (z) {
            z = true;
        }
        int i3 = (((hashCode + (z ? 1 : 0)) * 31) + this.f5353d) * 31;
        String str = this.f5354e;
        int hashCode2 = (i3 + (str != null ? str.hashCode() : 0)) * 31;
        EntityDatabaseStatus entityDatabaseStatus = this.f5355f;
        if (entityDatabaseStatus != null) {
            i2 = entityDatabaseStatus.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "LocalCommentActionEntity(id=" + this.f5350a + ", reviewId=" + this.f5351b + ", isReply=" + this.f5352c + ", entityType=" + this.f5353d + ", commentActionName=" + this.f5354e + ", entityDatabaseStatus=" + this.f5355f + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ l(Long l2, int i2, boolean z, int i3, String str, EntityDatabaseStatus entityDatabaseStatus, int i4, f fVar) {
        this((i4 & 1) != 0 ? null : l2, i2, z, i3, str, (i4 & 32) != 0 ? EntityDatabaseStatus.PENDING : entityDatabaseStatus);
    }

    public final void a(EntityDatabaseStatus entityDatabaseStatus) {
        j.b(entityDatabaseStatus, "<set-?>");
        this.f5355f = entityDatabaseStatus;
    }
}
