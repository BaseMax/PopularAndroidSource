.class final Lcom/a/a/c/i$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c/i;->a(JLjava/lang/String;)V
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
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/a/a/c/i;


# direct methods
.method constructor <init>(Lcom/a/a/c/i;JLjava/lang/String;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/a/a/c/i$13;->c:Lcom/a/a/c/i;

    iput-wide p2, p0, Lcom/a/a/c/i$13;->a:J

    iput-object p4, p0, Lcom/a/a/c/i$13;->b:Ljava/lang/String;

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

    .line 338
    invoke-virtual {p0}, Lcom/a/a/c/i$13;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/a/a/c/i$13;->c:Lcom/a/a/c/i;

    invoke-virtual {v0}, Lcom/a/a/c/i;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/a/a/c/i$13;->c:Lcom/a/a/c/i;

    invoke-static {v0}, Lcom/a/a/c/i;->c(Lcom/a/a/c/i;)Lcom/a/a/c/v;

    move-result-object v0

    iget-wide v1, p0, Lcom/a/a/c/i$13;->a:J

    iget-object v3, p0, Lcom/a/a/c/i$13;->b:Ljava/lang/String;

    .line 1074
    iget-object v0, v0, Lcom/a/a/c/v;->a:Lcom/a/a/c/t;

    invoke-interface {v0, v1, v2, v3}, Lcom/a/a/c/t;->writeToLog(JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
