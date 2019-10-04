package c.b.a.c.b;

import c.b.a.c.b.b.a;
import c.b.a.c.f;
import java.io.File;

/* renamed from: c.b.a.c.b.f  reason: case insensitive filesystem */
/* compiled from: DataCacheWriter */
public class C0363f<DataType> implements a.b {

    /* renamed from: a  reason: collision with root package name */
    public final c.b.a.c.a<DataType> f3964a;

    /* renamed from: b  reason: collision with root package name */
    public final DataType f3965b;

    /* renamed from: c  reason: collision with root package name */
    public final f f3966c;

    public C0363f(c.b.a.c.a<DataType> aVar, DataType datatype, f fVar) {
        this.f3964a = aVar;
        this.f3965b = datatype;
        this.f3966c = fVar;
    }

    public boolean a(File file) {
        return this.f3964a.a(this.f3965b, file, this.f3966c);
    }
}
