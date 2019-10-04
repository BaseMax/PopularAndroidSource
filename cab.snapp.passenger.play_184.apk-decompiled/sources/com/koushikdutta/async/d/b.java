package com.koushikdutta.async.d;

import com.koushikdutta.async.h;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public final class b extends e {

    /* renamed from: a  reason: collision with root package name */
    File f4504a;

    public b(h hVar, File file) {
        super(hVar);
        this.f4504a = file;
    }

    public final OutputStream getOutputStream() throws IOException {
        OutputStream outputStream = super.getOutputStream();
        if (outputStream != null) {
            return outputStream;
        }
        FileOutputStream fileOutputStream = new FileOutputStream(this.f4504a);
        setOutputStream(fileOutputStream);
        return fileOutputStream;
    }
}
