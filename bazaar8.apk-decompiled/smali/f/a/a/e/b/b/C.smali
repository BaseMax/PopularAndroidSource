.class public Lf/a/a/e/b/b/C;
.super Ljava/lang/Object;
.source "RatingInputInflater.java"

# interfaces
.implements Lf/a/a/e/b/b/B$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/b/F;->a(Landroid/view/View;Lf/a/a/e/g;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;)Lf/a/a/e/b/b/B$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;

.field public final synthetic b:Landroid/widget/RatingBar;

.field public final synthetic c:Lf/a/a/e/b/b/F;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/b/F;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;Landroid/widget/RatingBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b/C;->c:Lf/a/a/e/b/b/F;

    iput-object p2, p0, Lf/a/a/e/b/b/C;->a:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;

    iput-object p3, p0, Lf/a/a/e/b/b/C;->b:Landroid/widget/RatingBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/b/C;->a:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;

    invoke-interface {v0}, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;->a()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/b/C;->b:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
