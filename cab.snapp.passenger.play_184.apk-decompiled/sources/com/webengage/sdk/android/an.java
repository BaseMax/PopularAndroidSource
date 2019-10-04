package com.webengage.sdk.android;

import com.webengage.sdk.android.utils.Gender;
import java.util.Date;
import java.util.List;
import java.util.Map;

class an implements ae<User> {

    /* renamed from: a  reason: collision with root package name */
    private int f5506a = -1;

    /* renamed from: b  reason: collision with root package name */
    private Object[] f5507b = null;

    an(int i, Object... objArr) {
        this.f5506a = i;
        this.f5507b = objArr;
    }

    public void a(User user) {
        try {
            switch (this.f5506a) {
                case 0:
                    if (this.f5507b != null && this.f5507b.length > 0) {
                        user.setUserProfile((UserProfile) this.f5507b[0]);
                        break;
                    }
                case 1:
                    if (this.f5507b != null && this.f5507b.length > 0) {
                        user.setEmail((String) this.f5507b[0]);
                        return;
                    }
                case 2:
                    if (this.f5507b != null && this.f5507b.length > 0) {
                        user.setHashedEmail((String) this.f5507b[0]);
                        return;
                    }
                case 3:
                    if (this.f5507b != null && this.f5507b.length > 2) {
                        user.setBirthDate((Integer) this.f5507b[0], (Integer) this.f5507b[1], (Integer) this.f5507b[2]);
                        return;
                    }
                case 4:
                    if (this.f5507b != null && this.f5507b.length > 0) {
                        user.setBirthDate((String) this.f5507b[0]);
                        return;
                    }
                case 5:
                    if (this.f5507b != null && this.f5507b.length > 0) {
                        user.setPhoneNumber((String) this.f5507b[0]);
                        return;
                    }
                case 6:
                    if (this.f5507b != null && this.f5507b.length > 0) {
                        user.setHashedPhoneNumber((String) this.f5507b[0]);
                        return;
                    }
                case 7:
                    if (this.f5507b != null && this.f5507b.length > 0) {
                        user.setFirstName((String) this.f5507b[0]);
                        return;
                    }
                case 8:
                    if (this.f5507b != null && this.f5507b.length > 0) {
                        user.setLastName((String) this.f5507b[0]);
                        return;
                    }
                case 9:
                    if (this.f5507b != null && this.f5507b.length > 0) {
                        user.setGender((Gender) this.f5507b[0]);
                        return;
                    }
                case 10:
                    if (this.f5507b != null && this.f5507b.length > 0) {
                        user.setCompany((String) this.f5507b[0]);
                        return;
                    }
                case 13:
                    if (this.f5507b != null && this.f5507b.length > 1) {
                        user.setAttribute((String) this.f5507b[0], (Date) this.f5507b[1]);
                        return;
                    }
                case 14:
                    if (this.f5507b != null && this.f5507b.length > 1) {
                        user.setAttribute((String) this.f5507b[0], (List<? extends Object>) (List) this.f5507b[1]);
                        return;
                    }
                case 15:
                    if (this.f5507b != null && this.f5507b.length > 0) {
                        user.setAttributes((Map) this.f5507b[0]);
                        return;
                    }
                case 16:
                    if (this.f5507b != null && this.f5507b.length > 1) {
                        user.setAttribute((String) this.f5507b[0], (String) this.f5507b[1]);
                        return;
                    }
                case 17:
                    if (this.f5507b != null && this.f5507b.length > 1) {
                        user.setAttribute((String) this.f5507b[0], (Boolean) this.f5507b[1]);
                        return;
                    }
                case 19:
                    if (this.f5507b != null && this.f5507b.length > 0) {
                        user.deleteAttribute((String) this.f5507b[0]);
                        return;
                    }
                case 20:
                    if (this.f5507b != null && this.f5507b.length > 0) {
                        user.deleteAttributes((List) this.f5507b[0]);
                        return;
                    }
                case 21:
                    if (this.f5507b != null && this.f5507b.length > 0) {
                        user.login((String) this.f5507b[0]);
                        return;
                    }
                case 22:
                    user.logout();
                    return;
                case 23:
                    if (this.f5507b != null && this.f5507b.length > 1) {
                        user.setOptIn((Channel) this.f5507b[0], ((Boolean) this.f5507b[1]).booleanValue());
                        break;
                    }
                case 24:
                    if (!(this.f5507b == null || this.f5507b.length <= 1 || this.f5507b[0] == null || this.f5507b[1] == null)) {
                        user.setLocation(((Double) this.f5507b[0]).doubleValue(), ((Double) this.f5507b[1]).doubleValue());
                        return;
                    }
                case 25:
                    if (this.f5507b != null && this.f5507b.length > 1) {
                        user.setAttribute((String) this.f5507b[0], (Number) this.f5507b[1]);
                        return;
                    }
            }
        } catch (Exception e) {
            Logger.e("WebEngage", "Some error occurred while executing queued task of User: " + e.toString());
        }
    }
}
