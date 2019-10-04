.class public Lf/a/a/g/d/a/s;
.super Lf/a/a/g/d/a/l;
.source "SubmitCommentAction.java"


# instance fields
.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "comments/new"

    .line 1
    invoke-direct {p0, v1, v0, v0}, Lf/a/a/g/d/a/l;-><init>(Ljava/lang/String;ZZ)V

    .line 2
    iput-object p1, p0, Lf/a/a/g/d/a/s;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/e/g;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lf/a/a/g/d/a/l;->a(Lf/a/a/e/g;Landroid/view/View;)V

    .line 2
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v0, p0, Lf/a/a/g/d/a/s;->d:Ljava/lang/String;

    const-string v1, "comment"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lf/a/a/c/b/b;

    invoke-interface {p1}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object p1

    invoke-virtual {p0}, Lf/a/a/g/d/a/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lf/a/a/c/b/b;-><init>(Lir/cafebazaar/inline/platform/InlineApplication;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lf/a/a/c/b/b;->a(Lf/a/a/c/b/o$a;)V

    return-void
.end method
