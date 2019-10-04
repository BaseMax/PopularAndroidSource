.class final Lcom/a/a/c/i$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/a/a/c/i;


# direct methods
.method constructor <init>(Lcom/a/a/c/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/a/a/c/i$15;->d:Lcom/a/a/c/i;

    iput-object p2, p0, Lcom/a/a/c/i$15;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/a/a/c/i$15;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/a/a/c/i$15;->c:Ljava/lang/String;

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

    .line 376
    invoke-virtual {p0}, Lcom/a/a/c/i$15;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/a/a/c/i$15;->d:Lcom/a/a/c/i;

    invoke-static {v0}, Lcom/a/a/c/i;->d(Lcom/a/a/c/i;)Ljava/lang/String;

    move-result-object v0

    .line 380
    new-instance v1, Lcom/a/a/c/x;

    iget-object v2, p0, Lcom/a/a/c/i$15;->d:Lcom/a/a/c/i;

    invoke-virtual {v2}, Lcom/a/a/c/i;->d()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/a/a/c/x;-><init>(Ljava/io/File;)V

    new-instance v2, Lcom/a/a/c/am;

    iget-object v3, p0, Lcom/a/a/c/i$15;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/a/a/c/i$15;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/a/a/c/i$15;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/a/a/c/am;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/a/a/c/x;->writeUserData(Ljava/lang/String;Lcom/a/a/c/am;)V

    const/4 v0, 0x0

    return-object v0
.end method
