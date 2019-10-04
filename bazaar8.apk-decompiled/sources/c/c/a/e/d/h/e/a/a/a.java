package c.c.a.e.d.h.e.a.a;

import androidx.lifecycle.LiveData;
import com.farsitel.bazaar.common.model.VideoDownloadServerState;
import com.farsitel.bazaar.data.entity.DownloadedVideoEntity;
import java.util.List;

/* compiled from: DownloadedVideoDao.kt */
public interface a {

    /* renamed from: c.c.a.e.d.h.e.a.a.a$a  reason: collision with other inner class name */
    /* compiled from: DownloadedVideoDao.kt */
    public static final class C0080a {
        public static /* synthetic */ LiveData a(a aVar, long j2, int i2, Object obj) {
            if (obj == null) {
                if ((i2 & 1) != 0) {
                    j2 = System.currentTimeMillis();
                }
                return aVar.a(j2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getAll");
        }

        public static /* synthetic */ List b(a aVar, long j2, int i2, Object obj) {
            if (obj == null) {
                if ((i2 & 1) != 0) {
                    j2 = System.currentTimeMillis();
                }
                return aVar.b(j2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getAllExpireVideo");
        }
    }

    LiveData<List<DownloadedVideoEntity>> a(long j2);

    void a(DownloadedVideoEntity downloadedVideoEntity);

    void a(String str);

    void a(String str, VideoDownloadServerState videoDownloadServerState);

    void a(List<DownloadedVideoEntity> list);

    DownloadedVideoEntity b(String str);

    List<String> b(long j2);

    LiveData<DownloadedVideoEntity> c(String str);
}
