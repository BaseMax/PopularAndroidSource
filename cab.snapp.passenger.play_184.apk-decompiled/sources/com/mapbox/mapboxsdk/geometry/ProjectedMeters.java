package com.mapbox.mapboxsdk.geometry;

import android.os.Parcel;
import android.os.Parcelable;

public class ProjectedMeters implements Parcelable {
    public static final Parcelable.Creator<ProjectedMeters> CREATOR = new Parcelable.Creator<ProjectedMeters>() {
        public final ProjectedMeters createFromParcel(Parcel parcel) {
            return new ProjectedMeters(parcel);
        }

        public final ProjectedMeters[] newArray(int i) {
            return new ProjectedMeters[i];
        }
    };
    private double easting;
    private double northing;

    public int describeContents() {
        return 0;
    }

    public ProjectedMeters(double d, double d2) {
        this.northing = d;
        this.easting = d2;
    }

    public ProjectedMeters(ProjectedMeters projectedMeters) {
        this.northing = projectedMeters.northing;
        this.easting = projectedMeters.easting;
    }

    private ProjectedMeters(Parcel parcel) {
        this.northing = parcel.readDouble();
        this.easting = parcel.readDouble();
    }

    public double getNorthing() {
        return this.northing;
    }

    public double getEasting() {
        return this.easting;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            ProjectedMeters projectedMeters = (ProjectedMeters) obj;
            return Double.compare(projectedMeters.easting, this.easting) == 0 && Double.compare(projectedMeters.northing, this.northing) == 0;
        }
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.easting);
        long doubleToLongBits2 = Double.doubleToLongBits(this.northing);
        return (((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
    }

    public String toString() {
        return "ProjectedMeters [northing=" + this.northing + ", easting=" + this.easting + "]";
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeDouble(this.northing);
        parcel.writeDouble(this.easting);
    }
}
