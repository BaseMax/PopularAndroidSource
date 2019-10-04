package c.c.a.e.d.d.a;

import androidx.lifecycle.LiveData;
import com.farsitel.bazaar.data.entity.EntityDatabaseStatus;
import com.farsitel.bazaar.data.feature.bookmark.local.BookmarkStatus;
import java.util.List;

/* compiled from: BookmarkDao.kt */
public interface a {

    /* renamed from: c.c.a.e.d.d.a.a$a  reason: collision with other inner class name */
    /* compiled from: BookmarkDao.kt */
    public static final class C0079a {
        public static /* synthetic */ LiveData a(a aVar, BookmarkStatus bookmarkStatus, int i2, Object obj) {
            if (obj == null) {
                if ((i2 & 1) != 0) {
                    bookmarkStatus = BookmarkStatus.BOOKMARK;
                }
                return aVar.a(bookmarkStatus);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getAllBookmarkedApp");
        }
    }

    LiveData<List<j>> a(BookmarkStatus bookmarkStatus);

    j a(String str);

    List<j> a(EntityDatabaseStatus entityDatabaseStatus);

    void a();

    void a(j jVar);

    void a(List<j> list);

    LiveData<String> b(String str);

    void b(j jVar);

    void c(String str);
}
