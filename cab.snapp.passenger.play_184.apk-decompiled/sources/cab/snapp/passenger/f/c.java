package cab.snapp.passenger.f;

import android.content.Context;
import android.content.res.Resources;
import cab.snapp.passenger.play.R;

public final class c {
    public static final int FEMALE = 2;
    public static final int MALE = 1;
    public static final int NULL = -1;
    public static final int OTHER = 0;

    public static int getResourceIdFromCode(int i) {
        return i != 0 ? i != 1 ? i != 2 ? R.string.gender_other : R.string.gender_female : R.string.gender_male : R.string.gender_other;
    }

    public static int getCodeFromString(Context context, String str) {
        Resources resources = context.getResources();
        if (str.equals(resources.getString(R.string.gender_other))) {
            return 0;
        }
        if (str.equals(resources.getString(R.string.gender_male))) {
            return 1;
        }
        return str.equals(resources.getString(R.string.gender_female)) ? 2 : -1;
    }
}
