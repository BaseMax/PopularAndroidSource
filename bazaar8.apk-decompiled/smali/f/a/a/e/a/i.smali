.class public Lf/a/a/e/a/i;
.super Ljava/lang/Object;
.source "GradualChangePropagator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/a/j;->a(Ljava/util/Collection;Landroid/view/View;Lf/a/a/e/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/a/p;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lf/a/a/e/g;

.field public final synthetic d:Lf/a/a/e/a/j;


# direct methods
.method public constructor <init>(Lf/a/a/e/a/j;Lf/a/a/e/a/p;Landroid/view/View;Lf/a/a/e/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/a/i;->d:Lf/a/a/e/a/j;

    iput-object p2, p0, Lf/a/a/e/a/i;->a:Lf/a/a/e/a/p;

    iput-object p3, p0, Lf/a/a/e/a/i;->b:Landroid/view/View;

    iput-object p4, p0, Lf/a/a/e/a/i;->c:Lf/a/a/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/a/a/e/a/i;->a:Lf/a/a/e/a/p;

    iget-object v1, p0, Lf/a/a/e/a/i;->b:Landroid/view/View;

    iget-object v2, p0, Lf/a/a/e/a/i;->c:Lf/a/a/e/g;

    invoke-virtual {v0, v1, v2}, Lf/a/a/e/a/p;->a(Landroid/view/View;Lf/a/a/e/g;)V

    return-void
.end method
