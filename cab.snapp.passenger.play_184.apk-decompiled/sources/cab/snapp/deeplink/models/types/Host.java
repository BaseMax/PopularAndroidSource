package cab.snapp.deeplink.models.types;

public enum Host {
    Ride("ride"),
    Open("open"),
    Shortcut("shortcut"),
    Google("goo.gl"),
    CompleteGoogle("www.google.com"),
    Eco("eco"),
    Rose("rose"),
    Bike("bike"),
    Box("box");
    

    /* renamed from: a  reason: collision with root package name */
    private String f240a;

    private Host(String str) {
        this.f240a = str;
    }

    public final String getValue() {
        return this.f240a;
    }
}
