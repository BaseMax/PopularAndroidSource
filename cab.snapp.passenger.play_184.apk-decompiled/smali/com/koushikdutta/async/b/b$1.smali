.class final Lcom/koushikdutta/async/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/b/b;->setCancelCallback(Lcom/koushikdutta/async/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/b/a;

.field final synthetic b:Lcom/koushikdutta/async/b/b;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/b/b;Lcom/koushikdutta/async/b/a;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/koushikdutta/async/b/b$1;->b:Lcom/koushikdutta/async/b/b;

    iput-object p2, p0, Lcom/koushikdutta/async/b/b$1;->a:Lcom/koushikdutta/async/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/koushikdutta/async/b/b$1;->a:Lcom/koushikdutta/async/b/a;

    invoke-interface {v0}, Lcom/koushikdutta/async/b/a;->cancel()Z

    return-void
.end method
