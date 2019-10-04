.class Lcom/koushikdutta/async/http/b/e$e;
.super Lcom/koushikdutta/async/http/b/e$c;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field j:Z

.field k:Z

.field l:Lcom/koushikdutta/async/a/a;

.field final synthetic m:Lcom/koushikdutta/async/http/b/e;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/b/e;Lcom/koushikdutta/async/http/b/e$g;J)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/koushikdutta/async/http/b/e$e;->m:Lcom/koushikdutta/async/http/b/e;

    .line 743
    invoke-direct {p0, p2, p3, p4}, Lcom/koushikdutta/async/http/b/e$c;-><init>(Lcom/koushikdutta/async/http/b/e$g;J)V

    const/4 p1, 0x1

    .line 744
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/b/e$e;->f:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 783
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/b/e$e;->k:Z

    return-void
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/a/a;
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$e;->l:Lcom/koushikdutta/async/a/a;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/h;
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$e;->m:Lcom/koushikdutta/async/http/b/e;

    invoke-static {v0}, Lcom/koushikdutta/async/http/b/e;->a(Lcom/koushikdutta/async/http/b/e;)Lcom/koushikdutta/async/h;

    move-result-object v0

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/a/g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 778
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/b/e$e;->k:Z

    return v0
.end method

.method public final report(Ljava/lang/Exception;)V
    .locals 1

    .line 753
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/b/e$c;->report(Ljava/lang/Exception;)V

    .line 754
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/b/e$e;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 756
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/b/e$e;->j:Z

    .line 757
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$e;->l:Lcom/koushikdutta/async/a/a;

    if-eqz v0, :cond_1

    .line 758
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lcom/koushikdutta/async/http/b/e$e;->l:Lcom/koushikdutta/async/a/a;

    return-void
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/a/g;)V
    .locals 0

    return-void
.end method

.method public write(Lcom/koushikdutta/async/l;)V
    .locals 0

    .line 764
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->recycle()V

    return-void
.end method
