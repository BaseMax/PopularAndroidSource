.class public final Ll/g$b;
.super Ljava/lang/Object;
.source "CompletableFutureCallAdapterFactory.java"

# interfaces
.implements Ll/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ll/c<",
        "TR;",
        "Ljava/util/concurrent/CompletableFuture<",
        "Ll/D<",
        "TR;>;>;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll/g$b;->a:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ll/b;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ll/g$b;->a(Ll/b;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/reflect/Type;
    .locals 1

    .line 2
    iget-object v0, p0, Ll/g$b;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public a(Ll/b;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/b<",
            "TR;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ll/D<",
            "TR;>;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Ll/h;

    invoke-direct {v0, p0, p1}, Ll/h;-><init>(Ll/g$b;Ll/b;)V

    .line 4
    new-instance v1, Ll/i;

    invoke-direct {v1, p0, v0}, Ll/i;-><init>(Ll/g$b;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {p1, v1}, Ll/b;->a(Ll/d;)V

    return-object v0
.end method
