.class public Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;
.super Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;
.source "LandingPageAnswerSrpListItem.java"


# instance fields
.field public final brandImage:Ljava/lang/String;

.field public final deeplink:Ljava/lang/String;

.field public final eventType:Ljava/lang/String;

.field public final landingPageUrl:Ljava/lang/String;

.field public final primeImage:Ljava/lang/String;

.field public final primeText:Ljava/lang/String;

.field public final rppEventDisplayName:Ljava/lang/String;

.field public final rppEventId:Ljava/lang/String;

.field public final rppEventImageUrl:Ljava/lang/String;

.field public final subText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAnswer;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;)V
    .locals 6
    .param p1    # Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAnswer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAnswer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;",
            ">;)V"
        }
    .end annotation

    .line 41
    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->LANDING_PAGE_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;-><init>(Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;)V

    .line 43
    iget-object p1, p1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAnswer;->action:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAction;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 47
    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->primeImage:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->subText:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->primeText:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->eventType:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->brandImage:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->rppEventImageUrl:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->rppEventDisplayName:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->rppEventId:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->landingPageUrl:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->deeplink:Ljava/lang/String;

    goto :goto_2

    .line 62
    :cond_0
    iget-object p3, p1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAction;->overlay:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageOverlay;

    if-nez p3, :cond_1

    .line 65
    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->primeImage:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->subText:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->primeText:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->eventType:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->brandImage:Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_1
    iget-object p3, p1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAction;->overlay:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageOverlay;

    iget-object p3, p3, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageOverlay;->primeImage:Ljava/lang/String;

    iput-object p3, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->primeImage:Ljava/lang/String;

    .line 74
    iget-object p3, p1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAction;->overlay:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageOverlay;

    iget-object p3, p3, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageOverlay;->subText:Ljava/lang/String;

    iput-object p3, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->subText:Ljava/lang/String;

    .line 75
    iget-object p3, p1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAction;->overlay:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageOverlay;

    iget-object p3, p3, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageOverlay;->primeText:Ljava/lang/String;

    iput-object p3, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->primeText:Ljava/lang/String;

    .line 76
    iget-object p3, p1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAction;->overlay:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageOverlay;

    iget-object p3, p3, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageOverlay;->eventType:Ljava/lang/String;

    iput-object p3, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->eventType:Ljava/lang/String;

    .line 77
    iget-object p3, p1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAction;->overlay:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageOverlay;

    iget-object p3, p3, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageOverlay;->brandImage:Ljava/lang/String;

    iput-object p3, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->brandImage:Ljava/lang/String;

    .line 79
    :goto_0
    iget-object p3, p1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAction;->queryAction:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageQueryAction;

    if-nez p3, :cond_2

    .line 82
    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->rppEventImageUrl:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->rppEventDisplayName:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->rppEventId:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->landingPageUrl:Ljava/lang/String;

    goto :goto_1

    .line 89
    :cond_2
    iget-object p2, p1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAction;->queryAction:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageQueryAction;

    iget-object p2, p2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageQueryAction;->rppEventImageUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->rppEventImageUrl:Ljava/lang/String;

    .line 90
    iget-object p2, p1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAction;->queryAction:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageQueryAction;

    iget-object p2, p2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageQueryAction;->rppEventDisplayName:Ljava/lang/String;

    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->rppEventDisplayName:Ljava/lang/String;

    .line 91
    iget-object p2, p1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAction;->queryAction:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageQueryAction;

    iget-object p2, p2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageQueryAction;->rppEventId:Ljava/lang/String;

    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->rppEventId:Ljava/lang/String;

    .line 92
    iget-object p2, p1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAction;->queryAction:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageQueryAction;

    iget-object p2, p2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageQueryAction;->landingPage:Ljava/lang/String;

    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->landingPageUrl:Ljava/lang/String;

    .line 101
    :goto_1
    iget-object p1, p1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAction;->deeplink:Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->deeplink:Ljava/lang/String;

    :goto_2
    return-void
.end method
