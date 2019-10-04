.class public final Lc/c/a/b/d/n;
.super Ljava/lang/Object;
.source "PaymentManager_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/b/d/m;",
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

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/a;Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/m/d;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/a/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/b/d/n;->a:Lg/a/a;

    .line 3
    iput-object p2, p0, Lc/c/a/b/d/n;->b:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;Lg/a/a;)Lc/c/a/b/d/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/m/d;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/a/a;",
            ">;)",
            "Lc/c/a/b/d/n;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/b/d/n;

    invoke-direct {v0, p0, p1}, Lc/c/a/b/d/n;-><init>(Lg/a/a;Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;Lg/a/a;)Lc/c/a/b/d/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/m/d;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/a/a;",
            ">;)",
            "Lc/c/a/b/d/m;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/b/d/m;

    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c/a/e/d/m/d;

    invoke-interface {p1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/a/a;

    invoke-direct {v0, p0, p1}, Lc/c/a/b/d/m;-><init>(Lc/c/a/e/d/m/d;Lc/c/a/e/d/a/a;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/b/d/m;
    .locals 2

    .line 2
    iget-object v0, p0, Lc/c/a/b/d/n;->a:Lg/a/a;

    iget-object v1, p0, Lc/c/a/b/d/n;->b:Lg/a/a;

    invoke-static {v0, v1}, Lc/c/a/b/d/n;->b(Lg/a/a;Lg/a/a;)Lc/c/a/b/d/m;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/b/d/n;->get()Lc/c/a/b/d/m;

    move-result-object v0

    return-object v0
.end method
