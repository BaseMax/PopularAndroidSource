package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.passenger.data.models.Transaction;
import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;
import java.util.List;

public class CreditHistoryResponse extends f {
    @c("transactions")
    private List<Transaction> transactionList;

    public List<Transaction> getTransactionList() {
        return this.transactionList;
    }

    public void setTransactionList(List<Transaction> list) {
        this.transactionList = list;
    }

    public String toString() {
        return "CreditHistoryResponse{transactionList=" + this.transactionList + '}';
    }
}
