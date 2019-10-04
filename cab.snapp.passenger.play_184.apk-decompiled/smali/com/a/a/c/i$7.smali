.class final Lcom/a/a/c/i$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/c/a/a/d;

.field final synthetic b:Lcom/a/a/c/i;


# direct methods
.method constructor <init>(Lcom/a/a/c/i;Lcom/a/a/c/a/a/d;)V
    .locals 0

    .line 863
    iput-object p1, p0, Lcom/a/a/c/i$7;->b:Lcom/a/a/c/i;

    iput-object p2, p0, Lcom/a/a/c/i$7;->a:Lcom/a/a/c/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 863
    invoke-virtual {p0}, Lcom/a/a/c/i$7;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 866
    iget-object v0, p0, Lcom/a/a/c/i$7;->b:Lcom/a/a/c/i;

    invoke-virtual {v0}, Lcom/a/a/c/i;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/a/a/c/i$7;->b:Lcom/a/a/c/i;

    iget-object v1, p0, Lcom/a/a/c/i$7;->a:Lcom/a/a/c/a/a/d;

    invoke-static {v0, v1}, Lcom/a/a/c/i;->a(Lcom/a/a/c/i;Lcom/a/a/c/a/a/d;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
