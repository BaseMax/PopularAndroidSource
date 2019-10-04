.class final Lcom/koushikdutta/async/f$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/f;-><init>(Lcom/koushikdutta/async/j;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/f;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/f;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/koushikdutta/async/f$4;->a:Lcom/koushikdutta/async/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/koushikdutta/async/f$4;->a:Lcom/koushikdutta/async/f;

    iget-boolean v0, v0, Lcom/koushikdutta/async/f;->n:Z

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/f$4;->a:Lcom/koushikdutta/async/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/koushikdutta/async/f;->n:Z

    .line 155
    iput-object p1, v0, Lcom/koushikdutta/async/f;->o:Ljava/lang/Exception;

    .line 156
    iget-object v0, v0, Lcom/koushikdutta/async/f;->p:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/f$4;->a:Lcom/koushikdutta/async/f;

    iget-object v0, v0, Lcom/koushikdutta/async/f;->s:Lcom/koushikdutta/async/a/a;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/koushikdutta/async/f$4;->a:Lcom/koushikdutta/async/f;

    iget-object v0, v0, Lcom/koushikdutta/async/f;->s:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method
