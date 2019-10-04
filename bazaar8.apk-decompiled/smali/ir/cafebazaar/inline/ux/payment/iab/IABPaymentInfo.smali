.class public Lir/cafebazaar/inline/ux/payment/iab/IABPaymentInfo;
.super Lir/cafebazaar/inline/ux/payment/PaymentInfo;
.source "IABPaymentInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lir/cafebazaar/inline/ux/payment/iab/IABPaymentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/a/a/g/f/a/c;

    invoke-direct {v0}, Lf/a/a/g/f/a/c;-><init>()V

    sput-object v0, Lir/cafebazaar/inline/ux/payment/iab/IABPaymentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lir/cafebazaar/inline/ux/payment/PaymentInfo;-><init>()V

    const-string v0, "inapp"

    .line 6
    iput-object v0, p0, Lir/cafebazaar/inline/ux/payment/iab/IABPaymentInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lir/cafebazaar/inline/ux/payment/PaymentInfo;-><init>(Landroid/os/Parcel;)V

    const-string v0, "inapp"

    .line 2
    iput-object v0, p0, Lir/cafebazaar/inline/ux/payment/iab/IABPaymentInfo;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lir/cafebazaar/inline/ux/payment/iab/IABPaymentInfo;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lir/cafebazaar/inline/ux/payment/iab/IABPaymentInfo;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lir/cafebazaar/inline/ux/payment/iab/IABPaymentInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lir/cafebazaar/inline/ux/payment/iab/IABPaymentInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lir/cafebazaar/inline/ux/payment/PaymentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lir/cafebazaar/inline/ux/payment/iab/IABPaymentInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lir/cafebazaar/inline/ux/payment/iab/IABPaymentInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
