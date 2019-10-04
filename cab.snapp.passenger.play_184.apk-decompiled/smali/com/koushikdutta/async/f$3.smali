.class final Lcom/koushikdutta/async/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/g;


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

    .line 138
    iput-object p1, p0, Lcom/koushikdutta/async/f$3;->a:Lcom/koushikdutta/async/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWriteable()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/koushikdutta/async/f$3;->a:Lcom/koushikdutta/async/f;

    iget-object v0, v0, Lcom/koushikdutta/async/f;->j:Lcom/koushikdutta/async/a/g;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/koushikdutta/async/f$3;->a:Lcom/koushikdutta/async/f;

    iget-object v0, v0, Lcom/koushikdutta/async/f;->j:Lcom/koushikdutta/async/a/g;

    invoke-interface {v0}, Lcom/koushikdutta/async/a/g;->onWriteable()V

    :cond_0
    return-void
.end method
