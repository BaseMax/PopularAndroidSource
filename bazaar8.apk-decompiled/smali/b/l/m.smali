.class public final Lb/l/m;
.super Ljava/lang/Object;
.source "ObservableChar.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ObservableChar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/databinding/ObservableChar;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/databinding/ObservableChar;
    .locals 1

    .line 2
    new-instance v0, Landroidx/databinding/ObservableChar;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-char p1, p1

    invoke-direct {v0, p1}, Landroidx/databinding/ObservableChar;-><init>(C)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/l/m;->createFromParcel(Landroid/os/Parcel;)Landroidx/databinding/ObservableChar;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/databinding/ObservableChar;
    .locals 0

    .line 2
    new-array p1, p1, [Landroidx/databinding/ObservableChar;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/l/m;->newArray(I)[Landroidx/databinding/ObservableChar;

    move-result-object p1

    return-object p1
.end method
