.class public Lb/D/ga;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/D/ha;->b(Landroid/view/ViewGroup;Lb/D/M;ILb/D/M;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/D/Q;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lb/D/ha;


# direct methods
.method public constructor <init>(Lb/D/ha;Lb/D/Q;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/D/ga;->c:Lb/D/ha;

    iput-object p2, p0, Lb/D/ga;->a:Lb/D/Q;

    iput-object p3, p0, Lb/D/ga;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/D/ga;->a:Lb/D/Q;

    iget-object v0, p0, Lb/D/ga;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lb/D/Q;->b(Landroid/view/View;)V

    return-void
.end method
