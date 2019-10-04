.class public Lb/b/a/r;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Lb/i/k/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;->o()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/b/a/r;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lb/i/k/M;)Lb/i/k/M;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lb/i/k/M;->e()I

    move-result v0

    .line 2
    iget-object v1, p0, Lb/b/a/r;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->l(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p2}, Lb/i/k/M;->c()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Lb/i/k/M;->d()I

    move-result v2

    .line 5
    invoke-virtual {p2}, Lb/i/k/M;->b()I

    move-result v3

    .line 6
    invoke-virtual {p2, v0, v1, v2, v3}, Lb/i/k/M;->a(IIII)Lb/i/k/M;

    move-result-object p2

    .line 7
    :cond_0
    invoke-static {p1, p2}, Lb/i/k/z;->b(Landroid/view/View;Lb/i/k/M;)Lb/i/k/M;

    move-result-object p1

    return-object p1
.end method
