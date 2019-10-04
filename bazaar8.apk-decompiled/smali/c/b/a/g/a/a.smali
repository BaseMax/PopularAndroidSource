.class public abstract Lc/b/a/g/a/a;
.super Ljava/lang/Object;
.source "BaseTarget.java"

# interfaces
.implements Lc/b/a/g/a/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/g/a/h<",
        "TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lc/b/a/g/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public a(Lc/b/a/g/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/g/a/a;->a:Lc/b/a/g/c;

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public getRequest()Lc/b/a/g/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g/a/a;->a:Lc/b/a/g/c;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method
