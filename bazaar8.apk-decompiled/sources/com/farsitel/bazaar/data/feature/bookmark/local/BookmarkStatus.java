package com.farsitel.bazaar.data.feature.bookmark.local;

import h.f.b.f;

/* compiled from: BookmarkEntity.kt */
public enum BookmarkStatus {
    BOOKMARK(0),
    REMOVE(1);
    
    public static final a Companion = null;
    public final int value;

    /* compiled from: BookmarkEntity.kt */
    public static final class a {
        public a() {
        }

        public final BookmarkStatus a(int i2) {
            if (i2 == 0) {
                return BookmarkStatus.BOOKMARK;
            }
            if (i2 != 1) {
                return BookmarkStatus.BOOKMARK;
            }
            return BookmarkStatus.REMOVE;
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    static {
        Companion = new a(null);
    }

    /* access modifiers changed from: public */
    BookmarkStatus(int i2) {
        this.value = i2;
    }

    public final int f() {
        return this.value;
    }
}
