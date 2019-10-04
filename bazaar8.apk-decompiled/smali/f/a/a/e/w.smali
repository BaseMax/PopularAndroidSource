.class public final Lf/a/a/e/w;
.super Ljava/lang/Object;
.source "Theme.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ui/Theme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lir/cafebazaar/inline/ui/Theme;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lir/cafebazaar/inline/ui/Theme;
    .locals 1

    .line 2
    new-instance v0, Lir/cafebazaar/inline/ui/Theme;

    invoke-direct {v0, p1}, Lir/cafebazaar/inline/ui/Theme;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf/a/a/e/w;->createFromParcel(Landroid/os/Parcel;)Lir/cafebazaar/inline/ui/Theme;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lir/cafebazaar/inline/ui/Theme;
    .locals 0

    .line 2
    new-array p1, p1, [Lir/cafebazaar/inline/ui/Theme;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf/a/a/e/w;->newArray(I)[Lir/cafebazaar/inline/ui/Theme;

    move-result-object p1

    return-object p1
.end method
