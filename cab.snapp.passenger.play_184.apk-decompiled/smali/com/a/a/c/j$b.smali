.class final Lcom/a/a/c/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
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
.field private final a:Lcom/a/a/c/k;


# direct methods
.method public constructor <init>(Lcom/a/a/c/k;)V
    .locals 0

    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 854
    iput-object p1, p0, Lcom/a/a/c/j$b;->a:Lcom/a/a/c/k;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 859
    iget-object v0, p0, Lcom/a/a/c/j$b;->a:Lcom/a/a/c/k;

    invoke-virtual {v0}, Lcom/a/a/c/k;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 860
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 863
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Found previous crash marker."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/a/a/c/j$b;->a:Lcom/a/a/c/k;

    invoke-virtual {v0}, Lcom/a/a/c/k;->remove()Z

    .line 866
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 849
    invoke-virtual {p0}, Lcom/a/a/c/j$b;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
