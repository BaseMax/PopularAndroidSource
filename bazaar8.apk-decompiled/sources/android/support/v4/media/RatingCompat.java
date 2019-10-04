package android.support.v4.media;

import android.media.Rating;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;

public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new m();

    /* renamed from: a  reason: collision with root package name */
    public final int f96a;

    /* renamed from: b  reason: collision with root package name */
    public final float f97b;

    /* renamed from: c  reason: collision with root package name */
    public Object f98c;

    public RatingCompat(int i2, float f2) {
        this.f96a = i2;
        this.f97b = f2;
    }

    public static RatingCompat a(int i2) {
        switch (i2) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return new RatingCompat(i2, -1.0f);
            default:
                return null;
        }
    }

    public static RatingCompat b(boolean z) {
        return new RatingCompat(2, z ? 1.0f : 0.0f);
    }

    public int describeContents() {
        return this.f96a;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("Rating:style=");
        sb.append(this.f96a);
        sb.append(" rating=");
        float f2 = this.f97b;
        if (f2 < 0.0f) {
            str = "unrated";
        } else {
            str = String.valueOf(f2);
        }
        sb.append(str);
        return sb.toString();
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f96a);
        parcel.writeFloat(this.f97b);
    }

    public static RatingCompat a(boolean z) {
        return new RatingCompat(1, z ? 1.0f : 0.0f);
    }

    public static RatingCompat a(int i2, float f2) {
        float f3;
        if (i2 == 3) {
            f3 = 3.0f;
        } else if (i2 == 4) {
            f3 = 4.0f;
        } else if (i2 != 5) {
            Log.e("Rating", "Invalid rating style (" + i2 + ") for a star rating");
            return null;
        } else {
            f3 = 5.0f;
        }
        if (f2 >= 0.0f && f2 <= f3) {
            return new RatingCompat(i2, f2);
        }
        Log.e("Rating", "Trying to set out of range star-based rating");
        return null;
    }

    public static RatingCompat a(float f2) {
        if (f2 >= 0.0f && f2 <= 100.0f) {
            return new RatingCompat(6, f2);
        }
        Log.e("Rating", "Invalid percentage-based rating value");
        return null;
    }

    public static RatingCompat a(Object obj) {
        RatingCompat ratingCompat = null;
        if (obj != null && Build.VERSION.SDK_INT >= 19) {
            Rating rating = (Rating) obj;
            int ratingStyle = rating.getRatingStyle();
            if (rating.isRated()) {
                switch (ratingStyle) {
                    case 1:
                        ratingCompat = a(rating.hasHeart());
                        break;
                    case 2:
                        ratingCompat = b(rating.isThumbUp());
                        break;
                    case 3:
                    case 4:
                    case 5:
                        ratingCompat = a(ratingStyle, rating.getStarRating());
                        break;
                    case 6:
                        ratingCompat = a(rating.getPercentRating());
                        break;
                    default:
                        return null;
                }
            } else {
                ratingCompat = a(ratingStyle);
            }
            ratingCompat.f98c = obj;
        }
        return ratingCompat;
    }
}
