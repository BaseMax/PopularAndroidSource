package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.passenger.data.models.charge.ChargeHistoryInfo;
import cab.snapp.snappnetwork.model.f;
import java.util.List;

public class ChargeHistoryResponse extends f {
    private boolean last;
    private int number;
    private List<ChargeHistoryInfo> payments;
    private int size;
    private long totalElements;
    private int totalPages;

    public List<ChargeHistoryInfo> getPayments() {
        return this.payments;
    }

    public void setPayments(List<ChargeHistoryInfo> list) {
        this.payments = list;
    }

    public int getTotalPages() {
        return this.totalPages;
    }

    public void setTotalPages(int i) {
        this.totalPages = i;
    }

    public long getTotalElements() {
        return this.totalElements;
    }

    public void setTotalElements(long j) {
        this.totalElements = j;
    }

    public int getNumber() {
        return this.number;
    }

    public void setNumber(int i) {
        this.number = i;
    }

    public int getSize() {
        return this.size;
    }

    public void setSize(int i) {
        this.size = i;
    }

    public boolean isLast() {
        return this.last;
    }

    public void setLast(boolean z) {
        this.last = z;
    }
}
