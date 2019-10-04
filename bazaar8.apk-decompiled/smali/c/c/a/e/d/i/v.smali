.class public final Lc/c/a/e/d/i/v;
.super Ljava/lang/Object;
.source "PartDownloadMerger_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/e/d/i/u;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/i/y;",
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
            "Lc/c/a/e/d/i/y;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/e/d/i/v;->a:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;)Lc/c/a/e/d/i/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/y;",
            ">;)",
            "Lc/c/a/e/d/i/v;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/i/v;

    invoke-direct {v0, p0}, Lc/c/a/e/d/i/v;-><init>(Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;)Lc/c/a/e/d/i/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/y;",
            ">;)",
            "Lc/c/a/e/d/i/u;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/i/u;

    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c/a/e/d/i/y;

    invoke-direct {v0, p0}, Lc/c/a/e/d/i/u;-><init>(Lc/c/a/e/d/i/y;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/e/d/i/u;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/i/v;->a:Lg/a/a;

    invoke-static {v0}, Lc/c/a/e/d/i/v;->b(Lg/a/a;)Lc/c/a/e/d/i/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/i/v;->get()Lc/c/a/e/d/i/u;

    move-result-object v0

    return-object v0
.end method
