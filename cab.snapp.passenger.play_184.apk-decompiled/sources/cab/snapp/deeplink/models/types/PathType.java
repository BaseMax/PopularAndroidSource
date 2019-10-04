package cab.snapp.deeplink.models.types;

public enum PathType {
    Here("here"),
    Location(","),
    GoogleMaps("maps"),
    Selective("selective"),
    StringData("");
    

    /* renamed from: a  reason: collision with root package name */
    private String f241a;

    private PathType(String str) {
        this.f241a = str;
    }

    public final String getValue() {
        return this.f241a;
    }
}
