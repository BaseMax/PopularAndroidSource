.class public final Lc/c/a/e/d/r/a/c;
.super Ljava/lang/Object;
.source "CommentActionRepository_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/e/d/r/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/r/a/f;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/r/a/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/r/a/a/j;",
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
            "Lc/c/a/e/d/r/a/f;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/r/a/d;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/r/a/a/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/e/d/r/a/c;->a:Lg/a/a;

    .line 3
    iput-object p2, p0, Lc/c/a/e/d/r/a/c;->b:Lg/a/a;

    .line 4
    iput-object p3, p0, Lc/c/a/e/d/r/a/c;->c:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/e/d/r/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/r/a/f;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/r/a/d;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/r/a/a/j;",
            ">;)",
            "Lc/c/a/e/d/r/a/c;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/r/a/c;

    invoke-direct {v0, p0, p1, p2}, Lc/c/a/e/d/r/a/c;-><init>(Lg/a/a;Lg/a/a;Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/e/d/r/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/r/a/f;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/r/a/d;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/r/a/a/j;",
            ">;)",
            "Lc/c/a/e/d/r/a/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/r/a/b;

    .line 2
    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c/a/e/d/r/a/f;

    .line 3
    invoke-interface {p1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/r/a/d;

    .line 4
    invoke-interface {p2}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/c/a/e/d/r/a/a/j;

    invoke-direct {v0, p0, p1, p2}, Lc/c/a/e/d/r/a/b;-><init>(Lc/c/a/e/d/r/a/f;Lc/c/a/e/d/r/a/d;Lc/c/a/e/d/r/a/a/j;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/e/d/r/a/b;
    .locals 3

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/r/a/c;->a:Lg/a/a;

    iget-object v1, p0, Lc/c/a/e/d/r/a/c;->b:Lg/a/a;

    iget-object v2, p0, Lc/c/a/e/d/r/a/c;->c:Lg/a/a;

    invoke-static {v0, v1, v2}, Lc/c/a/e/d/r/a/c;->b(Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/e/d/r/a/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/r/a/c;->get()Lc/c/a/e/d/r/a/b;

    move-result-object v0

    return-object v0
.end method