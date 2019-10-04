.class public Lf/a/a/g/d/a/p;
.super Lf/a/a/g/d/a/t;
.source "SearchInstantAction.java"


# instance fields
.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/a/a/g/d/a/t;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lf/a/a/g/d/a/p;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/e/g;Landroid/view/View;)V
    .locals 3

    .line 2
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v0, p0, Lf/a/a/g/d/a/p;->b:Ljava/lang/String;

    const-string v1, "query"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lf/a/a/c/b/b;

    invoke-interface {p1}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v1

    invoke-virtual {p0}, Lf/a/a/g/d/a/t;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lf/a/a/c/b/b;-><init>(Lir/cafebazaar/inline/platform/InlineApplication;Ljava/lang/String;Ljava/util/Map;)V

    new-instance p2, Lf/a/a/g/d/j;

    invoke-direct {p2, p1}, Lf/a/a/g/d/j;-><init>(Lf/a/a/e/g;)V

    .line 5
    invoke-virtual {v0, p2}, Lf/a/a/c/b/b;->a(Lf/a/a/c/b/o$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/g/d/a/p;->b:Ljava/lang/String;

    return-void
.end method
