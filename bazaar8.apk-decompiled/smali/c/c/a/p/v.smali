.class public final Lc/c/a/p/v;
.super Ljava/lang/Object;
.source "ReportApplicationWorker_AssistedFactory_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/p/u;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/p/a;",
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
            "Lc/c/a/e/d/p/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/p/v;->a:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;)Lc/c/a/p/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/p/a;",
            ">;)",
            "Lc/c/a/p/v;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/p/v;

    invoke-direct {v0, p0}, Lc/c/a/p/v;-><init>(Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;)Lc/c/a/p/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/p/a;",
            ">;)",
            "Lc/c/a/p/u;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/p/u;

    invoke-direct {v0, p0}, Lc/c/a/p/u;-><init>(Lg/a/a;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/p/u;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/p/v;->a:Lg/a/a;

    invoke-static {v0}, Lc/c/a/p/v;->b(Lg/a/a;)Lc/c/a/p/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/p/v;->get()Lc/c/a/p/u;

    move-result-object v0

    return-object v0
.end method
