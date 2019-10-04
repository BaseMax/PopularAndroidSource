.class public Lf/a/a/g/d/b/a;
.super Ljava/lang/Object;
.source "PullResponse.java"

# interfaces
.implements Lf/a/a/d/a;


# instance fields
.field public a:Lf/a/a/g/d/a/b;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf/a/a/g/d/b/a;->b:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a()Lf/a/a/g/d/a/b;
    .locals 1

    .line 3
    iget-object v0, p0, Lf/a/a/g/d/b/a;->a:Lf/a/a/g/d/a/b;

    return-object v0
.end method

.method public a(Lf/a/a/g/d/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/g/d/b/a;->a:Lf/a/a/g/d/a/b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lf/a/a/g/d/b/a;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lf/a/a/g/d/b/a;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Lir/cafebazaar/inline/ux/flow/pull/Puller$a;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lf/a/a/g/d/b/a;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 6
    :cond_0
    iget-object v0, p0, Lf/a/a/g/d/b/a;->a:Lf/a/a/g/d/a/b;

    invoke-interface {p1, v0}, Lir/cafebazaar/inline/ux/flow/pull/Puller$a;->a(Lf/a/a/g/d/a/b;)Z

    move-result p1

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/d/b/a;->c:Ljava/lang/String;

    return-object v0
.end method
