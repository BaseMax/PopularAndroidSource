.class public final Lc/c/a/p/g;
.super Ljava/lang/Object;
.source "DaggerWorkerFactory_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/p/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/p/a;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/p/a;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/p/g;->a:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;)Lc/c/a/p/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/p/a;",
            ">;>;>;)",
            "Lc/c/a/p/g;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/p/g;

    invoke-direct {v0, p0}, Lc/c/a/p/g;-><init>(Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;)Lc/c/a/p/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/p/a;",
            ">;>;>;)",
            "Lc/c/a/p/f;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/p/f;

    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Lc/c/a/p/f;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/p/f;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/p/g;->a:Lg/a/a;

    invoke-static {v0}, Lc/c/a/p/g;->b(Lg/a/a;)Lc/c/a/p/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/p/g;->get()Lc/c/a/p/f;

    move-result-object v0

    return-object v0
.end method