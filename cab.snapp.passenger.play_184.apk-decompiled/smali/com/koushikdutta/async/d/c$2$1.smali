.class final Lcom/koushikdutta/async/d/c$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/d/c$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/d/c$2;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/d/c$2;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/koushikdutta/async/d/c$2$1;->a:Lcom/koushikdutta/async/d/c$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/koushikdutta/async/d/c$2$1;->a:Lcom/koushikdutta/async/d/c$2;

    iget-object v0, v0, Lcom/koushikdutta/async/d/c$2;->a:Lcom/koushikdutta/async/d/c;

    iget-object v1, p0, Lcom/koushikdutta/async/d/c$2$1;->a:Lcom/koushikdutta/async/d/c$2;

    iget-object v1, v1, Lcom/koushikdutta/async/d/c$2;->a:Lcom/koushikdutta/async/d/c;

    iget-object v1, v1, Lcom/koushikdutta/async/d/c;->f:Lcom/koushikdutta/async/l;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/af;->emitAllData(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    return-void
.end method
