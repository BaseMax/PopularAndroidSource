.class public Lcom/ebay/common/model/mdns/DeviceHandle;
.super Ljava/lang/Object;
.source "DeviceHandle.java"


# instance fields
.field public final clientId:Ljava/lang/String;

.field public final deviceToken:Ljava/lang/String;

.field public final deviceType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ebay/common/model/mdns/DeviceHandle;->deviceToken:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/ebay/common/model/mdns/DeviceHandle;->deviceType:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/ebay/common/model/mdns/DeviceHandle;->clientId:Ljava/lang/String;

    return-void
.end method
