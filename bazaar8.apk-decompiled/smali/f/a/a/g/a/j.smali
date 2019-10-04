.class public Lf/a/a/g/a/j;
.super Ljava/lang/Object;
.source "AddressPopup.java"

# interfaces
.implements Lf/a/a/g/a/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/g/a/k;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/g/a/k;


# direct methods
.method public constructor <init>(Lf/a/a/g/a/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/g/a/j;->a:Lf/a/a/g/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/g/a/j;->a:Lf/a/a/g/a/k;

    iget-object v0, v0, Lf/a/a/g/a/k;->a:Lf/a/a/g/a/n;

    invoke-static {v0}, Lf/a/a/g/a/n;->b(Lf/a/a/g/a/n;)Lf/a/a/g/a/o;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/g/a/j;->a:Lf/a/a/g/a/k;

    iget-object v1, v1, Lf/a/a/g/a/k;->a:Lf/a/a/g/a/n;

    invoke-static {v1}, Lf/a/a/g/a/n;->b(Lf/a/a/g/a/n;)Lf/a/a/g/a/o;

    move-result-object v1

    invoke-interface {v1}, Lf/a/a/g/a/o;->c()Lf/a/a/g/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/a/a/g/a/o;->a(Lf/a/a/g/a/a;)V

    return-void
.end method
