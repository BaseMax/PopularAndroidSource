.class public final enum Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style$2;
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
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->a(Landroid/widget/TextView;Landroid/content/res/Resources;)V

    const/16 p2, 0x11

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method
