.class final Lcom/koushikdutta/async/af$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/af;->writeAll(Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/l;Lcom/koushikdutta/async/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/q;

.field final synthetic b:Lcom/koushikdutta/async/l;

.field final synthetic c:Lcom/koushikdutta/async/a/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/l;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/koushikdutta/async/af$8;->a:Lcom/koushikdutta/async/q;

    iput-object p2, p0, Lcom/koushikdutta/async/af$8;->b:Lcom/koushikdutta/async/l;

    iput-object p3, p0, Lcom/koushikdutta/async/af$8;->c:Lcom/koushikdutta/async/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWriteable()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/koushikdutta/async/af$8;->a:Lcom/koushikdutta/async/q;

    iget-object v1, p0, Lcom/koushikdutta/async/af$8;->b:Lcom/koushikdutta/async/l;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/q;->write(Lcom/koushikdutta/async/l;)V

    .line 202
    iget-object v0, p0, Lcom/koushikdutta/async/af$8;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/af$8;->c:Lcom/koushikdutta/async/a/a;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/koushikdutta/async/af$8;->a:Lcom/koushikdutta/async/q;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/q;->setWriteableCallback(Lcom/koushikdutta/async/a/g;)V

    .line 204
    iget-object v0, p0, Lcom/koushikdutta/async/af$8;->c:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
