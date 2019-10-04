.class public final enum Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style$4;
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
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->a(Landroid/widget/TextView;Landroid/content/res/Resources;)V

    .line 2
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    const/16 v1, 0x14

    const/16 v2, 0x50

    .line 3
    invoke-virtual {p2, v1, v0, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
