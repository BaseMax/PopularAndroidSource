.class final Lcom/a/a/c/j$1;
.super Lio/fabric/sdk/android/services/concurrency/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c/j;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/concurrency/e<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/c/j;


# direct methods
.method constructor <init>(Lcom/a/a/c/j;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/a/a/c/j$1;->a:Lcom/a/a/c/j;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/e;-><init>()V

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

    .line 673
    invoke-virtual {p0}, Lcom/a/a/c/j$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 676
    iget-object v0, p0, Lcom/a/a/c/j$1;->a:Lcom/a/a/c/j;

    invoke-virtual {v0}, Lcom/a/a/c/j;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final getPriority()Lio/fabric/sdk/android/services/concurrency/Priority;
    .locals 1

    .line 681
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/Priority;->IMMEDIATE:Lio/fabric/sdk/android/services/concurrency/Priority;

    return-object v0
.end method
