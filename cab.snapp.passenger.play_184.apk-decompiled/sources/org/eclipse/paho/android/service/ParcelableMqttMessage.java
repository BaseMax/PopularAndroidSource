package org.eclipse.paho.android.service;

import android.os.Parcel;
import android.os.Parcelable;
import org.eclipse.paho.a.a.q;

public class ParcelableMqttMessage extends q implements Parcelable {
    public static final Parcelable.Creator<ParcelableMqttMessage> CREATOR = new Parcelable.Creator<ParcelableMqttMessage>() {
        public final ParcelableMqttMessage createFromParcel(Parcel parcel) {
            return new ParcelableMqttMessage(parcel);
        }

        public final ParcelableMqttMessage[] newArray(int i) {
            return new ParcelableMqttMessage[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    String f8817a = null;

    public int describeContents() {
        return 0;
    }

    ParcelableMqttMessage(q qVar) {
        super(qVar.getPayload());
        setQos(qVar.getQos());
        setRetained(qVar.isRetained());
        setDuplicate(qVar.isDuplicate());
    }

    ParcelableMqttMessage(Parcel parcel) {
        super(parcel.createByteArray());
        setQos(parcel.readInt());
        boolean[] createBooleanArray = parcel.createBooleanArray();
        setRetained(createBooleanArray[0]);
        setDuplicate(createBooleanArray[1]);
        this.f8817a = parcel.readString();
    }

    public String getMessageId() {
        return this.f8817a;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByteArray(getPayload());
        parcel.writeInt(getQos());
        parcel.writeBooleanArray(new boolean[]{isRetained(), isDuplicate()});
        parcel.writeString(this.f8817a);
    }
}
