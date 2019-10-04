.class final Lcom/koushikdutta/async/http/e/e$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/e/e$1;->onCompleted(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/e/e$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/e/e$1;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/e$1$1;->a:Lcom/koushikdutta/async/http/e/e$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/e$1$1;->a:Lcom/koushikdutta/async/http/e/e$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/e/e$1;->b:Lcom/koushikdutta/async/http/e/e;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/e/e;->getWriteableCallback()Lcom/koushikdutta/async/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0}, Lcom/koushikdutta/async/a/g;->onWriteable()V

    :cond_0
    return-void
.end method
