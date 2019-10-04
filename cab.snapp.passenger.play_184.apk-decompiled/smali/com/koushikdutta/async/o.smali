.class public abstract Lcom/koushikdutta/async/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/n;


# instance fields
.field a:Lcom/koushikdutta/async/a/a;

.field b:Lcom/koushikdutta/async/a/d;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public charset()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataCallback()Lcom/koushikdutta/async/a/d;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/koushikdutta/async/o;->b:Lcom/koushikdutta/async/a/d;

    return-object v0
.end method

.method public final getEndCallback()Lcom/koushikdutta/async/a/a;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/koushikdutta/async/o;->a:Lcom/koushikdutta/async/a/a;

    return-object v0
.end method

.method public report(Ljava/lang/Exception;)V
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/koushikdutta/async/o;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/koushikdutta/async/o;->c:Z

    .line 15
    invoke-virtual {p0}, Lcom/koushikdutta/async/o;->getEndCallback()Lcom/koushikdutta/async/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/koushikdutta/async/o;->getEndCallback()Lcom/koushikdutta/async/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public setDataCallback(Lcom/koushikdutta/async/a/d;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/koushikdutta/async/o;->b:Lcom/koushikdutta/async/a/d;

    return-void
.end method

.method public final setEndCallback(Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/koushikdutta/async/o;->a:Lcom/koushikdutta/async/a/a;

    return-void
.end method
