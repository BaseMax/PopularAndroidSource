.class Lcab/snapp/snappuikit/ratingbar/SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcab/snapp/snappuikit/ratingbar/SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcab/snapp/snappuikit/ratingbar/SavedState$1;

    invoke-direct {v0}, Lcab/snapp/snappuikit/ratingbar/SavedState$1;-><init>()V

    sput-object v0, Lcab/snapp/snappuikit/ratingbar/SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcab/snapp/snappuikit/ratingbar/SavedState;->a:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/ratingbar/SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public getRating()F
    .locals 1

    .line 44
    iget v0, p0, Lcab/snapp/snappuikit/ratingbar/SavedState;->a:F

    return v0
.end method

.method public setRating(F)V
    .locals 0

    .line 48
    iput p1, p0, Lcab/snapp/snappuikit/ratingbar/SavedState;->a:F

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 28
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 29
    iget p2, p0, Lcab/snapp/snappuikit/ratingbar/SavedState;->a:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
