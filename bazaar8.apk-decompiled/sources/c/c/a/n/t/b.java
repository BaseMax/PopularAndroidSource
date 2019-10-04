package c.c.a.n.t;

import android.content.Context;
import c.c.a.c.b.i;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.app.BazaarApp;
import com.farsitel.bazaar.ui.profile.ProfileCreditItem;
import com.farsitel.bazaar.ui.profile.ProfileHeaderItem;
import com.farsitel.bazaar.ui.profile.ProfileItem;
import com.farsitel.bazaar.ui.profile.ProfileRowItem;
import h.f.b.f;
import h.f.b.j;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: ProfileDataFactory.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6942a = new a(null);

    /* compiled from: ProfileDataFactory.kt */
    public static final class a {
        public a() {
        }

        public final List<ProfileRowItem> a(String str, String str2) {
            String str3;
            String str4 = str2;
            j.b(str4, "phoneNumber");
            ArrayList arrayList = new ArrayList();
            Context applicationContext = BazaarApp.f12104i.a().getApplicationContext();
            j.a((Object) applicationContext, "context");
            String a2 = i.a(str4, applicationContext);
            String string = applicationContext.getString(R.string.user_information);
            j.a((Object) string, "context.getString(R.string.user_information)");
            arrayList.add(new ProfileHeaderItem(string));
            String string2 = applicationContext.getString(R.string.nick_name);
            j.a((Object) string2, "context.getString(R.string.nick_name)");
            if (str != null) {
                str3 = str;
            } else {
                str3 = applicationContext.getString(R.string.enter);
            }
            ProfileItem profileItem = new ProfileItem(1, string2, str3, true, false, 16, null);
            arrayList.add(profileItem);
            String string3 = applicationContext.getString(R.string.phone_number);
            j.a((Object) string3, "context.getString(R.string.phone_number)");
            ProfileItem profileItem2 = new ProfileItem(2, string3, a2, true, false, 16, null);
            arrayList.add(profileItem2);
            String string4 = applicationContext.getString(R.string.account);
            j.a((Object) string4, "context.getString(R.string.account)");
            ProfileItem profileItem3 = new ProfileItem(5, string4, applicationContext.getString(R.string.logout), true, false, 16, null);
            arrayList.add(profileItem3);
            String string5 = applicationContext.getString(R.string.user_credit);
            j.a((Object) string5, "context.getString(R.string.user_credit)");
            arrayList.add(new ProfileHeaderItem(string5));
            String string6 = applicationContext.getString(R.string.your_credit);
            j.a((Object) string6, "context.getString(R.string.your_credit)");
            Object[] objArr = {""};
            String format = String.format(string6, Arrays.copyOf(objArr, objArr.length));
            j.a((Object) format, "java.lang.String.format(this, *args)");
            ProfileCreditItem profileCreditItem = new ProfileCreditItem(6, format, true, "", false);
            arrayList.add(profileCreditItem);
            String string7 = applicationContext.getString(R.string.transactions);
            j.a((Object) string7, "context.getString(R.string.transactions)");
            ProfileItem profileItem4 = new ProfileItem(7, string7, null, true, true);
            arrayList.add(profileItem4);
            String string8 = applicationContext.getString(R.string.gift_card);
            j.a((Object) string8, "context.getString(R.string.gift_card)");
            ProfileItem profileItem5 = new ProfileItem(8, string8, null, true, true);
            arrayList.add(profileItem5);
            return arrayList;
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }
}
