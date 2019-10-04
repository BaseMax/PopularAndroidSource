package com.bumptech.glide.load.a.a;

import java.io.File;

final class a {
    a() {
    }

    public final boolean exists(File file) {
        return file.exists();
    }

    public final long length(File file) {
        return file.length();
    }

    public final File get(String str) {
        return new File(str);
    }
}
