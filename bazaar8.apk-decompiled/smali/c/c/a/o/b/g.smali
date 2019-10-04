.class public final Lc/c/a/o/b/g;
.super Ljava/lang/Object;
.source "PersianDatePicker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker$SavedState;
    .locals 2

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker$SavedState;-><init>(Landroid/os/Parcel;Lc/c/a/o/b/f;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/o/b/g;->createFromParcel(Landroid/os/Parcel;)Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker$SavedState;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/o/b/g;->newArray(I)[Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker$SavedState;

    move-result-object p1

    return-object p1
.end method
