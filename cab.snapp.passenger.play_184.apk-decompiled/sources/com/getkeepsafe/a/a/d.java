package com.getkeepsafe.a.a;

import com.getkeepsafe.a.a.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public final class d extends c.b {

    /* renamed from: a  reason: collision with root package name */
    private final f f2477a;

    public d(boolean z, f fVar) throws IOException {
        this.bigEndian = z;
        this.f2477a = fVar;
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.type = fVar.c(allocate, 16);
        this.phoff = fVar.b(allocate, 28);
        this.shoff = fVar.b(allocate, 32);
        this.phentsize = fVar.c(allocate, 42);
        this.phnum = fVar.c(allocate, 44);
        this.shentsize = fVar.c(allocate, 46);
        this.shnum = fVar.c(allocate, 48);
        this.shstrndx = fVar.c(allocate, 50);
    }

    public final c.d getSectionHeader(int i) throws IOException {
        return new i(this.f2477a, this, i);
    }

    public final c.C0052c getProgramHeader(long j) throws IOException {
        return new g(this.f2477a, this, j);
    }

    public final c.a getDynamicStructure(long j, int i) throws IOException {
        a aVar = new a(this.f2477a, this, j, i);
        return aVar;
    }
}
