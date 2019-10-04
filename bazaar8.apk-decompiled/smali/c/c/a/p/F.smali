.class public final Lc/c/a/p/F;
.super Ljava/lang/Object;
.source "SyncPurchasesWorker_AssistedFactory_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/p/E;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/m/d;",
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
            "Lc/c/a/e/d/m/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/p/F;->a:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;)Lc/c/a/p/F;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/m/d;",
            ">;)",
            "Lc/c/a/p/F;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/p/F;

    invoke-direct {v0, p0}, Lc/c/a/p/F;-><init>(Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;)Lc/c/a/p/E;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/m/d;",
            ">;)",
            "Lc/c/a/p/E;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/p/E;

    invoke-direct {v0, p0}, Lc/c/a/p/E;-><init>(Lg/a/a;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/p/E;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/p/F;->a:Lg/a/a;

    invoke-static {v0}, Lc/c/a/p/F;->b(Lg/a/a;)Lc/c/a/p/E;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/p/F;->get()Lc/c/a/p/E;

    move-result-object v0

    return-object v0
.end method
