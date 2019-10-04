package cab.snapp.passenger.data.models.ride_rating;

import com.google.gson.a.c;

public class RideRatingReason {
    @c("code")
    int code;
    @c("message")
    String message;

    public int getCode() {
        return this.code;
    }

    public void setCode(int i) {
        this.code = i;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public String toString() {
        return "RideRatingReason{code=" + this.code + ", message='" + this.message + '\'' + '}';
    }
}
