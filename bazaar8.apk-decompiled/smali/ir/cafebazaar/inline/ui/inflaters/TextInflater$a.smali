.class public Lir/cafebazaar/inline/ui/inflaters/TextInflater$a;
.super Ljava/lang/Object;
.source "TextInflater.java"

# interfaces
.implements Landroid/text/Html$TagHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ui/inflaters/TextInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lir/cafebazaar/inline/ui/Theme;

.field public b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lb/i/j/d<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/ui/Theme;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/TextInflater$a;->a:Lir/cafebazaar/inline/ui/Theme;

    .line 3
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/TextInflater$a;->b:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 1

    const-string p4, "hl"

    .line 1
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/TextInflater$a;->b:Ljava/util/Stack;

    new-instance p2, Lb/i/j/d;

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p4, p3}, Lb/i/j/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/TextInflater$a;->b:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/i/j/d;

    .line 4
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    iget-object p4, p0, Lir/cafebazaar/inline/ui/inflaters/TextInflater$a;->a:Lir/cafebazaar/inline/ui/Theme;

    invoke-virtual {p4}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result p4

    invoke-direct {p2, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object p1, p1, Lb/i/j/d;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p4

    const/4 v0, 0x0

    invoke-interface {p3, p2, p1, p4, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    :goto_0
    return-void
.end method
