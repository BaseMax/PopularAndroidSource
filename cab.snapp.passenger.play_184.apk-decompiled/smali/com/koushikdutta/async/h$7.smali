.class final Lcom/koushikdutta/async/h$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/h;->dump()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/h;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/h;)V
    .locals 0

    .line 867
    iput-object p1, p0, Lcom/koushikdutta/async/h$7;->a:Lcom/koushikdutta/async/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 870
    iget-object v0, p0, Lcom/koushikdutta/async/h$7;->a:Lcom/koushikdutta/async/h;

    invoke-static {v0}, Lcom/koushikdutta/async/h;->a(Lcom/koushikdutta/async/h;)Lcom/koushikdutta/async/aa;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 874
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key Count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/koushikdutta/async/h$7;->a:Lcom/koushikdutta/async/h;

    invoke-static {v1}, Lcom/koushikdutta/async/h;->a(Lcom/koushikdutta/async/h;)Lcom/koushikdutta/async/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/async/aa;->keys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 876
    iget-object v0, p0, Lcom/koushikdutta/async/h$7;->a:Lcom/koushikdutta/async/h;

    invoke-static {v0}, Lcom/koushikdutta/async/h;->a(Lcom/koushikdutta/async/h;)Lcom/koushikdutta/async/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/aa;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 877
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-void
.end method
