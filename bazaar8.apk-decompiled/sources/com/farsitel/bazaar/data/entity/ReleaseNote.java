package com.farsitel.bazaar.data.entity;

import h.f.b.j;
import java.util.List;

/* compiled from: ReleaseNote.kt */
public final class ReleaseNote {
    public final List<ReleaseNoteEntry> releaseNotes;
    public final int releaseVersionCode;
    public final int releaseVersionName;

    public ReleaseNote(int i2, int i3, List<ReleaseNoteEntry> list) {
        j.b(list, "releaseNotes");
        this.releaseVersionCode = i2;
        this.releaseVersionName = i3;
        this.releaseNotes = list;
    }

    public final List<ReleaseNoteEntry> getReleaseNotes() {
        return this.releaseNotes;
    }

    public final int getReleaseVersionCode() {
        return this.releaseVersionCode;
    }

    public final int getReleaseVersionName() {
        return this.releaseVersionName;
    }
}
