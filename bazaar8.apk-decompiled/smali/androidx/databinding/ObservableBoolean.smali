.class public Landroidx/databinding/ObservableBoolean;
.super Lb/l/b;
.source "ObservableBoolean.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/databinding/ObservableBoolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final serialVersionUID:J = 0x1L


# instance fields
.field public mValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb/l/k;

    invoke-direct {v0}, Lb/l/k;-><init>()V

    sput-object v0, Landroidx/databinding/ObservableBoolean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lb/l/b;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/l/b;-><init>()V

    .line 2
    iput-boolean p1, p0, Landroidx/databinding/ObservableBoolean;->mValue:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Landroidx/databinding/ObservableBoolean;->mValue:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
