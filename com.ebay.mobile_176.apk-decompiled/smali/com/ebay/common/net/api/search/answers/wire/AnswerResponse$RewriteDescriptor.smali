.class public final Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteDescriptor;
.super Ljava/lang/Object;
.source "AnswerResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RewriteDescriptor"
.end annotation


# instance fields
.field public message:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteMessage;

.field public mode:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteMode;

.field public promotedToMainResults:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;

.field public recourseType:Z

.field public type:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
