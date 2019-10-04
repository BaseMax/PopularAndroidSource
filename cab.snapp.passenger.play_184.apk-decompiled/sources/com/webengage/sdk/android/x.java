package com.webengage.sdk.android;

import com.webengage.sdk.android.utils.Gender;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Queue;

class x implements User {

    /* renamed from: a  reason: collision with root package name */
    Queue<ae> f5605a = null;

    x(Queue<ae> queue) {
        this.f5605a = queue;
    }

    public void deleteAttribute(String str) {
        this.f5605a.add(new an(19, str));
    }

    public void deleteAttributes(List<String> list) {
        this.f5605a.add(new an(20, list));
    }

    public void loggedIn(String str) {
        login(str);
    }

    public void loggedOut() {
        logout();
    }

    public void login(String str) {
        this.f5605a.add(new an(21, str));
    }

    public void logout() {
        this.f5605a.add(new an(22, new Object[0]));
    }

    public void setAttribute(String str, Boolean bool) {
        this.f5605a.add(new an(17, str, bool));
    }

    public void setAttribute(String str, Number number) {
        this.f5605a.add(new an(25, str, number));
    }

    public void setAttribute(String str, String str2) {
        this.f5605a.add(new an(16, str, str2));
    }

    public void setAttribute(String str, Date date) {
        this.f5605a.add(new an(13, str, date));
    }

    public void setAttribute(String str, List<? extends Object> list) {
        this.f5605a.add(new an(14, str, list));
    }

    public void setAttributes(Map<String, ? extends Object> map) {
        this.f5605a.add(new an(15, map));
    }

    public void setBirthDate(Integer num, Integer num2, Integer num3) {
        this.f5605a.add(new an(3, num, num2, num3));
    }

    public void setBirthDate(String str) {
        this.f5605a.add(new an(4, str));
    }

    public void setCompany(String str) {
        this.f5605a.add(new an(10, str));
    }

    public void setEmail(String str) {
        this.f5605a.add(new an(1, str));
    }

    public void setFirstName(String str) {
        this.f5605a.add(new an(7, str));
    }

    public void setGender(Gender gender) {
        this.f5605a.add(new an(9, gender));
    }

    public void setHashedEmail(String str) {
        this.f5605a.add(new an(2, str));
    }

    public void setHashedPhoneNumber(String str) {
        this.f5605a.add(new an(6, str));
    }

    public void setLastName(String str) {
        this.f5605a.add(new an(8, str));
    }

    public void setLocation(double d, double d2) {
        this.f5605a.add(new an(24, Double.valueOf(d), Double.valueOf(d2)));
    }

    public void setOptIn(Channel channel, boolean z) {
        this.f5605a.add(new an(23, channel, Boolean.valueOf(z)));
    }

    public void setPhoneNumber(String str) {
        this.f5605a.add(new an(5, str));
    }

    public void setUserProfile(UserProfile userProfile) {
        this.f5605a.add(new an(0, userProfile));
    }
}
