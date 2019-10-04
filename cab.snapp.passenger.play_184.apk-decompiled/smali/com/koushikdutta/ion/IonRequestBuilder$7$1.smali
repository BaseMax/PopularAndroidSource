.class Lcom/koushikdutta/ion/IonRequestBuilder$7$1;
.super Lcom/koushikdutta/async/b/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder$7;->parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/b/j<",
        "[B",
        "Lcom/koushikdutta/async/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/ion/IonRequestBuilder$7;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder$7;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$7$1;->this$1:Lcom/koushikdutta/ion/IonRequestBuilder$7;

    invoke-direct {p0}, Lcom/koushikdutta/async/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method protected transform(Lcom/koushikdutta/async/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 718
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->getAllByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$7$1;->setComplete(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 715
    check-cast p1, Lcom/koushikdutta/async/l;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$7$1;->transform(Lcom/koushikdutta/async/l;)V

    return-void
.end method
