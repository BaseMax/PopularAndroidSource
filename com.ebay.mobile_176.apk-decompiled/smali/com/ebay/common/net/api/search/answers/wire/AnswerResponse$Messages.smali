.class public Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Messages;
.super Ljava/lang/Object;
.source "AnswerResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Messages"
.end annotation


# instance fields
.field public answer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/net/api/answers/MessageAnswerWire;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Messages;->this$0:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
