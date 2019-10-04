.class public final Ll/q$a;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Ll/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ll/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ll/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ll/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ll/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll/q$a;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Ll/q$a;->b:Ll/b;

    return-void
.end method


# virtual methods
.method public a(Ll/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/d<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    .line 1
    invoke-static {p1, v0}, Ll/H;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ll/q$a;->b:Ll/b;

    new-instance v1, Ll/p;

    invoke-direct {v1, p0, p1}, Ll/p;-><init>(Ll/q$a;Ll/d;)V

    invoke-interface {v0, v1}, Ll/b;->a(Ll/d;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/q$a;->b:Ll/b;

    invoke-interface {v0}, Ll/b;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ll/q$a;->clone()Ll/b;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ll/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll/b<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Ll/q$a;

    iget-object v1, p0, Ll/q$a;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Ll/q$a;->b:Ll/b;

    invoke-interface {v2}, Ll/b;->clone()Ll/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ll/q$a;-><init>(Ljava/util/concurrent/Executor;Ll/b;)V

    return-object v0
.end method

.method public execute()Ll/D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll/D<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll/q$a;->b:Ll/b;

    invoke-interface {v0}, Ll/b;->execute()Ll/D;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll/q$a;->b:Ll/b;

    invoke-interface {v0}, Ll/b;->m()Z

    move-result v0

    return v0
.end method
