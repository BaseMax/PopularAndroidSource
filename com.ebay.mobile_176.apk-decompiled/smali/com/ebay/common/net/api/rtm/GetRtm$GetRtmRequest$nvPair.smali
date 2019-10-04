.class Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;
.super Ljava/lang/Object;
.source "GetRtm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "nvPair"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;->this$0:Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p2, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;->name:Ljava/lang/String;

    .line 303
    iput-object p3, p0, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest$nvPair;->value:Ljava/lang/String;

    return-void
.end method
