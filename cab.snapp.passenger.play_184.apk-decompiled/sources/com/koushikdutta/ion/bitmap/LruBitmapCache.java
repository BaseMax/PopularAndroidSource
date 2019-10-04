package com.koushikdutta.ion.bitmap;

import com.koushikdutta.async.e.f;

class LruBitmapCache extends f<String, BitmapInfo> {
    private SoftReferenceHashtable<String, BitmapInfo> soft = new SoftReferenceHashtable<>();

    public void putSoft(String str, BitmapInfo bitmapInfo) {
        this.soft.put(str, bitmapInfo);
    }

    public LruBitmapCache(int i) {
        super((long) i);
    }

    /* access modifiers changed from: protected */
    public long sizeOf(String str, BitmapInfo bitmapInfo) {
        return (long) bitmapInfo.sizeOf();
    }

    public BitmapInfo getBitmapInfo(String str) {
        BitmapInfo bitmapInfo = (BitmapInfo) get(str);
        if (bitmapInfo != null) {
            return bitmapInfo;
        }
        BitmapInfo remove = this.soft.remove(str);
        if (remove != null) {
            put(str, remove);
        }
        return remove;
    }

    public BitmapInfo removeBitmapInfo(String str) {
        BitmapInfo remove = this.soft.remove(str);
        BitmapInfo bitmapInfo = (BitmapInfo) remove(str);
        return bitmapInfo != null ? bitmapInfo : remove;
    }

    public void evictAllBitmapInfo() {
        evictAll();
        this.soft.clear();
    }

    /* access modifiers changed from: protected */
    public void entryRemoved(boolean z, String str, BitmapInfo bitmapInfo, BitmapInfo bitmapInfo2) {
        super.entryRemoved(z, str, bitmapInfo, bitmapInfo2);
        if (z) {
            this.soft.put(str, bitmapInfo);
        }
    }
}
