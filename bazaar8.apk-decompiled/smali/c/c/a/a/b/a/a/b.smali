.class public final Lc/c/a/a/b/a/a/b;
.super Ljava/lang/Object;
.source "ActionLogRepository_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/a/b/a/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/a/b/a/a/b/g;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/a/b/a/a/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/b/I;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/a/b/a/a/b/g;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/a/b/a/a/c/a;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/a/a;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/b/I;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/a/b/a/a/b;->a:Lg/a/a;

    .line 3
    iput-object p2, p0, Lc/c/a/a/b/a/a/b;->b:Lg/a/a;

    .line 4
    iput-object p3, p0, Lc/c/a/a/b/a/a/b;->c:Lg/a/a;

    .line 5
    iput-object p4, p0, Lc/c/a/a/b/a/a/b;->d:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/a/b/a/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/a/b/a/a/b/g;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/a/b/a/a/c/a;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/a/a;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/b/I;",
            ">;)",
            "Lc/c/a/a/b/a/a/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/a/b/a/a/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lc/c/a/a/b/a/a/b;-><init>(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/a/b/a/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/a/b/a/a/b/g;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/a/b/a/a/c/a;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/a/a;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/b/I;",
            ">;)",
            "Lc/c/a/a/b/a/a/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/a/b/a/a/a;

    .line 2
    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c/a/a/b/a/a/b/g;

    .line 3
    invoke-interface {p1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/a/b/a/a/c/a;

    .line 4
    invoke-interface {p2}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/c/a/e/d/a/a;

    .line 5
    invoke-interface {p3}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lc/c/a/e/d/b/I;

    invoke-direct {v0, p0, p1, p2, p3}, Lc/c/a/a/b/a/a/a;-><init>(Lc/c/a/a/b/a/a/b/g;Lc/c/a/a/b/a/a/c/a;Lc/c/a/e/d/a/a;Lc/c/a/e/d/b/I;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/a/b/a/a/a;
    .locals 4

    .line 2
    iget-object v0, p0, Lc/c/a/a/b/a/a/b;->a:Lg/a/a;

    iget-object v1, p0, Lc/c/a/a/b/a/a/b;->b:Lg/a/a;

    iget-object v2, p0, Lc/c/a/a/b/a/a/b;->c:Lg/a/a;

    iget-object v3, p0, Lc/c/a/a/b/a/a/b;->d:Lg/a/a;

    invoke-static {v0, v1, v2, v3}, Lc/c/a/a/b/a/a/b;->b(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/a/b/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/a/b/a/a/b;->get()Lc/c/a/a/b/a/a/a;

    move-result-object v0

    return-object v0
.end method
