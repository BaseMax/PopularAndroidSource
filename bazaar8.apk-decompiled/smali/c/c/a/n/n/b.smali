.class public final Lc/c/a/n/n/b;
.super Ljava/lang/Object;
.source "InstalledAppsViewModel_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/n/n/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/n/c/c/u;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/l/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/a;Lg/a/a;Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/n/c/c/u;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/l/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/n/n/b;->a:Lg/a/a;

    .line 3
    iput-object p2, p0, Lc/c/a/n/n/b;->b:Lg/a/a;

    .line 4
    iput-object p3, p0, Lc/c/a/n/n/b;->c:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/n/n/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/n/c/c/u;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/l/d;",
            ">;)",
            "Lc/c/a/n/n/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/n/n/b;

    invoke-direct {v0, p0, p1, p2}, Lc/c/a/n/n/b;-><init>(Lg/a/a;Lg/a/a;Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/n/n/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/n/c/c/u;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/l/d;",
            ">;)",
            "Lc/c/a/n/n/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/n/n/a;

    .line 2
    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {p1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/n/c/c/u;

    invoke-interface {p2}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/c/a/e/d/l/d;

    invoke-direct {v0, p0, p1, p2}, Lc/c/a/n/n/a;-><init>(Landroid/content/Context;Lc/c/a/n/c/c/u;Lc/c/a/e/d/l/d;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/n/n/a;
    .locals 3

    .line 2
    iget-object v0, p0, Lc/c/a/n/n/b;->a:Lg/a/a;

    iget-object v1, p0, Lc/c/a/n/n/b;->b:Lg/a/a;

    iget-object v2, p0, Lc/c/a/n/n/b;->c:Lg/a/a;

    invoke-static {v0, v1, v2}, Lc/c/a/n/n/b;->b(Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/n/n/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/n/b;->get()Lc/c/a/n/n/a;

    move-result-object v0

    return-object v0
.end method
