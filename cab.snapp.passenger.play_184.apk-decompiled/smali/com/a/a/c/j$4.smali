.class final Lcom/a/a/c/j$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/c/j;


# direct methods
.method constructor <init>(Lcom/a/a/c/j;)V
    .locals 0

    .line 744
    iput-object p1, p0, Lcom/a/a/c/j$4;->a:Lcom/a/a/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 747
    iget-object v0, p0, Lcom/a/a/c/j$4;->a:Lcom/a/a/c/j;

    invoke-static {v0}, Lcom/a/a/c/j;->a(Lcom/a/a/c/j;)Lcom/a/a/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c/k;->isPresent()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 744
    invoke-virtual {p0}, Lcom/a/a/c/j$4;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
