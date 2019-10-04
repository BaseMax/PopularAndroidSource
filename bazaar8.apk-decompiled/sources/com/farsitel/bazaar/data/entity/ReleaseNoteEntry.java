package com.farsitel.bazaar.data.entity;

import h.f.b.f;
import h.f.b.j;

/* compiled from: ReleaseNote.kt */
public final class ReleaseNoteEntry {
    public final ReleaseNoteEntryType releaseNoteType;
    public final int value;

    public ReleaseNoteEntry(int i2, ReleaseNoteEntryType releaseNoteEntryType) {
        j.b(releaseNoteEntryType, "releaseNoteType");
        this.value = i2;
        this.releaseNoteType = releaseNoteEntryType;
    }

    public final ReleaseNoteEntryType getReleaseNoteType() {
        return this.releaseNoteType;
    }

    public final int getValue() {
        return this.value;
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ReleaseNoteEntry(int i2, ReleaseNoteEntryType releaseNoteEntryType, int i3, f fVar) {
        this(i2, (i3 & 2) != 0 ? ReleaseNoteEntryType.APP : releaseNoteEntryType);
    }
}
