.class public final Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway$a;
.super Ljava/lang/Object;
.source "PaymentEntities.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;",
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

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway$a;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;

    invoke-direct {v0, p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway$a;->createFromParcel(Landroid/os/Parcel;)Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway$a;->newArray(I)[Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;

    move-result-object p1

    return-object p1
.end method
