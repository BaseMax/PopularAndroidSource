.class public Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$a;
.super Landroid/view/animation/Animation;
.source "ControllableInputInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 2
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$a;->c:Landroid/widget/TextView;

    .line 3
    iput p2, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$a;->a:I

    .line 4
    iput p3, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$a;->b:I

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 2
    iget-object p2, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$a;->c:Landroid/widget/TextView;

    iget v0, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$a;->b:I

    iget v1, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$a;->a:I

    invoke-static {v0, v1, p1}, Lc/c/a/d/g/a;->a(IIF)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
