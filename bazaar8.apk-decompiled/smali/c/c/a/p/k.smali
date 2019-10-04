.class public final Lc/c/a/p/k;
.super Ljava/lang/Object;
.source "PendingBookmarkWorker_AssistedFactory_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/p/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/d/b;",
            ">;"
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
            "Lc/c/a/e/d/d/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/p/k;->a:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;)Lc/c/a/p/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/d/b;",
            ">;)",
            "Lc/c/a/p/k;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/p/k;

    invoke-direct {v0, p0}, Lc/c/a/p/k;-><init>(Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;)Lc/c/a/p/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/d/b;",
            ">;)",
            "Lc/c/a/p/j;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/p/j;

    invoke-direct {v0, p0}, Lc/c/a/p/j;-><init>(Lg/a/a;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/p/j;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/p/k;->a:Lg/a/a;

    invoke-static {v0}, Lc/c/a/p/k;->b(Lg/a/a;)Lc/c/a/p/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/p/k;->get()Lc/c/a/p/j;

    move-result-object v0

    return-object v0
.end method
