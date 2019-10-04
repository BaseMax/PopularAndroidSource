package com.google.android.material.i;

public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final a f3917a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static final b f3918b = new b();
    private a c;
    private a d;
    private a e;
    private a f;
    private b g;
    private b h;
    private b i;
    private b j;

    public e() {
        a aVar = f3917a;
        this.c = aVar;
        this.d = aVar;
        this.e = aVar;
        this.f = aVar;
        b bVar = f3918b;
        this.g = bVar;
        this.h = bVar;
        this.i = bVar;
        this.j = bVar;
    }

    public final void setAllCorners(a aVar) {
        this.c = aVar;
        this.d = aVar;
        this.e = aVar;
        this.f = aVar;
    }

    public final void setAllEdges(b bVar) {
        this.j = bVar;
        this.g = bVar;
        this.h = bVar;
        this.i = bVar;
    }

    public final void setCornerTreatments(a aVar, a aVar2, a aVar3, a aVar4) {
        this.c = aVar;
        this.d = aVar2;
        this.e = aVar3;
        this.f = aVar4;
    }

    public final void setEdgeTreatments(b bVar, b bVar2, b bVar3, b bVar4) {
        this.j = bVar;
        this.g = bVar2;
        this.h = bVar3;
        this.i = bVar4;
    }

    public final a getTopLeftCorner() {
        return this.c;
    }

    public final void setTopLeftCorner(a aVar) {
        this.c = aVar;
    }

    public final a getTopRightCorner() {
        return this.d;
    }

    public final void setTopRightCorner(a aVar) {
        this.d = aVar;
    }

    public final a getBottomRightCorner() {
        return this.e;
    }

    public final void setBottomRightCorner(a aVar) {
        this.e = aVar;
    }

    public final a getBottomLeftCorner() {
        return this.f;
    }

    public final void setBottomLeftCorner(a aVar) {
        this.f = aVar;
    }

    public final b getTopEdge() {
        return this.g;
    }

    public final void setTopEdge(b bVar) {
        this.g = bVar;
    }

    public final b getRightEdge() {
        return this.h;
    }

    public final void setRightEdge(b bVar) {
        this.h = bVar;
    }

    public final b getBottomEdge() {
        return this.i;
    }

    public final void setBottomEdge(b bVar) {
        this.i = bVar;
    }

    public final b getLeftEdge() {
        return this.j;
    }

    public final void setLeftEdge(b bVar) {
        this.j = bVar;
    }
}
