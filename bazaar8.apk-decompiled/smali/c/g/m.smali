.class public final Lc/g/m;
.super Ljava/lang/Object;
.source "TitlePageIndicator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/viewpagerindicator/TitlePageIndicator$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/viewpagerindicator/TitlePageIndicator$SavedState;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/viewpagerindicator/TitlePageIndicator$SavedState;
    .locals 2

    .line 2
    new-instance v0, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;-><init>(Landroid/os/Parcel;Lc/g/l;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/g/m;->createFromParcel(Landroid/os/Parcel;)Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/viewpagerindicator/TitlePageIndicator$SavedState;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/g/m;->newArray(I)[Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    move-result-object p1

    return-object p1
.end method
