package cab.snapp.passenger.data.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.a.c;

public class PlateNumber implements Parcelable {
    public static final Parcelable.Creator<PlateNumber> CREATOR = new Parcelable.Creator<PlateNumber>() {
        public final PlateNumber createFromParcel(Parcel parcel) {
            return new PlateNumber(parcel);
        }

        public final PlateNumber[] newArray(int i) {
            return new PlateNumber[i];
        }
    };
    @c("character")
    private String character;
    @c("iran_id")
    private String iranId;
    @c("part_a")
    private String partA;
    @c("part_b")
    private String partB;
    @c("type")
    private int type;

    public int describeContents() {
        return 0;
    }

    public PlateNumber() {
    }

    protected PlateNumber(Parcel parcel) {
        this.partA = parcel.readString();
        this.character = parcel.readString();
        this.partB = parcel.readString();
        this.iranId = parcel.readString();
        this.type = parcel.readInt();
    }

    public String getPartA() {
        return this.partA;
    }

    public void setPartA(String str) {
        this.partA = str;
    }

    public String getCharacter() {
        return this.character;
    }

    public void setCharacter(String str) {
        this.character = str;
    }

    public String getPartB() {
        return this.partB;
    }

    public void setPartB(String str) {
        this.partB = str;
    }

    public String getIranId() {
        return this.iranId;
    }

    public void setIranId(String str) {
        this.iranId = str;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String toString() {
        return "PlateNumber{partA='" + this.partA + '\'' + ", character='" + this.character + '\'' + ", partB='" + this.partB + '\'' + ", iranId='" + this.iranId + '\'' + ", type=" + this.type + '}';
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.partA);
        parcel.writeString(this.character);
        parcel.writeString(this.partB);
        parcel.writeString(this.iranId);
        parcel.writeInt(this.type);
    }
}
