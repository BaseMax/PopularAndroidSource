package b.H;

import java.util.List;

/* compiled from: InputMerger */
public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1643a = f.a("InputMerger");

    public static e a(String str) {
        try {
            return (e) Class.forName(str).newInstance();
        } catch (Exception e2) {
            f a2 = f.a();
            String str2 = f1643a;
            a2.b(str2, "Trouble instantiating + " + str, e2);
            return null;
        }
    }

    public abstract d a(List<d> list);
}
