.class public final Lc/e/a/c/i/a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularRevealCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/e/a/c/i/b;->a(Lc/e/a/c/i/f;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/e/a/c/i/f;


# direct methods
.method public constructor <init>(Lc/e/a/c/i/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/i/a;->a:Lc/e/a/c/i/f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc/e/a/c/i/a;->a:Lc/e/a/c/i/f;

    invoke-interface {p1}, Lc/e/a/c/i/f;->b()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc/e/a/c/i/a;->a:Lc/e/a/c/i/f;

    invoke-interface {p1}, Lc/e/a/c/i/f;->a()V

    return-void
.end method
