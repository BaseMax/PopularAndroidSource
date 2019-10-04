package com.farsitel.bazaar.ui.search;

import h.f.b.f;
import h.k.m;

/* compiled from: SearchHistoryItem.kt */
public enum SearchHistoryType {
    HISTORY,
    NONE;
    
    public static final a Companion = null;

    /* compiled from: SearchHistoryItem.kt */
    public static final class a {
        public a() {
        }

        public final SearchHistoryType a(String str) {
            if (str == null) {
                return SearchHistoryType.NONE;
            }
            for (SearchHistoryType searchHistoryType : SearchHistoryType.values()) {
                if (m.b(str, searchHistoryType.name(), true)) {
                    return searchHistoryType;
                }
            }
            return SearchHistoryType.NONE;
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    static {
        Companion = new a(null);
    }
}
