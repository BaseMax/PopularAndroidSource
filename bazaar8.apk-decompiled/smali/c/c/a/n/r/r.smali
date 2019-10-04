.class public final Lc/c/a/n/r/r;
.super Ljava/lang/Object;
.source "MyBazaarViewModel_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/n/r/q;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/d/c/b;",
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
            "Lc/c/a/d/c/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/n/r/r;->a:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;)Lc/c/a/n/r/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/d/c/b;",
            ">;)",
            "Lc/c/a/n/r/r;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/n/r/r;

    invoke-direct {v0, p0}, Lc/c/a/n/r/r;-><init>(Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;)Lc/c/a/n/r/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/d/c/b;",
            ">;)",
            "Lc/c/a/n/r/q;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/n/r/q;

    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c/a/d/c/b;

    invoke-direct {v0, p0}, Lc/c/a/n/r/q;-><init>(Lc/c/a/d/c/b;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/n/r/q;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/n/r/r;->a:Lg/a/a;

    invoke-static {v0}, Lc/c/a/n/r/r;->b(Lg/a/a;)Lc/c/a/n/r/q;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/r/r;->get()Lc/c/a/n/r/q;

    move-result-object v0

    return-object v0
.end method
