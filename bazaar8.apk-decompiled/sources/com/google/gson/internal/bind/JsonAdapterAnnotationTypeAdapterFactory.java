package com.google.gson.internal.bind;

import c.e.d.a.b;
import c.e.d.b.p;
import c.e.d.c.a;
import c.e.d.j;
import c.e.d.x;
import c.e.d.y;

public final class JsonAdapterAnnotationTypeAdapterFactory implements y {

    /* renamed from: a  reason: collision with root package name */
    public final p f13553a;

    public JsonAdapterAnnotationTypeAdapterFactory(p pVar) {
        this.f13553a = pVar;
    }

    public <T> x<T> a(j jVar, a<T> aVar) {
        b bVar = (b) aVar.a().getAnnotation(b.class);
        if (bVar == null) {
            return null;
        }
        return a(this.f13553a, jVar, aVar, bVar);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v3, resolved type: com.google.gson.internal.bind.TreeTypeAdapter} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v13, resolved type: c.e.d.x<?>} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v14, resolved type: c.e.d.x} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v1, resolved type: com.google.gson.internal.bind.TreeTypeAdapter} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v15, resolved type: com.google.gson.internal.bind.TreeTypeAdapter} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v16, resolved type: com.google.gson.internal.bind.TreeTypeAdapter} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public c.e.d.x<?> a(c.e.d.b.p r9, c.e.d.j r10, c.e.d.c.a<?> r11, c.e.d.a.b r12) {
        /*
            r8 = this;
            java.lang.Class r0 = r12.value()
            c.e.d.c.a r0 = c.e.d.c.a.a(r0)
            c.e.d.b.w r9 = r9.a(r0)
            java.lang.Object r9 = r9.a()
            boolean r0 = r9 instanceof c.e.d.x
            if (r0 == 0) goto L_0x0017
            c.e.d.x r9 = (c.e.d.x) r9
            goto L_0x0075
        L_0x0017:
            boolean r0 = r9 instanceof c.e.d.y
            if (r0 == 0) goto L_0x0022
            c.e.d.y r9 = (c.e.d.y) r9
            c.e.d.x r9 = r9.a(r10, r11)
            goto L_0x0075
        L_0x0022:
            boolean r0 = r9 instanceof c.e.d.v
            if (r0 != 0) goto L_0x005b
            boolean r1 = r9 instanceof c.e.d.o
            if (r1 == 0) goto L_0x002b
            goto L_0x005b
        L_0x002b:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            java.lang.String r0 = "Invalid attempt to bind an instance of "
            r12.append(r0)
            java.lang.Class r9 = r9.getClass()
            java.lang.String r9 = r9.getName()
            r12.append(r9)
            java.lang.String r9 = " as a @JsonAdapter for "
            r12.append(r9)
            java.lang.String r9 = r11.toString()
            r12.append(r9)
            java.lang.String r9 = ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."
            r12.append(r9)
            java.lang.String r9 = r12.toString()
            r10.<init>(r9)
            throw r10
        L_0x005b:
            r1 = 0
            if (r0 == 0) goto L_0x0063
            r0 = r9
            c.e.d.v r0 = (c.e.d.v) r0
            r3 = r0
            goto L_0x0064
        L_0x0063:
            r3 = r1
        L_0x0064:
            boolean r0 = r9 instanceof c.e.d.o
            if (r0 == 0) goto L_0x006b
            r1 = r9
            c.e.d.o r1 = (c.e.d.o) r1
        L_0x006b:
            r4 = r1
            com.google.gson.internal.bind.TreeTypeAdapter r9 = new com.google.gson.internal.bind.TreeTypeAdapter
            r7 = 0
            r2 = r9
            r5 = r10
            r6 = r11
            r2.<init>(r3, r4, r5, r6, r7)
        L_0x0075:
            if (r9 == 0) goto L_0x0081
            boolean r10 = r12.nullSafe()
            if (r10 == 0) goto L_0x0081
            c.e.d.x r9 = r9.a()
        L_0x0081:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory.a(c.e.d.b.p, c.e.d.j, c.e.d.c.a, c.e.d.a.b):c.e.d.x");
    }
}
