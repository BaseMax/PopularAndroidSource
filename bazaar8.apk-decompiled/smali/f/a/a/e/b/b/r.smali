.class public Lf/a/a/e/b/b/r;
.super Ljava/lang/Object;
.source "ControllableInputInflater.java"

# interfaces
.implements Lf/a/a/e/b/b/B$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;->a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lf/a/a/e/b/b/B$a;

.field public final synthetic c:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;ZLf/a/a/e/b/b/B$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b/r;->c:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;

    iput-boolean p2, p0, Lf/a/a/e/b/b/r;->a:Z

    iput-object p3, p0, Lf/a/a/e/b/b/r;->b:Lf/a/a/e/b/b/B$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/a/a/e/b/b/r;->b()Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lf/a/a/e/b/b/r;->a:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 3
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lf/a/a/e/b/b/r;->b:Lf/a/a/e/b/b/B$a;

    invoke-interface {v0}, Lf/a/a/e/b/b/B$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/b/r;->b:Lf/a/a/e/b/b/B$a;

    invoke-interface {v0}, Lf/a/a/e/b/b/B$a;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
