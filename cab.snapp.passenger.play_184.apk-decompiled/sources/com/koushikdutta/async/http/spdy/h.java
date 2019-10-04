package com.koushikdutta.async.http.spdy;

import com.koushikdutta.async.l;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

final class h {

    /* renamed from: a  reason: collision with root package name */
    Inflater f4787a = new Inflater() {
        public final int inflate(byte[] bArr, int i, int i2) throws DataFormatException {
            int inflate = super.inflate(bArr, i, i2);
            if (inflate != 0 || !needsDictionary()) {
                return inflate;
            }
            setDictionary(n.f4811a);
            return super.inflate(bArr, i, i2);
        }
    };

    public final List<g> readHeader(l lVar, int i) throws IOException {
        byte[] bArr = new byte[i];
        lVar.get(bArr);
        this.f4787a.setInput(bArr);
        l order = new l().order(ByteOrder.BIG_ENDIAN);
        while (!this.f4787a.needsInput()) {
            ByteBuffer obtain = l.obtain(8192);
            try {
                obtain.limit(this.f4787a.inflate(obtain.array()));
                order.add(obtain);
            } catch (DataFormatException e) {
                throw new IOException(e);
            }
        }
        int i2 = order.getInt();
        ArrayList arrayList = new ArrayList(i2);
        int i3 = 0;
        while (i3 < i2) {
            c asciiLowercase = a(order).toAsciiLowercase();
            c a2 = a(order);
            if (asciiLowercase.size() != 0) {
                arrayList.add(new g(asciiLowercase, a2));
                i3++;
            } else {
                throw new IOException("name.size == 0");
            }
        }
        return arrayList;
    }

    private static c a(l lVar) {
        return c.of(lVar.getBytes(lVar.getInt()));
    }
}
