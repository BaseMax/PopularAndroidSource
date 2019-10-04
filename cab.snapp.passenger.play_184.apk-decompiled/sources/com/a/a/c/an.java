package com.a.a.c;

import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Comparator;

final class an {

    /* renamed from: a  reason: collision with root package name */
    private static final FilenameFilter f1741a = new FilenameFilter() {
        public final boolean accept(File file, String str) {
            return true;
        }
    };

    private an() {
    }

    static int a(File file, int i, Comparator<File> comparator) {
        return a(file, f1741a, i, comparator);
    }

    static int a(File file, FilenameFilter filenameFilter, int i, Comparator<File> comparator) {
        File[] listFiles = file.listFiles(filenameFilter);
        if (listFiles == null) {
            return 0;
        }
        int length = listFiles.length;
        Arrays.sort(listFiles, comparator);
        for (File file2 : listFiles) {
            if (length <= i) {
                return length;
            }
            file2.delete();
            length--;
        }
        return length;
    }
}
