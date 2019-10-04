.class public Lb/D/j;
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
.field public final synthetic a:Lb/D/m$a;

.field public final synthetic b:Lb/D/m;

.field public mViewBounds:Lb/D/m$a;


# direct methods
.method public constructor <init>(Lb/D/m;Lb/D/m$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/D/j;->b:Lb/D/m;

    iput-object p2, p0, Lb/D/j;->a:Lb/D/m$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2
    iget-object p1, p0, Lb/D/j;->a:Lb/D/m$a;

    iput-object p1, p0, Lb/D/j;->mViewBounds:Lb/D/m$a;

    return-void
.end method
