.class public Lb/i/k/H;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/i/k/I;->a(Lb/i/k/L;)Lb/i/k/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/i/k/L;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lb/i/k/I;


# direct methods
.method public constructor <init>(Lb/i/k/I;Lb/i/k/L;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/i/k/H;->c:Lb/i/k/I;

    iput-object p2, p0, Lb/i/k/H;->a:Lb/i/k/L;

    iput-object p3, p0, Lb/i/k/H;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/i/k/H;->a:Lb/i/k/L;

    iget-object v0, p0, Lb/i/k/H;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lb/i/k/L;->a(Landroid/view/View;)V

    return-void
.end method
