package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;

public class InRidePaymentResponse extends f {
    @c("callback_url")
    private String callBackUrl;
    @c("code")
    private String code;
    @c("message")
    private String message;
    @c("redirect_url")
    private String redirectUrl;
    @c("status")
    private Integer status;

    public String getRedirectUrl() {
        return this.redirectUrl;
    }

    public void setRedirectUrl(String str) {
        this.redirectUrl = str;
    }

    public String getCallBackUrl() {
        return this.callBackUrl;
    }

    public void setCallBackUrl(String str) {
        this.callBackUrl = str;
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public Integer getStatus() {
        return this.status;
    }

    public void setStatus(Integer num) {
        this.status = num;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public String toString() {
        return "InRidePaymentResponse{redirectUrl='" + this.redirectUrl + '\'' + ", callBackUrl='" + this.callBackUrl + '\'' + ", status=" + this.status + ", code='" + this.code + '\'' + ", message='" + this.message + '\'' + '}';
    }
}
