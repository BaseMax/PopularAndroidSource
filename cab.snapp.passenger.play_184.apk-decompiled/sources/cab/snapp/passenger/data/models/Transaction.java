package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class Transaction {
    @c("created_at")
    private String createdAt;
    @c("creditor")
    private double creditor;
    @c("current_balance")
    private String currentBalance;
    @c("debtor")
    private double debtor;
    @c("description")
    private String description;
    @c("driver_id")
    private String driverId;
    @c("relation_id")
    private String relationId;
    @c("transaction_reference")
    private String transactionReference;
    @c("transaction_type")
    private int transactionType;

    public String getDriverId() {
        return this.driverId;
    }

    public void setDriverId(String str) {
        this.driverId = str;
    }

    public int getTransactionType() {
        return this.transactionType;
    }

    public void setTransactionType(int i) {
        this.transactionType = i;
    }

    public String getTransactionReference() {
        return this.transactionReference;
    }

    public void setTransactionReference(String str) {
        this.transactionReference = str;
    }

    public String getRelationId() {
        return this.relationId;
    }

    public void setRelationId(String str) {
        this.relationId = str;
    }

    public double getCreditor() {
        return this.creditor;
    }

    public void setCreditor(double d) {
        this.creditor = d;
    }

    public double getDebtor() {
        return this.debtor;
    }

    public void setDebtor(double d) {
        this.debtor = d;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public String getCurrentBalance() {
        return this.currentBalance;
    }

    public void setCurrentBalance(String str) {
        this.currentBalance = str;
    }

    public String getCreatedAt() {
        return this.createdAt;
    }

    public void setCreatedAt(String str) {
        this.createdAt = str;
    }

    public String toString() {
        return "Transaction{driverId='" + this.driverId + '\'' + ", transactionType=" + this.transactionType + ", transactionReference=" + this.transactionReference + ", relationId='" + this.relationId + '\'' + ", creditor=" + this.creditor + ", debtor=" + this.debtor + ", description='" + this.description + '\'' + ", currentBalance='" + this.currentBalance + '\'' + ", createdAt='" + this.createdAt + '\'' + '}';
    }
}
