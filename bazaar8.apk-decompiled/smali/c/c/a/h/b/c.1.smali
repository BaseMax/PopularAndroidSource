.class public final Lc/c/a/h/b/c;
.super Ljava/lang/Object;
.source "ActionLogModule_ActionLogDatabaseFactory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lc/c/a/h/b/a;

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/c/a/h/b/a;Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/h/b/a;",
            "Lg/a/a<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/h/b/c;->a:Lc/c/a/h/b/a;

    .line 3
    iput-object p2, p0, Lc/c/a/h/b/c;->b:Lg/a/a;

    return-void
.end method

.method public static a(Lc/c/a/h/b/a;Lg/a/a;)Lc/c/a/h/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/h/b/a;",
            "Lg/a/a<",
            "Landroid/content/Context;",
            ">;)",
            "Lc/c/a/h/b/c;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/h/b/c;

    invoke-direct {v0, p0, p1}, Lc/c/a/h/b/c;-><init>(Lc/c/a/h/b/a;Lg/a/a;)V

    return-object v0
.end method

.method public static a(Lc/c/a/h/b/a;Landroid/content/Context;)Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/h/b/a;->a(Landroid/content/Context;)Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {p0, p1}, Ld/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase;

    return-object p0
.end method

.method public static b(Lc/c/a/h/b/a;Lg/a/a;)Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/h/b/a;",
            "Lg/a/a<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p0, p1}, Lc/c/a/h/b/c;->a(Lc/c/a/h/b/a;Landroid/content/Context;)Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase;
    .locals 2

    .line 2
    iget-object v0, p0, Lc/c/a/h/b/c;->a:Lc/c/a/h/b/a;

    iget-object v1, p0, Lc/c/a/h/b/c;->b:Lg/a/a;

    invoke-static {v0, v1}, Lc/c/a/h/b/c;->b(Lc/c/a/h/b/a;Lg/a/a;)Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/h/b/c;->get()Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase;

    move-result-object v0

    return-object v0
.end method
