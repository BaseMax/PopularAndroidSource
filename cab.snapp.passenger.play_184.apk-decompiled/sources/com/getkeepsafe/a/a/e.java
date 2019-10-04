package com.getkeepsafe.a.a;

import com.getkeepsafe.a.a.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public final class e extends c.b {

    /* renamed from: a  reason: collision with root package name */
    private final f f2478a;

    public e(boolean z, f fVar) throws IOException {
        this.bigEndian = z;
        this.f2478a = fVar;
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.type = fVar.c(allocate, 16);
        this.phoff = fVar.a(allocate, 32);
        this.shoff = fVar.a(allocate, 40);
        this.phentsize = fVar.c(allocate, 54);
        this.phnum = fVar.c(allocate, 56);
        this.shentsize = fVar.c(allocate, 58);
        this.shnum = fVar.c(allocate, 60);
        this.shstrndx = fVar.c(allocate, 62);
    }

    public final c.d getSectionHeader(int i) throws IOException {
        return new j(this.f2478a, this, i);
    }

    public final c.C0052c getProgramHeader(long j) throws IOException {
        return new h(this.f2478a, this, j);
    }

    public final c.a getDynamicStructure(long j, int i) throws IOException {
        b bVar = new b(this.f2478a, this, j, i);
        return bVar;
    }
}
