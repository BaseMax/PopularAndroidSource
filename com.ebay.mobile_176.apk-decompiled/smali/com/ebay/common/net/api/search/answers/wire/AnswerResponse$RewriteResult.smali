.class public final Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;
.super Ljava/lang/Object;
.source "AnswerResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RewriteResult"
.end annotation


# instance fields
.field public attribute:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResultAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public descriptor:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteDescriptor;

.field public info:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteInfo;

.field public item:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/search/SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field public matchCount:J

.field public modifiedRequest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;

.field public requestDifference:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RequestDifference;

.field public type:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isPromotedToPrimary()Z
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;->descriptor:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteDescriptor;

    if-eqz v0, :cond_0

    .line 270
    sget-object v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;->FULL:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;->descriptor:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteDescriptor;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteDescriptor;->promotedToMainResults:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;

    invoke-virtual {v0, v1}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
