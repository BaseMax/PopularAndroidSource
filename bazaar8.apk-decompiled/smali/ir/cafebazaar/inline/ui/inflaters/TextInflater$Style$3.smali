.class public final enum Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style$3;
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
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->title:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    invoke-virtual {v0, p1, p2}, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->a(Landroid/widget/TextView;Landroid/content/res/Resources;)V

    .line 3
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->centered:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    invoke-virtual {v0, p1, p2}, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->a(Landroid/widget/TextView;Landroid/content/res/Resources;)V

    return-void
.end method
