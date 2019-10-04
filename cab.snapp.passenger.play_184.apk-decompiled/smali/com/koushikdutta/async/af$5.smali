.class final Lcom/koushikdutta/async/af$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/af;->pump(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/koushikdutta/async/n;

.field final synthetic c:Lcom/koushikdutta/async/q;

.field final synthetic d:Lcom/koushikdutta/async/a/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/koushikdutta/async/af$5;->b:Lcom/koushikdutta/async/n;

    iput-object p2, p0, Lcom/koushikdutta/async/af$5;->c:Lcom/koushikdutta/async/q;

    iput-object p3, p0, Lcom/koushikdutta/async/af$5;->d:Lcom/koushikdutta/async/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 2

    .line 144
    iget-boolean v0, p0, Lcom/koushikdutta/async/af$5;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/koushikdutta/async/af$5;->a:Z

    .line 147
    iget-object v0, p0, Lcom/koushikdutta/async/af$5;->b:Lcom/koushikdutta/async/n;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/n;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 148
    iget-object v0, p0, Lcom/koushikdutta/async/af$5;->b:Lcom/koushikdutta/async/n;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/n;->setEndCallback(Lcom/koushikdutta/async/a/a;)V

    .line 149
    iget-object v0, p0, Lcom/koushikdutta/async/af$5;->c:Lcom/koushikdutta/async/q;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/q;->setClosedCallback(Lcom/koushikdutta/async/a/a;)V

    .line 150
    iget-object v0, p0, Lcom/koushikdutta/async/af$5;->c:Lcom/koushikdutta/async/q;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/q;->setWriteableCallback(Lcom/koushikdutta/async/a/g;)V

    .line 151
    iget-object v0, p0, Lcom/koushikdutta/async/af$5;->d:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method
