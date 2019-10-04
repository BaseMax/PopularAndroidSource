.class public Lf/a/a/e/b/b/i;
.super Ljava/lang/Object;
.source "ChoicesInflater.java"

# interfaces
.implements Lf/a/a/e/b/b/A$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/b/l;->a(Landroid/view/View;Lf/a/a/e/g;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;)Lf/a/a/e/b/b/B$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/a/a/e/b/b/A$a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Lf/a/a/e/b/b/l;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/b/l;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b/i;->b:Lf/a/a/e/b/b/l;

    iput-object p2, p0, Lf/a/a/e/b/b/i;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lf/a/a/e/b/b/i;->b:Lf/a/a/e/b/b/l;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lf/a/a/e/b/b/l;->a(Lf/a/a/e/b/b/l;I)I

    .line 4
    iget-object p1, p0, Lf/a/a/e/b/b/i;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lf/a/a/e/b/b/i;->b:Lf/a/a/e/b/b/l;

    invoke-static {v0}, Lf/a/a/e/b/b/l;->b(Lf/a/a/e/b/b/l;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/e/b/b/i;->b:Lf/a/a/e/b/b/l;

    invoke-static {v1}, Lf/a/a/e/b/b/l;->a(Lf/a/a/e/b/b/l;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/a/d/e;

    invoke-virtual {v0}, Lf/a/a/d/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lf/a/a/e/b/b/i;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public onDismiss()V
    .locals 0

    return-void
.end method
