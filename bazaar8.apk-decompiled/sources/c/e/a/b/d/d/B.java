package c.e.a.b.d.d;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class B implements Parcelable.Creator<ResolveAccountRequest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b2 = SafeParcelReader.b(parcel);
        Account account = null;
        int i2 = 0;
        GoogleSignInAccount googleSignInAccount = null;
        int i3 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = SafeParcelReader.a(parcel);
            int a3 = SafeParcelReader.a(a2);
            if (a3 == 1) {
                i2 = SafeParcelReader.y(parcel, a2);
            } else if (a3 == 2) {
                account = (Account) SafeParcelReader.a(parcel, a2, Account.CREATOR);
            } else if (a3 == 3) {
                i3 = SafeParcelReader.y(parcel, a2);
            } else if (a3 != 4) {
                SafeParcelReader.D(parcel, a2);
            } else {
                googleSignInAccount = (GoogleSignInAccount) SafeParcelReader.a(parcel, a2, GoogleSignInAccount.CREATOR);
            }
        }
        SafeParcelReader.q(parcel, b2);
        return new ResolveAccountRequest(i2, account, i3, googleSignInAccount);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new ResolveAccountRequest[i2];
    }
}
