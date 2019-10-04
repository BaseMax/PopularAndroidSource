package cab.snapp.deeplink.models;

import cab.snapp.deeplink.models.types.PathType;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    private PathType f238a;

    /* renamed from: b  reason: collision with root package name */
    private b f239b;
    private String c;
    private int d;

    public c(PathType pathType, b bVar, String str) {
        this.f238a = pathType;
        this.f239b = bVar;
        this.c = str;
    }

    public final PathType getType() {
        return this.f238a;
    }

    public final b getLocation() {
        return this.f239b;
    }

    public final String getValue() {
        return this.c;
    }

    public final void setValue(String str) {
        this.c = str;
    }

    public final int getZoom() {
        return this.d;
    }

    public final void setZoom(int i) {
        this.d = i;
    }
}
