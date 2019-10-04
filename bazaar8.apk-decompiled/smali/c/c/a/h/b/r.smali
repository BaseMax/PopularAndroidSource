.class public final Lc/c/a/h/b/r;
.super Ljava/lang/Object;
.source "DatabaseModule_ProvideCommentActionDaoFactory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/e/d/r/a/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lc/c/a/h/b/o;

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lcom/farsitel/bazaar/data/db/AppDatabase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/c/a/h/b/o;Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/h/b/o;",
            "Lg/a/a<",
            "Lcom/farsitel/bazaar/data/db/AppDatabase;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/h/b/r;->a:Lc/c/a/h/b/o;

    .line 3
    iput-object p2, p0, Lc/c/a/h/b/r;->b:Lg/a/a;

    return-void
.end method

.method public static a(Lc/c/a/h/b/o;Lcom/farsitel/bazaar/data/db/AppDatabase;)Lc/c/a/e/d/r/a/a/a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/h/b/o;->b(Lcom/farsitel/bazaar/data/db/AppDatabase;)Lc/c/a/e/d/r/a/a/a;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {p0, p1}, Ld/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lc/c/a/e/d/r/a/a/a;

    return-object p0
.end method

.method public static a(Lc/c/a/h/b/o;Lg/a/a;)Lc/c/a/h/b/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/h/b/o;",
            "Lg/a/a<",
            "Lcom/farsitel/bazaar/data/db/AppDatabase;",
            ">;)",
            "Lc/c/a/h/b/r;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/h/b/r;

    invoke-direct {v0, p0, p1}, Lc/c/a/h/b/r;-><init>(Lc/c/a/h/b/o;Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lc/c/a/h/b/o;Lg/a/a;)Lc/c/a/e/d/r/a/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/h/b/o;",
            "Lg/a/a<",
            "Lcom/farsitel/bazaar/data/db/AppDatabase;",
            ">;)",
            "Lc/c/a/e/d/r/a/a/a;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/data/db/AppDatabase;

    invoke-static {p0, p1}, Lc/c/a/h/b/r;->a(Lc/c/a/h/b/o;Lcom/farsitel/bazaar/data/db/AppDatabase;)Lc/c/a/e/d/r/a/a/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lc/c/a/e/d/r/a/a/a;
    .locals 2

    .line 2
    iget-object v0, p0, Lc/c/a/h/b/r;->a:Lc/c/a/h/b/o;

    iget-object v1, p0, Lc/c/a/h/b/r;->b:Lg/a/a;

    invoke-static {v0, v1}, Lc/c/a/h/b/r;->b(Lc/c/a/h/b/o;Lg/a/a;)Lc/c/a/e/d/r/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/h/b/r;->get()Lc/c/a/e/d/r/a/a/a;

    move-result-object v0

    return-object v0
.end method
