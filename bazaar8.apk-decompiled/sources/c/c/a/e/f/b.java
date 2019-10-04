package c.c.a.e.f;

import com.farsitel.bazaar.data.feature.bookmark.local.BookmarkStatus;
import h.f.b.f;
import h.f.b.j;

/* compiled from: BookmarkStatusMapper.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final a f5435a = new a(null);

    /* compiled from: BookmarkStatusMapper.kt */
    public static final class a {
        public a() {
        }

        public final BookmarkStatus a(int i2) {
            return BookmarkStatus.Companion.a(i2);
        }

        public /* synthetic */ a(f fVar) {
            this();
        }

        public final Integer a(BookmarkStatus bookmarkStatus) {
            j.b(bookmarkStatus, "status");
            return Integer.valueOf(bookmarkStatus.f());
        }
    }

    public static final BookmarkStatus a(int i2) {
        return f5435a.a(i2);
    }

    public static final Integer a(BookmarkStatus bookmarkStatus) {
        return f5435a.a(bookmarkStatus);
    }
}
