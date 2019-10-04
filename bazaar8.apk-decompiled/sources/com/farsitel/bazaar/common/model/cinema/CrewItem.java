package com.farsitel.bazaar.common.model.cinema;

import com.farsitel.bazaar.common.model.RecyclerData;
import java.util.List;

/* compiled from: ViewHolderItem.kt */
public final class CrewItem implements RecyclerData {
    public final List<PersonModel> persons;
    public final String title;
    public final int viewType = CinemaViewItemType.CREW_ITEM.ordinal();

    public CrewItem(String str, List<PersonModel> list) {
        this.title = str;
        this.persons = list;
    }

    public static /* synthetic */ CrewItem copy$default(CrewItem crewItem, String str, List<PersonModel> list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = crewItem.title;
        }
        if ((i2 & 2) != 0) {
            list = crewItem.persons;
        }
        return crewItem.copy(str, list);
    }

    public final String component1() {
        return this.title;
    }

    public final List<PersonModel> component2() {
        return this.persons;
    }

    public final CrewItem copy(String str, List<PersonModel> list) {
        return new CrewItem(str, list);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.persons, (java.lang.Object) r3.persons) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.cinema.CrewItem
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.common.model.cinema.CrewItem r3 = (com.farsitel.bazaar.common.model.cinema.CrewItem) r3
            java.lang.String r0 = r2.title
            java.lang.String r1 = r3.title
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.util.List<com.farsitel.bazaar.common.model.cinema.PersonModel> r0 = r2.persons
            java.util.List<com.farsitel.bazaar.common.model.cinema.PersonModel> r3 = r3.persons
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x001d
            goto L_0x001f
        L_0x001d:
            r3 = 0
            return r3
        L_0x001f:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.cinema.CrewItem.equals(java.lang.Object):boolean");
    }

    public final List<PersonModel> getPersons() {
        return this.persons;
    }

    public final String getTitle() {
        return this.title;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        String str = this.title;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        List<PersonModel> list = this.persons;
        if (list != null) {
            i2 = list.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "CrewItem(title=" + this.title + ", persons=" + this.persons + ")";
    }
}
