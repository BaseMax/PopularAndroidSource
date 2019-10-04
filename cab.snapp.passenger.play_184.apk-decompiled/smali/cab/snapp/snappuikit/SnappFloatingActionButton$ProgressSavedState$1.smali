.class final Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;
    .locals 2

    .line 1594
    new-instance v0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1591
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;
    .locals 0

    .line 1599
    new-array p1, p1, [Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1591
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState$1;->newArray(I)[Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;

    move-result-object p1

    return-object p1
.end method
