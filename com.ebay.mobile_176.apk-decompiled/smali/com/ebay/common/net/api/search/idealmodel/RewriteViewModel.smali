.class public Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;
.super Ljava/lang/Object;
.source "RewriteViewModel.java"


# instance fields
.field public isAutoRun:Z

.field public isRecoursable:Z

.field public promotedToPrimary:Z

.field public rewriteMessage:Ljava/lang/String;

.field public rewriteType:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

.field public searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assembleMadlanDisplayString(Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteMessage;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteMessage;->userMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteMessage;->userMessage:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteMessage;->parameters:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteMessage;->parameters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 48
    iget-object p0, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteMessage;->parameters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$NameAndValue;

    .line 50
    iget-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$NameAndValue;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$NameAndValue;->value:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$NameAndValue;->name:Ljava/lang/String;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$NameAndValue;->value:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public static instanceFrom(Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;Lcom/ebay/common/model/search/EbayCategoryHistogram;)Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;
    .locals 4

    .line 21
    new-instance v0, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;-><init>()V

    .line 23
    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;->descriptor:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteDescriptor;

    iget-boolean v1, v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteDescriptor;->recourseType:Z

    iput-boolean v1, v0, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->isRecoursable:Z

    .line 24
    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;->descriptor:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteDescriptor;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteDescriptor;->mode:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteMode;

    sget-object v2, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteMode;->AUTO_RUN:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteMode;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->isAutoRun:Z

    .line 25
    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;->descriptor:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteDescriptor;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteDescriptor;->type:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    iput-object v1, v0, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->rewriteType:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;

    .line 26
    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;->descriptor:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteDescriptor;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteDescriptor;->message:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteMessage;

    invoke-static {v1}, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->assembleMadlanDisplayString(Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteMessage;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->rewriteMessage:Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;->isPromotedToPrimary()Z

    move-result v1

    iput-boolean v1, v0, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->promotedToPrimary:Z

    .line 30
    iget-object v1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;->modifiedRequest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;

    if-eqz v1, :cond_1

    .line 32
    new-instance v1, Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object p0, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;->modifiedRequest:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;

    invoke-direct {v1, p0, p1}, Lcom/ebay/common/net/api/search/SearchParameters;-><init>(Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;Lcom/ebay/common/model/search/EbayCategoryHistogram;)V

    iput-object v1, v0, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    .line 33
    iget-object p0, v0, Lcom/ebay/common/net/api/search/idealmodel/RewriteViewModel;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    iput-boolean v3, p0, Lcom/ebay/common/net/api/search/SearchParameters;->allowRewrites:Z

    :cond_1
    return-object v0
.end method
