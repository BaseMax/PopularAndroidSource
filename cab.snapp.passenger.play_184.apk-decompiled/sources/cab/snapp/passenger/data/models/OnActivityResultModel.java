package cab.snapp.passenger.data.models;

import android.content.Intent;

public class OnActivityResultModel {
    private Intent data;
    private int requestCode;
    private int resultCode;

    public OnActivityResultModel() {
    }

    public OnActivityResultModel(int i, int i2, Intent intent) {
        this.requestCode = i;
        this.resultCode = i2;
        this.data = intent;
    }

    public int getRequestCode() {
        return this.requestCode;
    }

    public void setRequestCode(int i) {
        this.requestCode = i;
    }

    public int getResultCode() {
        return this.resultCode;
    }

    public void setResultCode(int i) {
        this.resultCode = i;
    }

    public Intent getData() {
        return this.data;
    }

    public void setData(Intent intent) {
        this.data = intent;
    }

    public String toString() {
        return "OnActivityResultModel{requestCode=" + this.requestCode + ", resultCode=" + this.resultCode + ", data=" + this.data + '}';
    }
}
