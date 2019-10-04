package c.b.a.c.a;

import android.content.res.AssetManager;
import java.io.InputStream;

/* compiled from: StreamAssetPathFetcher */
public class n extends b<InputStream> {
    public n(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    public InputStream a(AssetManager assetManager, String str) {
        return assetManager.open(str);
    }

    public void a(InputStream inputStream) {
        inputStream.close();
    }

    public Class<InputStream> a() {
        return InputStream.class;
    }
}
