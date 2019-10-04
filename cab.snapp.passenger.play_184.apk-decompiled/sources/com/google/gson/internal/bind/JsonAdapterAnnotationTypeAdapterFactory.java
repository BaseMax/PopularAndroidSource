package com.google.gson.internal.bind;

import com.google.gson.a.b;
import com.google.gson.b.a;
import com.google.gson.e;
import com.google.gson.internal.c;
import com.google.gson.q;
import com.google.gson.r;

public final class JsonAdapterAnnotationTypeAdapterFactory implements r {

    /* renamed from: a  reason: collision with root package name */
    private final c f4133a;

    public JsonAdapterAnnotationTypeAdapterFactory(c cVar) {
        this.f4133a = cVar;
    }

    public final <T> q<T> create(e eVar, a<T> aVar) {
        b bVar = (b) aVar.getRawType().getAnnotation(b.class);
        if (bVar == null) {
            return null;
        }
        return a(this.f4133a, eVar, aVar, bVar);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v3, resolved type: com.google.gson.internal.bind.TreeTypeAdapter} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v13, resolved type: com.google.gson.q<?>} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v14, resolved type: com.google.gson.q} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v1, resolved type: com.google.gson.internal.bind.TreeTypeAdapter} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v15, resolved type: com.google.gson.internal.bind.TreeTypeAdapter} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v16, resolved type: com.google.gson.internal.bind.TreeTypeAdapter} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static com.google.gson.q<?> a(com.google.gson.internal.c r8, com.google.gson.e r9, com.google.gson.b.a<?> r10, com.google.gson.a.b r11) {
        /*
            java.lang.Class r0 = r11.value()
            com.google.gson.b.a r0 = com.google.gson.b.a.get(r0)
            com.google.gson.internal.h r8 = r8.get(r0)
            java.lang.Object r8 = r8.construct()
            boolean r0 = r8 instanceof com.google.gson.q
            if (r0 == 0) goto L_0x0017
            com.google.gson.q r8 = (com.google.gson.q) r8
            goto L_0x0072
        L_0x0017:
            boolean r0 = r8 instanceof com.google.gson.r
            if (r0 == 0) goto L_0x0022
            com.google.gson.r r8 = (com.google.gson.r) r8
            com.google.gson.q r8 = r8.create(r9, r10)
            goto L_0x0072
        L_0x0022:
            boolean r0 = r8 instanceof com.google.gson.o
            if (r0 != 0) goto L_0x0058
            boolean r1 = r8 instanceof com.google.gson.i
            if (r1 == 0) goto L_0x002b
            goto L_0x0058
        L_0x002b:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            java.lang.String r0 = "Invalid attempt to bind an instance of "
            r11.<init>(r0)
            java.lang.Class r8 = r8.getClass()
            java.lang.String r8 = r8.getName()
            r11.append(r8)
            java.lang.String r8 = " as a @JsonAdapter for "
            r11.append(r8)
            java.lang.String r8 = r10.toString()
            r11.append(r8)
            java.lang.String r8 = ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."
            r11.append(r8)
            java.lang.String r8 = r11.toString()
            r9.<init>(r8)
            throw r9
        L_0x0058:
            r1 = 0
            if (r0 == 0) goto L_0x0060
            r0 = r8
            com.google.gson.o r0 = (com.google.gson.o) r0
            r3 = r0
            goto L_0x0061
        L_0x0060:
            r3 = r1
        L_0x0061:
            boolean r0 = r8 instanceof com.google.gson.i
            if (r0 == 0) goto L_0x0068
            r1 = r8
            com.google.gson.i r1 = (com.google.gson.i) r1
        L_0x0068:
            r4 = r1
            com.google.gson.internal.bind.TreeTypeAdapter r8 = new com.google.gson.internal.bind.TreeTypeAdapter
            r7 = 0
            r2 = r8
            r5 = r9
            r6 = r10
            r2.<init>(r3, r4, r5, r6, r7)
        L_0x0072:
            if (r8 == 0) goto L_0x007e
            boolean r9 = r11.nullSafe()
            if (r9 == 0) goto L_0x007e
            com.google.gson.q r8 = r8.nullSafe()
        L_0x007e:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory.a(com.google.gson.internal.c, com.google.gson.e, com.google.gson.b.a, com.google.gson.a.b):com.google.gson.q");
    }
}
