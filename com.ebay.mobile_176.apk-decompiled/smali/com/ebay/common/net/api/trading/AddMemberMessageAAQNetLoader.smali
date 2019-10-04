.class public Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;
.super Lcom/ebay/common/content/EbaySimpleNetLoader;
.source "AddMemberMessageAAQNetLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/common/content/EbaySimpleNetLoader<",
        "Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

.field private final body:Ljava/lang/String;

.field private final itemId:Ljava/lang/Long;

.field private final parentMessageId:Ljava/lang/String;

.field private final pictureUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final questionType:Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;

.field private final recipient:Ljava/lang/String;

.field private final subject:Ljava/lang/String;

.field private final toPartner:Z


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;ZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            "Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;",
            "Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;",
            "Z",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lcom/ebay/common/content/EbaySimpleNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 34
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;->api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    .line 35
    iput-object p3, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;->questionType:Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;

    .line 36
    iput-boolean p4, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;->toPartner:Z

    .line 37
    iput-object p5, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;->itemId:Ljava/lang/Long;

    .line 38
    iput-object p6, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;->recipient:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;->subject:Ljava/lang/String;

    .line 40
    iput-object p8, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;->body:Ljava/lang/String;

    .line 41
    iput-object p9, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;->pictureUrls:Ljava/util/ArrayList;

    .line 42
    iput-object p10, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;->parentMessageId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/ebay/nautilus/domain/net/EbayRequest;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/net/EbayRequest<",
            "Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQResponse;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v10, Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest;

    iget-object v1, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;->api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    iget-object v2, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;->questionType:Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;

    iget-boolean v3, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;->toPartner:Z

    iget-object v4, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;->itemId:Ljava/lang/Long;

    iget-object v5, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;->recipient:Ljava/lang/String;

    iget-object v6, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;->subject:Ljava/lang/String;

    iget-object v7, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;->body:Ljava/lang/String;

    iget-object v8, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;->pictureUrls:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;->parentMessageId:Ljava/lang/String;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest;-><init>(Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;ZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-object v10
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureUrls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;->pictureUrls:Ljava/util/ArrayList;

    return-object v0
.end method
