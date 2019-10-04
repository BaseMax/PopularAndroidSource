.class Lcom/koushikdutta/ion/InputStreamParser$1;
.super Lcom/koushikdutta/async/b/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/InputStreamParser;->parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/b/j<",
        "Ljava/io/InputStream;",
        "Lcom/koushikdutta/async/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/ion/InputStreamParser;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/InputStreamParser;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/koushikdutta/ion/InputStreamParser$1;->this$0:Lcom/koushikdutta/ion/InputStreamParser;

    invoke-direct {p0}, Lcom/koushikdutta/async/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method protected transform(Lcom/koushikdutta/async/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/koushikdutta/async/d/a;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/d/a;-><init>(Lcom/koushikdutta/async/l;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/InputStreamParser$1;->setComplete(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    check-cast p1, Lcom/koushikdutta/async/l;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/InputStreamParser$1;->transform(Lcom/koushikdutta/async/l;)V

    return-void
.end method
