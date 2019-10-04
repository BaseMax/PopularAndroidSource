.class public final Lcom/ebay/common/model/UserDetail$SellerInfo;
.super Ljava/lang/Object;
.source "UserDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/UserDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SellerInfo"
.end annotation


# instance fields
.field public paymentMethod:Ljava/lang/String;

.field public sellerBusinessType:Ljava/lang/String;

.field public sellerPaymentAddress:Lcom/ebay/common/model/UserDetail$Address;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
