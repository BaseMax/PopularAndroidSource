.class final Lcom/koushikdutta/async/http/e/e$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/e/e;->proxy(Lcom/koushikdutta/async/http/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/e;

.field final synthetic b:Lcom/koushikdutta/async/http/e/e;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/e/e;Lcom/koushikdutta/async/http/e;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/e$4;->b:Lcom/koushikdutta/async/http/e/e;

    iput-object p2, p0, Lcom/koushikdutta/async/http/e/e$4;->a:Lcom/koushikdutta/async/http/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 1

    .line 333
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/e$4;->a:Lcom/koushikdutta/async/http/e;

    new-instance v0, Lcom/koushikdutta/async/a/a$a;

    invoke-direct {v0}, Lcom/koushikdutta/async/a/a$a;-><init>()V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/http/e;->setEndCallback(Lcom/koushikdutta/async/a/a;)V

    .line 334
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/e$4;->a:Lcom/koushikdutta/async/http/e;

    new-instance v0, Lcom/koushikdutta/async/a/d$a;

    invoke-direct {v0}, Lcom/koushikdutta/async/a/d$a;-><init>()V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/http/e;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 335
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/e$4;->b:Lcom/koushikdutta/async/http/e/e;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/e/e;->end()V

    return-void
.end method
