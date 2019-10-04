package com.farsitel.bazaar.ui.changelog;

import com.farsitel.bazaar.data.entity.ReleaseNoteEntryType;
import h.f.b.j;

/* compiled from: ReleaseNoteItem.kt */
public final class ReleaseNoteHeaderItem extends ReleaseNoteItem {
    public final String value;
    public final int viewType;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ReleaseNoteHeaderItem(String str, ReleaseNoteEntryType releaseNoteEntryType) {
        super(null);
        j.b(str, "value");
        j.b(releaseNoteEntryType, "releaseNoteEntryType");
        this.value = str;
        this.viewType = (releaseNoteEntryType == ReleaseNoteEntryType.APP ? ReleaseNoteType.HEADER : ReleaseNoteType.INDENT_HEADER).ordinal();
    }

    public final String a() {
        return this.value;
    }

    public int getViewType() {
        return this.viewType;
    }
}
