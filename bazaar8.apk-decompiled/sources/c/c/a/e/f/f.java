package c.c.a.e.f;

import com.farsitel.bazaar.data.entity.EntityType;
import h.f.b.j;

/* compiled from: EntityTypeMapper.kt */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f5439a = new a(null);

    /* compiled from: EntityTypeMapper.kt */
    public static final class a {
        public a() {
        }

        public final EntityType a(int i2) {
            return EntityType.values()[i2];
        }

        public /* synthetic */ a(h.f.b.f fVar) {
            this();
        }

        public final Integer a(EntityType entityType) {
            j.b(entityType, "entityType");
            return Integer.valueOf(entityType.ordinal());
        }
    }

    public static final EntityType a(int i2) {
        return f5439a.a(i2);
    }

    public static final Integer a(EntityType entityType) {
        return f5439a.a(entityType);
    }
}
