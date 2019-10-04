package c.c.a.e.f;

import com.farsitel.bazaar.common.model.VideoDownloadServerState;
import h.f.b.f;
import h.f.b.j;

/* compiled from: ConverterVideoServerState.kt */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final a f5437a = new a(null);

    /* compiled from: ConverterVideoServerState.kt */
    public static final class a {
        public a() {
        }

        public final VideoDownloadServerState a(int i2) {
            return VideoDownloadServerState.values()[i2];
        }

        public /* synthetic */ a(f fVar) {
            this();
        }

        public final Integer a(VideoDownloadServerState videoDownloadServerState) {
            j.b(videoDownloadServerState, "state");
            return Integer.valueOf(videoDownloadServerState.ordinal());
        }
    }

    public static final VideoDownloadServerState a(int i2) {
        return f5437a.a(i2);
    }

    public static final Integer a(VideoDownloadServerState videoDownloadServerState) {
        return f5437a.a(videoDownloadServerState);
    }
}
