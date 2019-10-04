package cab.snapp.passenger.units.profile;

import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappEditText;

public class ProfileView_ViewBinding implements Unbinder {
    private ProfileView target;

    public ProfileView_ViewBinding(ProfileView profileView) {
        this(profileView, profileView);
    }

    public ProfileView_ViewBinding(ProfileView profileView, View view) {
        this.target = profileView;
        profileView.nameEditText = (SnappEditText) Utils.findRequiredViewAsType(view, R.id.profile_name_edit_text, "field 'nameEditText'", SnappEditText.class);
        profileView.emailEditText = (SnappEditText) Utils.findRequiredViewAsType(view, R.id.profile_email_edit_text, "field 'emailEditText'", SnappEditText.class);
        profileView.addressEditText = (SnappEditText) Utils.findRequiredViewAsType(view, R.id.profile_address_edit_text, "field 'addressEditText'", SnappEditText.class);
        profileView.birthdayEditText = (SnappEditText) Utils.findRequiredViewAsType(view, R.id.profile_birthday_edit_text, "field 'birthdayEditText'", SnappEditText.class);
        profileView.genderEditText = (SnappEditText) Utils.findRequiredViewAsType(view, R.id.profile_gender_edit_text, "field 'genderEditText'", SnappEditText.class);
        profileView.phoneEditText = (SnappEditText) Utils.findRequiredViewAsType(view, R.id.profile_phone_edit_text, "field 'phoneEditText'", SnappEditText.class);
    }

    public void unbind() {
        ProfileView profileView = this.target;
        if (profileView != null) {
            this.target = null;
            profileView.nameEditText = null;
            profileView.emailEditText = null;
            profileView.addressEditText = null;
            profileView.birthdayEditText = null;
            profileView.genderEditText = null;
            profileView.phoneEditText = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
