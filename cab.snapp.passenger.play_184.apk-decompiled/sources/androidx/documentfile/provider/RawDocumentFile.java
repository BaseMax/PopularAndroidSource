package androidx.documentfile.provider;

import android.net.Uri;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

class RawDocumentFile extends DocumentFile {
    private File mFile;

    public boolean isVirtual() {
        return false;
    }

    RawDocumentFile(DocumentFile documentFile, File file) {
        super(documentFile);
        this.mFile = file;
    }

    public DocumentFile createFile(String str, String str2) {
        if (MimeTypeMap.getSingleton().getExtensionFromMimeType(str) != null) {
            str2 = str2 + "." + r2;
        }
        File file = new File(this.mFile, str2);
        try {
            file.createNewFile();
            return new RawDocumentFile(this, file);
        } catch (IOException e) {
            new StringBuilder("Failed to createFile: ").append(e);
            return null;
        }
    }

    public DocumentFile createDirectory(String str) {
        File file = new File(this.mFile, str);
        if (file.isDirectory() || file.mkdir()) {
            return new RawDocumentFile(this, file);
        }
        return null;
    }

    public Uri getUri() {
        return Uri.fromFile(this.mFile);
    }

    public String getName() {
        return this.mFile.getName();
    }

    public String getType() {
        if (this.mFile.isDirectory()) {
            return null;
        }
        return getTypeForName(this.mFile.getName());
    }

    public boolean isDirectory() {
        return this.mFile.isDirectory();
    }

    public boolean isFile() {
        return this.mFile.isFile();
    }

    public long lastModified() {
        return this.mFile.lastModified();
    }

    public long length() {
        return this.mFile.length();
    }

    public boolean canRead() {
        return this.mFile.canRead();
    }

    public boolean canWrite() {
        return this.mFile.canWrite();
    }

    public boolean delete() {
        deleteContents(this.mFile);
        return this.mFile.delete();
    }

    public boolean exists() {
        return this.mFile.exists();
    }

    public DocumentFile[] listFiles() {
        ArrayList arrayList = new ArrayList();
        File[] listFiles = this.mFile.listFiles();
        if (listFiles != null) {
            for (File rawDocumentFile : listFiles) {
                arrayList.add(new RawDocumentFile(this, rawDocumentFile));
            }
        }
        return (DocumentFile[]) arrayList.toArray(new DocumentFile[arrayList.size()]);
    }

    public boolean renameTo(String str) {
        File file = new File(this.mFile.getParentFile(), str);
        if (!this.mFile.renameTo(file)) {
            return false;
        }
        this.mFile = file;
        return true;
    }

    private static String getTypeForName(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf >= 0) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str.substring(lastIndexOf + 1).toLowerCase());
            if (mimeTypeFromExtension != null) {
                return mimeTypeFromExtension;
            }
        }
        return "application/octet-stream";
    }

    private static boolean deleteContents(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return true;
        }
        boolean z = true;
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                z &= deleteContents(file2);
            }
            if (!file2.delete()) {
                new StringBuilder("Failed to delete ").append(file2);
                z = false;
            }
        }
        return z;
    }
}
