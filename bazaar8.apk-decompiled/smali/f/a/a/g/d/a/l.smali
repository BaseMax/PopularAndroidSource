.class public abstract Lf/a/a/g/d/a/l;
.super Lf/a/a/g/d/a/t;
.source "RemoteAction.java"


# instance fields
.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/a/a/g/d/a/t;-><init>(Ljava/lang/String;)V

    .line 2
    iput-boolean p2, p0, Lf/a/a/g/d/a/l;->b:Z

    .line 3
    iput-boolean p3, p0, Lf/a/a/g/d/a/l;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/e/g;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/a/e/g;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 8
    invoke-interface {p1}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v0

    instance-of v0, v0, Lf/a/a/e/c;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {p1}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object p1

    check-cast p1, Lf/a/a/e/c;

    invoke-virtual {p1}, Lf/a/a/e/c;->Oa()Lf/a/a/g/d;

    move-result-object p1

    invoke-virtual {p1}, Lf/a/a/g/d;->b()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lf/a/a/e/g;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 2
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 3
    invoke-static {p2, v0}, Lf/a/a/f/f;->a(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 4
    invoke-interface {p1}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object p2

    instance-of p2, p2, Lf/a/a/e/c;

    if-eqz p2, :cond_0

    .line 5
    invoke-interface {p1}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object p2

    check-cast p2, Lf/a/a/e/c;

    invoke-virtual {p2}, Lf/a/a/e/c;->Oa()Lf/a/a/g/d;

    move-result-object p2

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->x()Lf/a/a/g/h/b;

    move-result-object v0

    invoke-virtual {p2, v0}, Lf/a/a/g/d;->b(Lf/a/a/g/h/b;)V

    .line 6
    iget-boolean p2, p0, Lf/a/a/g/d/a/l;->c:Z

    if-eqz p2, :cond_0

    .line 7
    invoke-interface {p1}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object p2

    check-cast p2, Lf/a/a/e/c;

    invoke-virtual {p2}, Lf/a/a/e/c;->Oa()Lf/a/a/g/d;

    move-result-object p2

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/InlineActivity;->x()Lf/a/a/g/h/b;

    move-result-object p1

    invoke-virtual {p2, p1}, Lf/a/a/g/d;->a(Lf/a/a/g/h/b;)V

    :cond_0
    return-void
.end method
