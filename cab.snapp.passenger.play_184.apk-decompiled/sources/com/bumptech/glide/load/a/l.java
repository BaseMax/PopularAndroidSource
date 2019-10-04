package com.bumptech.glide.load.a;

import android.content.ContentResolver;
import android.net.Uri;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.a.d;
import java.io.FileNotFoundException;
import java.io.IOException;

public abstract class l<T> implements d<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Uri f2114a;

    /* renamed from: b  reason: collision with root package name */
    private final ContentResolver f2115b;
    private T c;

    /* access modifiers changed from: protected */
    public abstract T a(Uri uri, ContentResolver contentResolver) throws FileNotFoundException;

    /* access modifiers changed from: protected */
    public abstract void a(T t) throws IOException;

    public void cancel() {
    }

    public l(ContentResolver contentResolver, Uri uri) {
        this.f2115b = contentResolver;
        this.f2114a = uri;
    }

    public final void loadData(Priority priority, d.a<? super T> aVar) {
        try {
            this.c = a(this.f2114a, this.f2115b);
            aVar.onDataReady(this.c);
        } catch (FileNotFoundException e) {
            aVar.onLoadFailed(e);
        }
    }

    public void cleanup() {
        T t = this.c;
        if (t != null) {
            try {
                a(t);
            } catch (IOException unused) {
            }
        }
    }

    public DataSource getDataSource() {
        return DataSource.LOCAL;
    }
}
