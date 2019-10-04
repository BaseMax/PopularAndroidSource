.class public final Lc/c/a/n/j/c/m;
.super Ljava/lang/Object;
.source "VideoDownloadListViewModel_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/n/j/c/l;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/a/n;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/b/d/o;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Landroid/content/Context;",
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
            "Lc/c/a/e/d/h/e/a/c;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/a/n;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/b/d/o;",
            ">;",
            "Lg/a/a<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/n/j/c/m;->a:Lg/a/a;

    .line 3
    iput-object p2, p0, Lc/c/a/n/j/c/m;->b:Lg/a/a;

    .line 4
    iput-object p3, p0, Lc/c/a/n/j/c/m;->c:Lg/a/a;

    .line 5
    iput-object p4, p0, Lc/c/a/n/j/c/m;->d:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/n/j/c/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/c;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/a/n;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/b/d/o;",
            ">;",
            "Lg/a/a<",
            "Landroid/content/Context;",
            ">;)",
            "Lc/c/a/n/j/c/m;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/n/j/c/m;

    invoke-direct {v0, p0, p1, p2, p3}, Lc/c/a/n/j/c/m;-><init>(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/n/j/c/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/c;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/a/n;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/b/d/o;",
            ">;",
            "Lg/a/a<",
            "Landroid/content/Context;",
            ">;)",
            "Lc/c/a/n/j/c/l;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/n/j/c/l;

    .line 2
    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c/a/e/d/h/e/a/c;

    .line 3
    invoke-interface {p1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/h/e/a/a/n;

    .line 4
    invoke-interface {p2}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/c/a/b/d/o;

    .line 5
    invoke-interface {p3}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-direct {v0, p0, p1, p2, p3}, Lc/c/a/n/j/c/l;-><init>(Lc/c/a/e/d/h/e/a/c;Lc/c/a/e/d/h/e/a/a/n;Lc/c/a/b/d/o;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/n/j/c/l;
    .locals 4

    .line 2
    iget-object v0, p0, Lc/c/a/n/j/c/m;->a:Lg/a/a;

    iget-object v1, p0, Lc/c/a/n/j/c/m;->b:Lg/a/a;

    iget-object v2, p0, Lc/c/a/n/j/c/m;->c:Lg/a/a;

    iget-object v3, p0, Lc/c/a/n/j/c/m;->d:Lg/a/a;

    invoke-static {v0, v1, v2, v3}, Lc/c/a/n/j/c/m;->b(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/n/j/c/l;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/j/c/m;->get()Lc/c/a/n/j/c/l;

    move-result-object v0

    return-object v0
.end method
