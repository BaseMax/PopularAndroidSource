.class final Lcom/a/a/c/i$2;
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
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/a/a/c/i;


# direct methods
.method constructor <init>(Lcom/a/a/c/i;Ljava/util/Map;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/a/a/c/i$2;->b:Lcom/a/a/c/i;

    iput-object p2, p0, Lcom/a/a/c/i$2;->a:Ljava/util/Map;

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

    .line 396
    invoke-virtual {p0}, Lcom/a/a/c/i$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/a/a/c/i$2;->b:Lcom/a/a/c/i;

    invoke-static {v0}, Lcom/a/a/c/i;->d(Lcom/a/a/c/i;)Ljava/lang/String;

    move-result-object v0

    .line 400
    new-instance v1, Lcom/a/a/c/x;

    iget-object v2, p0, Lcom/a/a/c/i$2;->b:Lcom/a/a/c/i;

    invoke-virtual {v2}, Lcom/a/a/c/i;->d()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/a/a/c/x;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lcom/a/a/c/i$2;->a:Ljava/util/Map;

    invoke-virtual {v1, v0, v2}, Lcom/a/a/c/x;->writeKeyData(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    return-object v0
.end method
