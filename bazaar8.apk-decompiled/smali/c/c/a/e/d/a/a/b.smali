.class public final Lc/c/a/e/d/a/a/b;
.super Ljava/lang/Object;
.source "AccountLocalDataSource_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/e/d/a/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/b/I;",
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
            "Lc/c/a/e/d/b/I;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/e/d/a/a/b;->a:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;)Lc/c/a/e/d/a/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/b/I;",
            ">;)",
            "Lc/c/a/e/d/a/a/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/a/a/b;

    invoke-direct {v0, p0}, Lc/c/a/e/d/a/a/b;-><init>(Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;)Lc/c/a/e/d/a/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/b/I;",
            ">;)",
            "Lc/c/a/e/d/a/a/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/a/a/a;

    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c/a/e/d/b/I;

    invoke-direct {v0, p0}, Lc/c/a/e/d/a/a/a;-><init>(Lc/c/a/e/d/b/I;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/e/d/a/a/a;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/a/a/b;->a:Lg/a/a;

    invoke-static {v0}, Lc/c/a/e/d/a/a/b;->b(Lg/a/a;)Lc/c/a/e/d/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/a/a/b;->get()Lc/c/a/e/d/a/a/a;

    move-result-object v0

    return-object v0
.end method
