.class public final Lb/o/a/F;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/o/a/H;->b(Lb/o/a/Q;Landroid/view/ViewGroup;Landroid/view/View;Lb/f/b;Lb/o/a/H$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;

.field public final synthetic b:Landroidx/fragment/app/Fragment;

.field public final synthetic c:Z

.field public final synthetic d:Lb/f/b;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Lb/o/a/Q;

.field public final synthetic g:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLb/f/b;Landroid/view/View;Lb/o/a/Q;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/o/a/F;->a:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lb/o/a/F;->b:Landroidx/fragment/app/Fragment;

    iput-boolean p3, p0, Lb/o/a/F;->c:Z

    iput-object p4, p0, Lb/o/a/F;->d:Lb/f/b;

    iput-object p5, p0, Lb/o/a/F;->e:Landroid/view/View;

    iput-object p6, p0, Lb/o/a/F;->f:Lb/o/a/Q;

    iput-object p7, p0, Lb/o/a/F;->g:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lb/o/a/F;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lb/o/a/F;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, Lb/o/a/F;->c:Z

    iget-object v3, p0, Lb/o/a/F;->d:Lb/f/b;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lb/o/a/H;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLb/f/b;Z)V

    .line 2
    iget-object v0, p0, Lb/o/a/F;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lb/o/a/F;->f:Lb/o/a/Q;

    iget-object v2, p0, Lb/o/a/F;->g:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lb/o/a/Q;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
