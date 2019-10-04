.class public final enum Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style$1;
.super Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;
.source "TextInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;-><init>(Ljava/lang/String;ILf/a/a/e/b/S;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/TextView;Landroid/content/res/Resources;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->a(Landroid/widget/TextView;Landroid/content/res/Resources;)V

    .line 2
    sget v0, Lf/a/a/c;->large_text_size:I

    .line 3
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
