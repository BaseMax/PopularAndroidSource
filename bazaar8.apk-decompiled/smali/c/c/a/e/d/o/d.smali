.class public final Lc/c/a/e/d/o/d;
.super Ljava/lang/Object;
.source "ReleaseNoteRepository_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/e/d/o/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/u/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/b/c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/o/a;",
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
            "Lc/c/a/e/d/u/a;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/b/c;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/o/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/e/d/o/d;->a:Lg/a/a;

    .line 3
    iput-object p2, p0, Lc/c/a/e/d/o/d;->b:Lg/a/a;

    .line 4
    iput-object p3, p0, Lc/c/a/e/d/o/d;->c:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/e/d/o/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/u/a;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/b/c;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/o/a;",
            ">;)",
            "Lc/c/a/e/d/o/d;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/o/d;

    invoke-direct {v0, p0, p1, p2}, Lc/c/a/e/d/o/d;-><init>(Lg/a/a;Lg/a/a;Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/e/d/o/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/u/a;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/b/c;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/o/a;",
            ">;)",
            "Lc/c/a/e/d/o/c;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/o/c;

    .line 2
    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c/a/e/d/u/a;

    .line 3
    invoke-interface {p1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/b/c;

    .line 4
    invoke-interface {p2}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/c/a/e/d/o/a;

    invoke-direct {v0, p0, p1, p2}, Lc/c/a/e/d/o/c;-><init>(Lc/c/a/e/d/u/a;Lc/c/a/e/b/c;Lc/c/a/e/d/o/a;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/e/d/o/c;
    .locals 3

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/o/d;->a:Lg/a/a;

    iget-object v1, p0, Lc/c/a/e/d/o/d;->b:Lg/a/a;

    iget-object v2, p0, Lc/c/a/e/d/o/d;->c:Lg/a/a;

    invoke-static {v0, v1, v2}, Lc/c/a/e/d/o/d;->b(Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/e/d/o/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/o/d;->get()Lc/c/a/e/d/o/c;

    move-result-object v0

    return-object v0
.end method
