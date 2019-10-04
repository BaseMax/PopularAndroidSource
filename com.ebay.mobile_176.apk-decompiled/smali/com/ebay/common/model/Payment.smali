.class public Lcom/ebay/common/model/Payment;
.super Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;
.source "Payment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/Payment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public amount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public feeOrCreditAmount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public status:Ljava/lang/String;

.field public time:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/ebay/common/model/Payment$1;

    invoke-direct {v0}, Lcom/ebay/common/model/Payment$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/Payment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;-><init>()V

    return-void
.end method
