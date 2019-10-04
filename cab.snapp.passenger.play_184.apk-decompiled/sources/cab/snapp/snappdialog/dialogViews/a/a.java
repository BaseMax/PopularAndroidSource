package cab.snapp.snappdialog.dialogViews.a;

import cab.snapp.snappdialog.b.c;
import java.util.List;

public final class a extends c {

    /* renamed from: a  reason: collision with root package name */
    private String f1472a;

    /* renamed from: b  reason: collision with root package name */
    private int f1473b = 0;
    private List<String> c;
    private int d = -1;
    private c e;

    public final int getType() {
        return 304;
    }

    private a() {
    }

    public final String getMessage() {
        return this.f1472a;
    }

    public final List<String> getMessageList() {
        return this.c;
    }

    public final int getDirection() {
        return this.f1473b;
    }

    public final int getCheckedItemPosition() {
        return this.d;
    }

    public final c getMultipleItemsSelectedListener() {
        return this.e;
    }

    public final int getDefaultCheckedItemPosition() {
        return this.d;
    }
}
