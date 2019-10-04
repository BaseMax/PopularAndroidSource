package io.fabric.sdk.android.services.b;

import java.io.File;
import java.io.IOException;
import java.util.List;

public interface c {
    void add(byte[] bArr) throws IOException;

    boolean canWorkingFileStore(int i, int i2);

    void deleteFilesInRollOverDirectory(List<File> list);

    void deleteWorkingFile();

    List<File> getAllFilesInRollOverDirectory();

    List<File> getBatchOfFilesToSend(int i);

    File getRollOverDirectory();

    File getWorkingDirectory();

    int getWorkingFileUsedSizeInBytes();

    boolean isWorkingFileEmpty();

    void rollOver(String str) throws IOException;
}
