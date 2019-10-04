.class public final Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;
.super Ljava/lang/Object;
.source "AnswerResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rewrite"
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

.field public items:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$AnswerItems;

.field public matchCount:J

.field public modifiedRequest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;

.field public requestDifference:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RequestDifference;

.field public result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;",
            ">;"
        }
    .end annotation
.end field

.field public trackingInfo:Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

.field public trackingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;",
            ">;"
        }
    .end annotation
.end field

.field public type:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRewriteResult()Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;
    .locals 3

    .line 238
    new-instance v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;-><init>()V

    .line 239
    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;->attribute:Ljava/util/List;

    iput-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;->attribute:Ljava/util/List;

    .line 240
    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;->descriptor:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteDescriptor;

    iput-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;->descriptor:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteDescriptor;

    .line 241
    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;->info:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteInfo;

    iput-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;->info:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteInfo;

    .line 242
    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;->item:Ljava/util/List;

    iput-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;->item:Ljava/util/List;

    .line 243
    iget-wide v1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;->matchCount:J

    iput-wide v1, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;->matchCount:J

    .line 244
    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;->requestDifference:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RequestDifference;

    iput-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;->requestDifference:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RequestDifference;

    .line 245
    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;->type:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;->type:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;->OTHER:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    :goto_0
    iput-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;->type:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    .line 246
    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;->modifiedRequest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;

    iput-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;->modifiedRequest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;

    return-object v0
.end method
