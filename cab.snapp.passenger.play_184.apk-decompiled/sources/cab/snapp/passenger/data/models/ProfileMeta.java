package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class ProfileMeta {
    @c("passenger_address")
    private String address;
    @c("passenger_birthdate")
    private String birthDate;
    @c("passenger_gender")
    private Integer gender;

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public String getBirthDate() {
        return this.birthDate;
    }

    public void setBirthDate(String str) {
        this.birthDate = str;
    }

    public Integer getGender() {
        return this.gender;
    }

    public void setGender(Integer num) {
        this.gender = num;
    }
}
