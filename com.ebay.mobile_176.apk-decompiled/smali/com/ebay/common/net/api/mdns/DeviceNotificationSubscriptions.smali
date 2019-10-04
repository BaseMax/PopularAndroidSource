.class public Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;
.super Lcom/ebay/nautilus/domain/net/dataobject/BaseApiResponse;
.source "DeviceNotificationSubscriptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions$Preference;
    }
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public isActive:Z

.field public language:Ljava/lang/String;

.field public preferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions$Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/dataobject/BaseApiResponse;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;->preferences:Ljava/util/List;

    return-void
.end method
