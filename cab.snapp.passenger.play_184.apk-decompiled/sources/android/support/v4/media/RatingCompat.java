package android.support.v4.media;

import android.media.Rating;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;

public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new Parcelable.Creator<RatingCompat>() {
        public final RatingCompat createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readInt(), parcel.readFloat());
        }

        public final RatingCompat[] newArray(int i) {
            return new RatingCompat[i];
        }
    };
    public static final int RATING_3_STARS = 3;
    public static final int RATING_4_STARS = 4;
    public static final int RATING_5_STARS = 5;
    public static final int RATING_HEART = 1;
    public static final int RATING_NONE = 0;
    public static final int RATING_PERCENTAGE = 6;
    public static final int RATING_THUMB_UP_DOWN = 2;

    /* renamed from: a  reason: collision with root package name */
    private final int f64a;

    /* renamed from: b  reason: collision with root package name */
    private final float f65b;
    private Object c;

    RatingCompat(int i, float f) {
        this.f64a = i;
        this.f65b = f;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Rating:style=");
        sb.append(this.f64a);
        sb.append(" rating=");
        float f = this.f65b;
        if (f < 0.0f) {
            str = "unrated";
        } else {
            str = String.valueOf(f);
        }
        sb.append(str);
        return sb.toString();
    }

    public final int describeContents() {
        return this.f64a;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f64a);
        parcel.writeFloat(this.f65b);
    }

    public static RatingCompat newUnratedRating(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return new RatingCompat(i, -1.0f);
            default:
                return null;
        }
    }

    public static RatingCompat newHeartRating(boolean z) {
        return new RatingCompat(1, z ? 1.0f : 0.0f);
    }

    public static RatingCompat newThumbRating(boolean z) {
        return new RatingCompat(2, z ? 1.0f : 0.0f);
    }

    public static RatingCompat newStarRating(int i, float f) {
        float f2;
        if (i == 3) {
            f2 = 3.0f;
        } else if (i == 4) {
            f2 = 4.0f;
        } else if (i != 5) {
            StringBuilder sb = new StringBuilder("Invalid rating style (");
            sb.append(i);
            sb.append(") for a star rating");
            return null;
        } else {
            f2 = 5.0f;
        }
        if (f < 0.0f || f > f2) {
            return null;
        }
        return new RatingCompat(i, f);
    }

    public static RatingCompat newPercentageRating(float f) {
        if (f < 0.0f || f > 100.0f) {
            return null;
        }
        return new RatingCompat(6, f);
    }

    public final boolean isRated() {
        return this.f65b >= 0.0f;
    }

    public final int getRatingStyle() {
        return this.f64a;
    }

    public final boolean hasHeart() {
        return this.f64a == 1 && this.f65b == 1.0f;
    }

    public final boolean isThumbUp() {
        if (this.f64a == 2 && this.f65b == 1.0f) {
            return true;
        }
        return false;
    }

    public final float getStarRating() {
        int i = this.f64a;
        if ((i == 3 || i == 4 || i == 5) && isRated()) {
            return this.f65b;
        }
        return -1.0f;
    }

    public final float getPercentRating() {
        if (this.f64a != 6 || !isRated()) {
            return -1.0f;
        }
        return this.f65b;
    }

    public static RatingCompat fromRating(Object obj) {
        RatingCompat ratingCompat = null;
        if (obj != null && Build.VERSION.SDK_INT >= 19) {
            Rating rating = (Rating) obj;
            int ratingStyle = rating.getRatingStyle();
            if (rating.isRated()) {
                switch (ratingStyle) {
                    case 1:
                        ratingCompat = newHeartRating(rating.hasHeart());
                        break;
                    case 2:
                        ratingCompat = newThumbRating(rating.isThumbUp());
                        break;
                    case 3:
                    case 4:
                    case 5:
                        ratingCompat = newStarRating(ratingStyle, rating.getStarRating());
                        break;
                    case 6:
                        ratingCompat = newPercentageRating(rating.getPercentRating());
                        break;
                    default:
                        return null;
                }
            } else {
                ratingCompat = newUnratedRating(ratingStyle);
            }
            ratingCompat.c = obj;
        }
        return ratingCompat;
    }

    public final Object getRating() {
        if (this.c == null && Build.VERSION.SDK_INT >= 19) {
            if (isRated()) {
                int i = this.f64a;
                switch (i) {
                    case 1:
                        this.c = Rating.newHeartRating(hasHeart());
                        break;
                    case 2:
                        this.c = Rating.newThumbRating(isThumbUp());
                        break;
                    case 3:
                    case 4:
                    case 5:
                        this.c = Rating.newStarRating(i, getStarRating());
                        break;
                    case 6:
                        this.c = Rating.newPercentageRating(getPercentRating());
                        break;
                    default:
                        return null;
                }
            } else {
                this.c = Rating.newUnratedRating(this.f64a);
            }
        }
        return this.c;
    }
}
