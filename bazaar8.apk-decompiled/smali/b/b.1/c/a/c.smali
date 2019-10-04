.class public Lb/b/c/a/c;
.super Ljava/lang/Object;
.source "DrawableContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/c/a/d;->a(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/b/c/a/d;


# direct methods
.method public constructor <init>(Lb/b/c/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/b/c/a/c;->a:Lb/b/c/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/c/a/c;->a:Lb/b/c/a/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/b/c/a/d;->a(Z)V

    .line 2
    iget-object v0, p0, Lb/b/c/a/c;->a:Lb/b/c/a/d;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
