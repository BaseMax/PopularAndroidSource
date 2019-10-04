.class public Lb/D/l;
.super Lb/D/F;
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
.field public a:Z

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Lb/D/m;


# direct methods
.method public constructor <init>(Lb/D/m;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/D/l;->c:Lb/D/m;

    iput-object p2, p0, Lb/D/l;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lb/D/F;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lb/D/l;->a:Z

    return-void
.end method


# virtual methods
.method public b(Lb/D/E;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/D/l;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lb/D/S;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public c(Lb/D/E;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lb/D/l;->a:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/D/l;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/D/S;->a(Landroid/view/ViewGroup;Z)V

    .line 3
    :cond_0
    invoke-virtual {p1, p0}, Lb/D/E;->b(Lb/D/E$c;)Lb/D/E;

    return-void
.end method

.method public d(Lb/D/E;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/D/l;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lb/D/S;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method
