package c.c.a.e.f;

import com.farsitel.bazaar.data.entity.EntityDatabaseStatus;
import h.f.b.f;
import h.f.b.j;

/* compiled from: EntityStatusMapper.kt */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final a f5438a = new a(null);

    /* compiled from: EntityStatusMapper.kt */
    public static final class a {
        public a() {
        }

        public final EntityDatabaseStatus a(int i2) {
            return EntityDatabaseStatus.values()[i2];
        }

        public /* synthetic */ a(f fVar) {
            this();
        }

        public final Integer a(EntityDatabaseStatus entityDatabaseStatus) {
            j.b(entityDatabaseStatus, "status");
            return Integer.valueOf(entityDatabaseStatus.ordinal());
        }
    }

    public static final EntityDatabaseStatus a(int i2) {
        return f5438a.a(i2);
    }

    public static final Integer a(EntityDatabaseStatus entityDatabaseStatus) {
        return f5438a.a(entityDatabaseStatus);
    }
}
