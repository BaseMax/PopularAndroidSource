package com.getkeepsafe.a.a;

import com.facebook.b.h;
import com.getkeepsafe.a.a.c;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class f implements c, Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final int f2479a = h.ELF_MAGIC;

    /* renamed from: b  reason: collision with root package name */
    private final FileChannel f2480b;

    public f(File file) throws FileNotFoundException {
        if (file == null || !file.exists()) {
            throw new IllegalArgumentException("File is null or does not exist");
        }
        this.f2480b = new FileInputStream(file).getChannel();
    }

    public final c.b parseHeader() throws IOException {
        this.f2480b.position(0);
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        if (b(allocate, 0) == 1179403647) {
            short e = e(allocate, 4);
            boolean z = e(allocate, 5) == 2;
            if (e == 1) {
                return new d(z, this);
            }
            if (e == 2) {
                return new e(z, this);
            }
            throw new IllegalStateException("Invalid class type!");
        }
        throw new IllegalArgumentException("Invalid ELF Magic!");
    }

    public final List<String> parseNeededDependencies() throws IOException {
        long j;
        this.f2480b.position(0);
        ArrayList arrayList = new ArrayList();
        c.b parseHeader = parseHeader();
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(parseHeader.bigEndian ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = (long) parseHeader.phnum;
        int i = 0;
        if (j2 == 65535) {
            j2 = parseHeader.getSectionHeader(0).info;
        }
        long j3 = 0;
        while (true) {
            if (j3 >= j2) {
                j = 0;
                break;
            }
            c.C0052c programHeader = parseHeader.getProgramHeader(j3);
            if (programHeader.type == 2) {
                j = programHeader.offset;
                break;
            }
            j3++;
        }
        if (j == 0) {
            return Collections.unmodifiableList(arrayList);
        }
        ArrayList<Long> arrayList2 = new ArrayList<>();
        long j4 = 0;
        while (true) {
            c.a dynamicStructure = parseHeader.getDynamicStructure(j, i);
            long j5 = j;
            if (dynamicStructure.tag == 1) {
                arrayList2.add(Long.valueOf(dynamicStructure.val));
            } else if (dynamicStructure.tag == 5) {
                j4 = dynamicStructure.val;
            }
            i++;
            if (dynamicStructure.tag == 0) {
                break;
            }
            j = j5;
        }
        if (j4 != 0) {
            long a2 = a(parseHeader, j2, j4);
            for (Long longValue : arrayList2) {
                arrayList.add(d(allocate, longValue.longValue() + a2));
            }
            return arrayList;
        }
        throw new IllegalStateException("String table offset not found!");
    }

    private static long a(c.b bVar, long j, long j2) throws IOException {
        for (long j3 = 0; j3 < j; j3++) {
            c.C0052c programHeader = bVar.getProgramHeader(j3);
            if (programHeader.type == 1 && programHeader.vaddr <= j2 && j2 <= programHeader.vaddr + programHeader.memsz) {
                return (j2 - programHeader.vaddr) + programHeader.offset;
            }
        }
        throw new IllegalStateException("Could not map vma to file offset!");
    }

    public final void close() throws IOException {
        this.f2480b.close();
    }

    private String d(ByteBuffer byteBuffer, long j) throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            long j2 = 1 + j;
            short e = e(byteBuffer, j);
            if (e == 0) {
                return sb.toString();
            }
            sb.append((char) e);
            j = j2;
        }
    }

    /* access modifiers changed from: protected */
    public final long a(ByteBuffer byteBuffer, long j) throws IOException {
        a(byteBuffer, j, 8);
        return byteBuffer.getLong();
    }

    /* access modifiers changed from: protected */
    public final long b(ByteBuffer byteBuffer, long j) throws IOException {
        a(byteBuffer, j, 4);
        return ((long) byteBuffer.getInt()) & 4294967295L;
    }

    /* access modifiers changed from: protected */
    public final int c(ByteBuffer byteBuffer, long j) throws IOException {
        a(byteBuffer, j, 2);
        return byteBuffer.getShort() & 65535;
    }

    private short e(ByteBuffer byteBuffer, long j) throws IOException {
        a(byteBuffer, j, 1);
        return (short) (byteBuffer.get() & com.pusher.java_websocket.drafts.c.END_OF_FRAME);
    }

    private void a(ByteBuffer byteBuffer, long j, int i) throws IOException {
        byteBuffer.position(0);
        byteBuffer.limit(i);
        long j2 = 0;
        while (j2 < ((long) i)) {
            int read = this.f2480b.read(byteBuffer, j + j2);
            if (read != -1) {
                j2 += (long) read;
            } else {
                throw new EOFException();
            }
        }
        byteBuffer.position(0);
    }
}
