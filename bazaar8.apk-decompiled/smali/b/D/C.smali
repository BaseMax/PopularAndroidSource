.class public Lb/D/C;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/D/E;->a(Landroid/animation/Animator;Lb/f/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/f/b;

.field public final synthetic b:Lb/D/E;


# direct methods
.method public constructor <init>(Lb/D/E;Lb/f/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/D/C;->b:Lb/D/E;

    iput-object p2, p0, Lb/D/C;->a:Lb/f/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/D/C;->a:Lb/f/b;

    invoke-virtual {v0, p1}, Lb/f/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lb/D/C;->b:Lb/D/E;

    iget-object v0, v0, Lb/D/E;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/D/C;->b:Lb/D/E;

    iget-object v0, v0, Lb/D/E;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
