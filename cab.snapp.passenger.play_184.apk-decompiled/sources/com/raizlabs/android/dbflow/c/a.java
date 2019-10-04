package com.raizlabs.android.dbflow.c;

import android.database.Cursor;
import java.util.ConcurrentModificationException;
import java.util.ListIterator;

public final class a<TModel> implements AutoCloseable, ListIterator<TModel> {

    /* renamed from: a  reason: collision with root package name */
    private final d<TModel> f5093a;

    /* renamed from: b  reason: collision with root package name */
    private long f5094b;
    private long c;
    private long d;

    public a(d<TModel> dVar) {
        this(dVar, 0, dVar.getCount());
    }

    public a(d<TModel> dVar, int i) {
        this(dVar, i, dVar.getCount() - ((long) i));
    }

    public a(d<TModel> dVar, int i, long j) {
        this.f5093a = dVar;
        this.d = j;
        Cursor cursor = dVar.cursor();
        if (cursor != null) {
            if (this.d > ((long) (cursor.getCount() - i))) {
                this.d = (long) (cursor.getCount() - i);
            }
            cursor.moveToPosition(i - 1);
            this.c = dVar.getCount();
            this.f5094b = this.d;
            this.f5094b -= (long) i;
            if (this.f5094b < 0) {
                this.f5094b = 0;
            }
        }
    }

    public final void close() throws Exception {
        this.f5093a.close();
    }

    public final void add(TModel tmodel) {
        throw new UnsupportedOperationException("Cursor Iterator: Cannot add a model in the iterator");
    }

    public final boolean hasNext() {
        a();
        return this.f5094b > 0;
    }

    public final boolean hasPrevious() {
        a();
        return this.f5094b < this.d;
    }

    public final TModel next() {
        a();
        TModel item = this.f5093a.getItem(this.d - this.f5094b);
        this.f5094b--;
        return item;
    }

    public final int nextIndex() {
        return (int) (this.f5094b + 1);
    }

    public final TModel previous() {
        a();
        TModel item = this.f5093a.getItem(this.d - this.f5094b);
        this.f5094b++;
        return item;
    }

    public final int previousIndex() {
        return (int) this.f5094b;
    }

    public final void remove() {
        throw new UnsupportedOperationException("Cursor Iterator: cannot remove from an active Iterator ");
    }

    public final void set(TModel tmodel) {
        throw new UnsupportedOperationException("Cursor Iterator: cannot set on an active Iterator ");
    }

    private void a() {
        if (this.c != this.f5093a.getCount()) {
            throw new ConcurrentModificationException("Cannot change Cursor data during iteration.");
        }
    }
}
