package com.bumptech.glide.load.a;

import android.content.res.AssetManager;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.a.d;
import java.io.IOException;

public abstract class b<T> implements d<T> {

    /* renamed from: a  reason: collision with root package name */
    private final String f2101a;

    /* renamed from: b  reason: collision with root package name */
    private final AssetManager f2102b;
    private T c;

    /* access modifiers changed from: protected */
    public abstract T a(AssetManager assetManager, String str) throws IOException;

    /* access modifiers changed from: protected */
    public abstract void a(T t) throws IOException;

    public void cancel() {
    }

    public b(AssetManager assetManager, String str) {
        this.f2102b = assetManager;
        this.f2101a = str;
    }

    public void loadData(Priority priority, d.a<? super T> aVar) {
        try {
            this.c = a(this.f2102b, this.f2101a);
            aVar.onDataReady(this.c);
        } catch (IOException e) {
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
