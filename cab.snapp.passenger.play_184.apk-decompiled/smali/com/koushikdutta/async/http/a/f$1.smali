.class final Lcom/koushikdutta/async/http/a/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/y$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/a/f;->onBoundaryStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/n;

.field final synthetic b:Lcom/koushikdutta/async/http/a/f;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a/f;Lcom/koushikdutta/async/http/n;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/f$1;->b:Lcom/koushikdutta/async/http/a/f;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a/f$1;->a:Lcom/koushikdutta/async/http/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStringAvailable(Ljava/lang/String;)V
    .locals 1

    const-string v0, "\r"

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/f$1;->a:Lcom/koushikdutta/async/http/n;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/n;->addLine(Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    return-void

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/f$1;->b:Lcom/koushikdutta/async/http/a/f;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/a/f;->a()V

    .line 75
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/f$1;->b:Lcom/koushikdutta/async/http/a/f;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/koushikdutta/async/http/a/f;->d:Lcom/koushikdutta/async/y;

    .line 76
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/a/f;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 77
    new-instance p1, Lcom/koushikdutta/async/http/a/g;

    iget-object v0, p0, Lcom/koushikdutta/async/http/a/f$1;->a:Lcom/koushikdutta/async/http/n;

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/a/g;-><init>(Lcom/koushikdutta/async/http/n;)V

    .line 78
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/f$1;->b:Lcom/koushikdutta/async/http/a/f;

    iget-object v0, v0, Lcom/koushikdutta/async/http/a/f;->i:Lcom/koushikdutta/async/http/a/f$a;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/f$1;->b:Lcom/koushikdutta/async/http/a/f;

    iget-object v0, v0, Lcom/koushikdutta/async/http/a/f;->i:Lcom/koushikdutta/async/http/a/f$a;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/a/f$a;->onPart(Lcom/koushikdutta/async/http/a/g;)V

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/f$1;->b:Lcom/koushikdutta/async/http/a/f;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a/f;->getDataCallback()Lcom/koushikdutta/async/a/d;

    move-result-object v0

    if-nez v0, :cond_3

    .line 81
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/a/g;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/f$1;->b:Lcom/koushikdutta/async/http/a/f;

    new-instance v0, Lcom/koushikdutta/async/a/d$a;

    invoke-direct {v0}, Lcom/koushikdutta/async/a/d$a;-><init>()V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/a/f;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    return-void

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/f$1;->b:Lcom/koushikdutta/async/http/a/f;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/a/g;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/koushikdutta/async/http/a/f;->g:Ljava/lang/String;

    .line 87
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/f$1;->b:Lcom/koushikdutta/async/http/a/f;

    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object v0, p1, Lcom/koushikdutta/async/http/a/f;->f:Lcom/koushikdutta/async/l;

    .line 88
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/f$1;->b:Lcom/koushikdutta/async/http/a/f;

    new-instance v0, Lcom/koushikdutta/async/http/a/f$1$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/a/f$1$1;-><init>(Lcom/koushikdutta/async/http/a/f$1;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/a/f;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    :cond_3
    return-void
.end method
