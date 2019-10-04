package com.a.a.c;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;

final class d extends FileOutputStream {
    public static final String IN_PROGRESS_SESSION_FILE_EXTENSION = ".cls_temp";
    public static final String SESSION_FILE_EXTENSION = ".cls";
    public static final FilenameFilter TEMP_FILENAME_FILTER = new FilenameFilter() {
        public final boolean accept(File file, String str) {
            return str.endsWith(d.IN_PROGRESS_SESSION_FILE_EXTENSION);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final String f1749a;

    /* renamed from: b  reason: collision with root package name */
    private File f1750b;
    private File c;
    private boolean d;

    public d(String str, String str2) throws FileNotFoundException {
        this(new File(str), str2);
    }

    public d(File file, String str) throws FileNotFoundException {
        super(new File(file, str + IN_PROGRESS_SESSION_FILE_EXTENSION));
        this.d = false;
        this.f1749a = file + File.separator + str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f1749a);
        sb.append(IN_PROGRESS_SESSION_FILE_EXTENSION);
        this.f1750b = new File(sb.toString());
    }

    public final synchronized void close() throws IOException {
        if (!this.d) {
            this.d = true;
            super.flush();
            super.close();
            File file = new File(this.f1749a + SESSION_FILE_EXTENSION);
            if (this.f1750b.renameTo(file)) {
                this.f1750b = null;
                this.c = file;
                return;
            }
            String str = "";
            if (file.exists()) {
                str = " (target already exists)";
            } else if (!this.f1750b.exists()) {
                str = " (source does not exist)";
            }
            throw new IOException("Could not rename temp file: " + this.f1750b + " -> " + file + str);
        }
    }

    public final void closeInProgressStream() throws IOException {
        if (!this.d) {
            this.d = true;
            super.flush();
            super.close();
        }
    }

    public final File getCompleteFile() {
        return this.c;
    }

    public final File getInProgressFile() {
        return this.f1750b;
    }
}
