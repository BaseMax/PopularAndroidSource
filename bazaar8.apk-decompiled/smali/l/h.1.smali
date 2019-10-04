.class public Ll/h;
.super Ljava/util/concurrent/CompletableFuture;
.source "CompletableFutureCallAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll/g$b;->a(Ll/b;)Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CompletableFuture<",
        "Ll/D<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll/b;

.field public final synthetic b:Ll/g$b;


# direct methods
.method public constructor <init>(Ll/g$b;Ll/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/h;->b:Ll/g$b;

    iput-object p2, p0, Ll/h;->a:Ll/b;

    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Ll/h;->a:Ll/b;

    invoke-interface {v0}, Ll/b;->cancel()V

    .line 2
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    move-result p1

    return p1
.end method
