.class public Lcom/ebay/common/UserCache$PaidStatusAndTime;
.super Ljava/lang/Object;
.source "UserCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/UserCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaidStatusAndTime"
.end annotation


# instance fields
.field public apiTime:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public timestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iput-object p1, p0, Lcom/ebay/common/UserCache$PaidStatusAndTime;->status:Ljava/lang/String;

    .line 436
    iput-object p2, p0, Lcom/ebay/common/UserCache$PaidStatusAndTime;->apiTime:Ljava/lang/String;

    .line 437
    iput-object p3, p0, Lcom/ebay/common/UserCache$PaidStatusAndTime;->timestamp:Ljava/lang/Long;

    return-void
.end method
