package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Comparator;

public final class Utils {
    public static final FilenameFilter ALL_FILES_FILTER = new FilenameFilter() {
        public boolean accept(File file, String str) {
            return true;
        }
    };

    public static int capFileCount(File file, int i2, Comparator<File> comparator) {
        return capFileCount(file, ALL_FILES_FILTER, i2, comparator);
    }

    public static int capFileCount(File file, FilenameFilter filenameFilter, int i2, Comparator<File> comparator) {
        File[] listFiles = file.listFiles(filenameFilter);
        if (listFiles == null) {
            return 0;
        }
        int length = listFiles.length;
        Arrays.sort(listFiles, comparator);
        for (File file2 : listFiles) {
            if (length <= i2) {
                return length;
            }
            file2.delete();
            length--;
        }
        return length;
    }
}
