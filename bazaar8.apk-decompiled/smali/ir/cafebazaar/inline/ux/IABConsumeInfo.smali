.class public Lir/cafebazaar/inline/ux/IABConsumeInfo;
.super Lir/cafebazaar/inline/ux/payment/PaymentInfo;
.source "IABConsumeInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lir/cafebazaar/inline/ux/IABConsumeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/a/a/g/a;

    invoke-direct {v0}, Lf/a/a/g/a;-><init>()V

    sput-object v0, Lir/cafebazaar/inline/ux/IABConsumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lir/cafebazaar/inline/ux/payment/PaymentInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lir/cafebazaar/inline/ux/payment/PaymentInfo;-><init>(Landroid/os/Parcel;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lir/cafebazaar/inline/ux/IABConsumeInfo;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lir/cafebazaar/inline/ux/IABConsumeInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lir/cafebazaar/inline/ux/payment/PaymentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lir/cafebazaar/inline/ux/IABConsumeInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
