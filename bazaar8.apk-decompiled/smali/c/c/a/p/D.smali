.class public final Lc/c/a/p/D;
.super Ljava/lang/Object;
.source "SyncBookmarkWorker_AssistedFactory_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/p/C;",
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
    iput-object p1, p0, Lc/c/a/p/D;->a:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;)Lc/c/a/p/D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/d/b;",
            ">;)",
            "Lc/c/a/p/D;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/p/D;

    invoke-direct {v0, p0}, Lc/c/a/p/D;-><init>(Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;)Lc/c/a/p/C;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/d/b;",
            ">;)",
            "Lc/c/a/p/C;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/p/C;

    invoke-direct {v0, p0}, Lc/c/a/p/C;-><init>(Lg/a/a;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/p/C;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/p/D;->a:Lg/a/a;

    invoke-static {v0}, Lc/c/a/p/D;->b(Lg/a/a;)Lc/c/a/p/C;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/p/D;->get()Lc/c/a/p/C;

    move-result-object v0

    return-object v0
.end method
