.class public Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;
.super Ljava/lang/Object;
.source "ItemTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/ItemTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShipmentTrackingDetails"
.end annotation


# instance fields
.field public shipmentTrackingNumber:Ljava/lang/String;

.field public shippingCarrierUsed:Ljava/lang/String;

.field final synthetic this$0:Lcom/ebay/common/model/ItemTransaction;


# direct methods
.method public constructor <init>(Lcom/ebay/common/model/ItemTransaction;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/ebay/common/model/ItemTransaction$ShipmentTrackingDetails;->this$0:Lcom/ebay/common/model/ItemTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
