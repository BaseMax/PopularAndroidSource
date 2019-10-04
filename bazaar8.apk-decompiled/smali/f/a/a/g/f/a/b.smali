.class public Lf/a/a/g/f/a/b;
.super Ljava/lang/Object;
.source "IABHandler.java"

# interfaces
.implements Lf/a/a/g/d/b;


# instance fields
.field public a:Lf/a/a/e/g;

.field public b:Lf/a/a/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a/a/b<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/a/a/e/g;Lf/a/a/d/a/a/c/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object p2

    invoke-virtual {p2}, Lir/cafebazaar/inline/platform/InlineApplication;->f()Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lf/a/a/g/f/a/b;->a:Lf/a/a/e/g;

    .line 4
    invoke-virtual {p0}, Lf/a/a/g/f/a/b;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lf/a/a/e/g;IILandroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b()Lorg/json/JSONArray;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/g/f/a/b;->b:Lf/a/a/a/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lf/a/a/a/b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 3
    iput-object v1, p0, Lf/a/a/g/f/a/b;->b:Lf/a/a/a/b;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public final c()V
    .locals 1

    .line 1
    new-instance v0, Lf/a/a/g/f/a/a;

    invoke-direct {v0, p0}, Lf/a/a/g/f/a/a;-><init>(Lf/a/a/g/f/a/b;)V

    iput-object v0, p0, Lf/a/a/g/f/a/b;->b:Lf/a/a/a/b;

    .line 2
    iget-object v0, p0, Lf/a/a/g/f/a/b;->b:Lf/a/a/a/b;

    invoke-virtual {v0}, Lf/a/a/a/b;->c()V

    return-void
.end method
