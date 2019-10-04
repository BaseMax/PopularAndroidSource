package cab.snapp.passenger.data.models.charge;

import com.google.gson.a.c;

public class ChargeHistoryInfo {
    @c("amount")
    private long amount;
    @c("chargeAmount")
    private Long chargeAmount;
    @c("gatewayType")
    private PaymentGatewayType gatewayType;
    @c("id")
    private long id;
    @c("invoiceCode")
    private String invoiceCode;
    @c("mobileNumber")
    private String mobileNumber;
    @c("operator")
    private SIMChargeOperator operator;
    @c("paidDate")
    private String paidDate;
    @c("paymentStatus")
    private PaymentStatus paymentStatus;
    @c("persianPaidDate")
    private String persianPaidDate;
    @c("displayType")
    private String persianType;
    @c("type")
    private SIMChargeType type;
    @c("userId")
    private long userId;

    public long getId() {
        return this.id;
    }

    public void setId(long j) {
        this.id = j;
    }

    public long getUserId() {
        return this.userId;
    }

    public void setUserId(long j) {
        this.userId = j;
    }

    public long getAmount() {
        return this.amount;
    }

    public void setAmount(long j) {
        this.amount = j;
    }

    public String getPaidDate() {
        return this.paidDate;
    }

    public void setPaidDate(String str) {
        this.paidDate = str;
    }

    public String getInvoiceCode() {
        return this.invoiceCode;
    }

    public void setInvoiceCode(String str) {
        this.invoiceCode = str;
    }

    public PaymentGatewayType getGatewayType() {
        return this.gatewayType;
    }

    public void setGatewayType(PaymentGatewayType paymentGatewayType) {
        this.gatewayType = paymentGatewayType;
    }

    public PaymentStatus getPaymentStatus() {
        return this.paymentStatus;
    }

    public void setPaymentStatus(PaymentStatus paymentStatus2) {
        this.paymentStatus = paymentStatus2;
    }

    public Long getChargeAmount() {
        return this.chargeAmount;
    }

    public void setChargeAmount(Long l) {
        this.chargeAmount = l;
    }

    public String getMobileNumber() {
        return this.mobileNumber;
    }

    public void setMobileNumber(String str) {
        this.mobileNumber = str;
    }

    public SIMChargeType getType() {
        return this.type;
    }

    public void setType(SIMChargeType sIMChargeType) {
        this.type = sIMChargeType;
    }

    public String getPersianType() {
        return this.persianType;
    }

    public void setPersianType(String str) {
        this.persianType = str;
    }

    public SIMChargeOperator getOperator() {
        return this.operator;
    }

    public void setOperator(SIMChargeOperator sIMChargeOperator) {
        this.operator = sIMChargeOperator;
    }

    public String getPersianPaidDate() {
        return this.persianPaidDate;
    }

    public void setPersianPaidDate(String str) {
        this.persianPaidDate = str;
    }
}
