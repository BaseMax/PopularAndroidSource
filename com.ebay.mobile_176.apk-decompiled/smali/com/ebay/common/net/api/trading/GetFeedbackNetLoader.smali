.class public Lcom/ebay/common/net/api/trading/GetFeedbackNetLoader;
.super Lcom/ebay/common/content/EbaySimpleNetLoader;
.source "GetFeedbackNetLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/common/content/EbaySimpleNetLoader<",
        "Lcom/ebay/nautilus/domain/net/api/trading/GetFeedbackResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

.field private final commentType:Lcom/ebay/nautilus/domain/data/trading/CommentType;

.field private final feedbackType:Lcom/ebay/nautilus/domain/data/trading/FeedbackType;

.field private final page:I

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Ljava/lang/String;ILcom/ebay/nautilus/domain/data/trading/CommentType;Lcom/ebay/nautilus/domain/data/trading/FeedbackType;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/ebay/common/content/EbaySimpleNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 24
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetFeedbackNetLoader;->api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    .line 25
    iput-object p3, p0, Lcom/ebay/common/net/api/trading/GetFeedbackNetLoader;->userId:Ljava/lang/String;

    .line 26
    iput p4, p0, Lcom/ebay/common/net/api/trading/GetFeedbackNetLoader;->page:I

    .line 27
    iput-object p5, p0, Lcom/ebay/common/net/api/trading/GetFeedbackNetLoader;->commentType:Lcom/ebay/nautilus/domain/data/trading/CommentType;

    .line 28
    iput-object p6, p0, Lcom/ebay/common/net/api/trading/GetFeedbackNetLoader;->feedbackType:Lcom/ebay/nautilus/domain/data/trading/FeedbackType;

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/ebay/nautilus/domain/net/EbayRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/net/EbayRequest<",
            "Lcom/ebay/nautilus/domain/net/api/trading/GetFeedbackResponse;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v6, Lcom/ebay/nautilus/domain/net/api/trading/GetFeedbackRequest;

    iget-object v1, p0, Lcom/ebay/common/net/api/trading/GetFeedbackNetLoader;->api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    iget-object v2, p0, Lcom/ebay/common/net/api/trading/GetFeedbackNetLoader;->userId:Ljava/lang/String;

    iget v3, p0, Lcom/ebay/common/net/api/trading/GetFeedbackNetLoader;->page:I

    iget-object v4, p0, Lcom/ebay/common/net/api/trading/GetFeedbackNetLoader;->commentType:Lcom/ebay/nautilus/domain/data/trading/CommentType;

    iget-object v5, p0, Lcom/ebay/common/net/api/trading/GetFeedbackNetLoader;->feedbackType:Lcom/ebay/nautilus/domain/data/trading/FeedbackType;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ebay/nautilus/domain/net/api/trading/GetFeedbackRequest;-><init>(Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Ljava/lang/String;ILcom/ebay/nautilus/domain/data/trading/CommentType;Lcom/ebay/nautilus/domain/data/trading/FeedbackType;)V

    return-object v6
.end method
