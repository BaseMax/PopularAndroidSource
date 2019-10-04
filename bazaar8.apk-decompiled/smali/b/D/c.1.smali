.class public Lb/D/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/D/m;->a(Landroid/view/ViewGroup;Lb/D/M;Lb/D/M;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/graphics/drawable/BitmapDrawable;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:F

.field public final synthetic e:Lb/D/m;


# direct methods
.method public constructor <init>(Lb/D/m;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/D/c;->e:Lb/D/m;

    iput-object p2, p0, Lb/D/c;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lb/D/c;->b:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Lb/D/c;->c:Landroid/view/View;

    iput p5, p0, Lb/D/c;->d:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/D/c;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Lb/D/ba;->b(Landroid/view/View;)Lb/D/Y;

    move-result-object p1

    iget-object v0, p0, Lb/D/c;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {p1, v0}, Lb/D/Y;->b(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lb/D/c;->c:Landroid/view/View;

    iget v0, p0, Lb/D/c;->d:F

    invoke-static {p1, v0}, Lb/D/ba;->a(Landroid/view/View;F)V

    return-void
.end method
