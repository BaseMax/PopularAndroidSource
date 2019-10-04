package c.b.a.c.a;

import android.content.res.AssetManager;
import android.os.ParcelFileDescriptor;

/* compiled from: FileDescriptorAssetPathFetcher */
public class i extends b<ParcelFileDescriptor> {
    public i(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    public ParcelFileDescriptor a(AssetManager assetManager, String str) {
        return assetManager.openFd(str).getParcelFileDescriptor();
    }

    public void a(ParcelFileDescriptor parcelFileDescriptor) {
        parcelFileDescriptor.close();
    }

    public Class<ParcelFileDescriptor> a() {
        return ParcelFileDescriptor.class;
    }
}
