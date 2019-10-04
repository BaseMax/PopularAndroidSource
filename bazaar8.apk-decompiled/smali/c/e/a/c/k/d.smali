.class public Lc/e/a/c/k/d;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/e/a/c/k/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/e/a/c/k/e;


# direct methods
.method public constructor <init>(Lc/e/a/c/k/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/k/d;->a:Lc/e/a/c/k/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/k/d;->a:Lc/e/a/c/k/e;

    invoke-virtual {v0}, Lc/e/a/c/k/e;->s()V

    const/4 v0, 0x1

    return v0
.end method
