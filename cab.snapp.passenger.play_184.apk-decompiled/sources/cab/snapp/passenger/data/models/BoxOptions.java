package cab.snapp.passenger.data.models;

public class BoxOptions {
    String address;
    String description;
    String fullName;
    boolean paidByRecipient;
    String phoneNumber;

    public String getFullName() {
        return this.fullName;
    }

    public void setFullName(String str) {
        this.fullName = str;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public void setPhoneNumber(String str) {
        this.phoneNumber = str;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public boolean isPaidByRecipient() {
        return this.paidByRecipient;
    }

    public void setPaidByRecipient(boolean z) {
        this.paidByRecipient = z;
    }
}
