.class public Lf/a/a/g/d/a/o;
.super Lf/a/a/g/d/a/l;
.source "SearchAction.java"


# instance fields
.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lf/a/a/g/d/a/l;-><init>(Ljava/lang/String;ZZ)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lf/a/a/g/d/a/o;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lf/a/a/g/d/a/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/a/g/d/a/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lf/a/a/e/g;Landroid/view/View;)V
    .locals 3

    .line 2
    invoke-super {p0, p1, p2}, Lf/a/a/g/d/a/l;->a(Lf/a/a/e/g;Landroid/view/View;)V

    .line 3
    new-instance p2, Lf/a/a/c/b/b;

    invoke-interface {p1}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-virtual {p0}, Lf/a/a/g/d/a/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lf/a/a/g/d/a/l;->a(Lf/a/a/e/g;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p2, v0, v1, v2}, Lf/a/a/c/b/b;-><init>(Lir/cafebazaar/inline/platform/InlineApplication;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Lf/a/a/g/d/g;

    .line 4
    invoke-virtual {p0}, Lf/a/a/g/d/a/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lf/a/a/g/d/g;-><init>(Lf/a/a/e/g;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lf/a/a/c/b/b;->a(Lf/a/a/c/b/o$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/g/d/a/o;->d:Ljava/lang/String;

    return-void
.end method
