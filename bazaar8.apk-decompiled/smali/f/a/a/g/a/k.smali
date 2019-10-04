.class public Lf/a/a/g/a/k;
.super Ljava/lang/Object;
.source "AddressPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/g/a/n;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/g/a/n;


# direct methods
.method public constructor <init>(Lf/a/a/g/a/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/g/a/k;->a:Lf/a/a/g/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance p1, Lf/a/a/g/a/t;

    iget-object v0, p0, Lf/a/a/g/a/k;->a:Lf/a/a/g/a/n;

    invoke-virtual {v0}, Lf/a/a/e/b/b/A;->d()Lf/a/a/e/g;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/g/a/k;->a:Lf/a/a/g/a/n;

    invoke-static {v1}, Lf/a/a/g/a/n;->b(Lf/a/a/g/a/n;)Lf/a/a/g/a/o;

    move-result-object v1

    invoke-interface {v1}, Lf/a/a/g/a/o;->c()Lf/a/a/g/a/a;

    move-result-object v1

    new-instance v2, Lf/a/a/g/a/j;

    invoke-direct {v2, p0}, Lf/a/a/g/a/j;-><init>(Lf/a/a/g/a/k;)V

    invoke-direct {p1, v0, v1, v2}, Lf/a/a/g/a/t;-><init>(Lf/a/a/e/g;Lf/a/a/g/a/a;Lf/a/a/g/a/t$a;)V

    .line 2
    invoke-virtual {p1}, Lf/a/a/g/c;->f()V

    return-void
.end method
