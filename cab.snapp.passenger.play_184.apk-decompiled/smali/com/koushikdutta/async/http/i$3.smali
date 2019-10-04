.class final Lcom/koushikdutta/async/http/i$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/i;->a(Lcom/koushikdutta/async/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/j;

.field final synthetic b:Lcom/koushikdutta/async/http/i;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/i;Lcom/koushikdutta/async/j;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/koushikdutta/async/http/i$3;->b:Lcom/koushikdutta/async/http/i;

    iput-object p2, p0, Lcom/koushikdutta/async/http/i$3;->a:Lcom/koushikdutta/async/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 1

    .line 317
    iget-object p1, p0, Lcom/koushikdutta/async/http/i$3;->a:Lcom/koushikdutta/async/j;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/j;->setClosedCallback(Lcom/koushikdutta/async/a/a;)V

    .line 318
    iget-object p1, p0, Lcom/koushikdutta/async/http/i$3;->a:Lcom/koushikdutta/async/j;

    invoke-interface {p1}, Lcom/koushikdutta/async/j;->close()V

    return-void
.end method
