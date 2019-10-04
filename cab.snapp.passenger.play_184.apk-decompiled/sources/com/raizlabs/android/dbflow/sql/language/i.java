package com.raizlabs.android.dbflow.sql.language;

import android.database.Cursor;
import com.raizlabs.android.dbflow.c.a;
import com.raizlabs.android.dbflow.c.d;
import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.structure.b;
import com.raizlabs.android.dbflow.structure.b.j;
import java.util.ArrayList;
import java.util.List;

public final class i<TModel> implements d<TModel> {

    /* renamed from: a  reason: collision with root package name */
    private final b<TModel> f5169a;

    /* renamed from: b  reason: collision with root package name */
    private j f5170b;

    i(Class<TModel> cls, Cursor cursor) {
        if (cursor != null) {
            this.f5170b = j.from(cursor);
        }
        this.f5169a = FlowManager.getInstanceAdapter(cls);
    }

    public final void swapCursor(j jVar) {
        j jVar2 = this.f5170b;
        if (jVar2 != null && !jVar2.isClosed()) {
            this.f5170b.close();
        }
        this.f5170b = jVar;
    }

    public final List<TModel> toList() {
        return this.f5170b != null ? this.f5169a.getListModelLoader().convertToData(this.f5170b, (List) null) : new ArrayList();
    }

    public final List<TModel> toListClose() {
        List<TModel> load = this.f5170b != null ? this.f5169a.getListModelLoader().load(this.f5170b) : new ArrayList<>();
        close();
        return load;
    }

    public final <TCustom> List<TCustom> toCustomList(Class<TCustom> cls) {
        return this.f5170b != null ? FlowManager.getQueryModelAdapter(cls).getListModelLoader().convertToData(this.f5170b, (List) null) : new ArrayList();
    }

    public final <TCustom> List<TCustom> toCustomListClose(Class<TCustom> cls) {
        List<TCustom> load = this.f5170b != null ? FlowManager.getQueryModelAdapter(cls).getListModelLoader().load(this.f5170b) : new ArrayList<>();
        close();
        return load;
    }

    public final TModel toModel() {
        if (this.f5170b != null) {
            return this.f5169a.getSingleModelLoader().convertToData(this.f5170b, null);
        }
        return null;
    }

    public final TModel toModelClose() {
        TModel load = this.f5170b != null ? this.f5169a.getSingleModelLoader().load(this.f5170b) : null;
        close();
        return load;
    }

    /* JADX WARNING: type inference failed for: r3v0, types: [java.lang.Class<TCustom>, java.lang.Class] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final <TCustom> TCustom toCustomModel(java.lang.Class<TCustom> r3) {
        /*
            r2 = this;
            com.raizlabs.android.dbflow.structure.b.j r0 = r2.f5170b
            r1 = 0
            if (r0 == 0) goto L_0x0014
            com.raizlabs.android.dbflow.structure.h r3 = com.raizlabs.android.dbflow.config.FlowManager.getQueryModelAdapter(r3)
            com.raizlabs.android.dbflow.sql.b.f r3 = r3.getSingleModelLoader()
            com.raizlabs.android.dbflow.structure.b.j r0 = r2.f5170b
            java.lang.Object r3 = r3.convertToData(r0, r1)
            return r3
        L_0x0014:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.raizlabs.android.dbflow.sql.language.i.toCustomModel(java.lang.Class):java.lang.Object");
    }

    public final <TCustom> TCustom toCustomModelClose(Class<TCustom> cls) {
        TCustom load = this.f5170b != null ? FlowManager.getQueryModelAdapter(cls).getSingleModelLoader().load(this.f5170b) : null;
        close();
        return load;
    }

    public final TModel getItem(long j) {
        j jVar = this.f5170b;
        if (jVar == null || !jVar.moveToPosition((int) j)) {
            return null;
        }
        return this.f5169a.getSingleModelLoader().convertToData(this.f5170b, null, false);
    }

    public final a<TModel> iterator() {
        return new a<>(this);
    }

    public final a<TModel> iterator(int i, long j) {
        return new a<>(this, i, j);
    }

    public final long getCount() {
        j jVar = this.f5170b;
        if (jVar == null) {
            return 0;
        }
        return (long) jVar.getCount();
    }

    public final Cursor cursor() {
        return this.f5170b;
    }

    public final void close() {
        j jVar = this.f5170b;
        if (jVar != null) {
            jVar.close();
        }
    }
}
