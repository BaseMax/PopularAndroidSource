.class public Ll/p;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Ll/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll/q$a;->a(Ll/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll/d;

.field public final synthetic b:Ll/q$a;


# direct methods
.method public constructor <init>(Ll/q$a;Ll/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/p;->b:Ll/q$a;

    iput-object p2, p0, Ll/p;->a:Ll/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll/b;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/b<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Ll/p;->b:Ll/q$a;

    iget-object p1, p1, Ll/q$a;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Ll/o;

    invoke-direct {v0, p0, p2}, Ll/o;-><init>(Ll/p;Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ll/b;Ll/D;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/b<",
            "TT;>;",
            "Ll/D<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Ll/p;->b:Ll/q$a;

    iget-object p1, p1, Ll/q$a;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Ll/n;

    invoke-direct {v0, p0, p2}, Ll/n;-><init>(Ll/p;Ll/D;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
