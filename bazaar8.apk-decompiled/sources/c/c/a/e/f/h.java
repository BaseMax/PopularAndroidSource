package c.c.a.e.f;

import com.farsitel.bazaar.common.model.PlayedVideoType;
import h.f.b.f;
import h.f.b.j;

/* compiled from: PlayedVideoMapper.kt */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final a f5440a = new a(null);

    /* compiled from: PlayedVideoMapper.kt */
    public static final class a {
        public a() {
        }

        public final PlayedVideoType a(int i2) {
            return PlayedVideoType.values()[i2];
        }

        public /* synthetic */ a(f fVar) {
            this();
        }

        public final Integer a(PlayedVideoType playedVideoType) {
            j.b(playedVideoType, "status");
            return Integer.valueOf(playedVideoType.ordinal());
        }
    }

    public static final PlayedVideoType a(int i2) {
        return f5440a.a(i2);
    }

    public static final Integer a(PlayedVideoType playedVideoType) {
        return f5440a.a(playedVideoType);
    }
}
