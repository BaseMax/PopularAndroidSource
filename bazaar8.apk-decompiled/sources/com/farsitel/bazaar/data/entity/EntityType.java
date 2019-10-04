package com.farsitel.bazaar.data.entity;

/* compiled from: EntityType.kt */
public enum EntityType {
    APP("apk", ".apk"),
    DIFF_APP("apk", ".apk"),
    VIDEO("Movies", ".mp4"),
    COVER("", ""),
    SUBTITLE("", ""),
    INLINE("", "");
    
    public final String storageFileExtension;
    public final String storageFolderPath;

    /* access modifiers changed from: public */
    EntityType(String str, String str2) {
        this.storageFolderPath = str;
        this.storageFileExtension = str2;
    }

    public final String getStorageFileExtension() {
        return this.storageFileExtension;
    }

    public final String getStorageFolderPath() {
        return this.storageFolderPath;
    }
}
