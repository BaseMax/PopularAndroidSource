.class public final Lf/a/a/d/d;
.super Ljava/lang/Object;
.source "InlineUser.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/platform/InlineUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lir/cafebazaar/inline/platform/InlineUser;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lir/cafebazaar/inline/platform/InlineUser;
    .locals 1

    .line 2
    new-instance v0, Lir/cafebazaar/inline/platform/InlineUser;

    invoke-direct {v0, p1}, Lir/cafebazaar/inline/platform/InlineUser;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf/a/a/d/d;->createFromParcel(Landroid/os/Parcel;)Lir/cafebazaar/inline/platform/InlineUser;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lir/cafebazaar/inline/platform/InlineUser;
    .locals 0

    .line 2
    new-array p1, p1, [Lir/cafebazaar/inline/platform/InlineUser;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf/a/a/d/d;->newArray(I)[Lir/cafebazaar/inline/platform/InlineUser;

    move-result-object p1

    return-object p1
.end method
