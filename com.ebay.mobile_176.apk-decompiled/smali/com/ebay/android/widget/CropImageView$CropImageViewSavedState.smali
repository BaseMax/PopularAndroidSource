.class public Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;
.super Landroid/view/View$BaseSavedState;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/android/widget/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CropImageViewSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field cropRect:Landroid/graphics/Rect;

.field isInCropMode:Z

.field mScale:F

.field rotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1093
    new-instance v0, Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState$1;

    invoke-direct {v0}, Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState$1;-><init>()V

    sput-object v0, Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1076
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1077
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;->rotation:I

    .line 1078
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;->mScale:F

    .line 1079
    const-class v0, Lcom/ebay/android/widget/CropImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;->cropRect:Landroid/graphics/Rect;

    .line 1080
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;->isInCropMode:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/ebay/android/widget/CropImageView$1;)V
    .locals 0

    .line 1062
    invoke-direct {p0, p1}, Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 1071
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1086
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1087
    iget v0, p0, Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;->rotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1088
    iget v0, p0, Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;->mScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1089
    iget-object v0, p0, Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;->cropRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1090
    iget-boolean p2, p0, Lcom/ebay/android/widget/CropImageView$CropImageViewSavedState;->isInCropMode:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
