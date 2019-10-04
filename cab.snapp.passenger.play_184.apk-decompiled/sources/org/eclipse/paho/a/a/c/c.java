package org.eclipse.paho.a.a.c;

import java.io.File;
import java.io.FileFilter;

public final class c implements FileFilter {

    /* renamed from: a  reason: collision with root package name */
    private final String f8782a;

    public c(String str) {
        this.f8782a = str;
    }

    public final boolean accept(File file) {
        return file.getName().endsWith(this.f8782a);
    }
}
