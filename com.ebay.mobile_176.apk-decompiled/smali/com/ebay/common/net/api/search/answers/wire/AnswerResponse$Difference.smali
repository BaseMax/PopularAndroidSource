.class public Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Difference;
.super Ljava/lang/Object;
.source "AnswerResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Difference"
.end annotation


# instance fields
.field public add:Ljava/lang/String;

.field public remove:Ljava/lang/String;

.field final synthetic this$0:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Difference;->this$0:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
