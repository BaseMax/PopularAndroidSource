.class final Lcom/koushikdutta/async/f$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/f;->a(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
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

    .line 337
    iput-object p1, p0, Lcom/koushikdutta/async/f$6;->a:Lcom/koushikdutta/async/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/koushikdutta/async/f$6;->a:Lcom/koushikdutta/async/f;

    iget-object v0, v0, Lcom/koushikdutta/async/f;->j:Lcom/koushikdutta/async/a/g;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/koushikdutta/async/f$6;->a:Lcom/koushikdutta/async/f;

    iget-object v0, v0, Lcom/koushikdutta/async/f;->j:Lcom/koushikdutta/async/a/g;

    invoke-interface {v0}, Lcom/koushikdutta/async/a/g;->onWriteable()V

    :cond_0
    return-void
.end method
