.class public Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;
.super Ljava/lang/Object;
.source "CommonActionFactory.java"

# interfaces
.implements Lf/a/a/d/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;->a:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;->b:Z

    .line 4
    iput-boolean p1, p0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lf/a/a/d/f;)Lf/a/a/d/a;
    .locals 5

    .line 1
    check-cast p1, Lorg/w3c/dom/Element;

    const-string p2, "validate"

    .line 2
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "true"

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;->a:Z

    :cond_0
    const-string p2, "clearFields"

    .line 4
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;->b:Z

    :cond_1
    const-string p2, "action"

    .line 6
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    sget-object v0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->back:Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    new-instance p1, Lf/a/a/g/d/a/d;

    invoke-direct {p1}, Lf/a/a/g/d/a/d;-><init>()V

    return-object p1

    .line 9
    :cond_2
    sget-object v0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->exit:Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    sget-object p1, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->exit:Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;

    invoke-virtual {p1}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance p2, Lf/a/a/g/d/a/f;

    invoke-direct {p2, p1}, Lf/a/a/g/d/a/f;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 12
    :cond_3
    sget-object v0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->web:Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    sget-object p1, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->web:Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;

    invoke-virtual {p1}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance p2, Lir/cafebazaar/inline/ux/flow/actions/WebAction;

    iget-boolean v0, p0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;->a:Z

    iget-boolean v1, p0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;->b:Z

    invoke-direct {p2, p1, v0, v1}, Lir/cafebazaar/inline/ux/flow/actions/WebAction;-><init>(Ljava/lang/String;ZZ)V

    return-object p2

    .line 15
    :cond_4
    sget-object v0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->change:Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    sget-object p1, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->change:Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;

    invoke-virtual {p1}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance p2, Lf/a/a/g/d/a/e;

    iget-boolean v0, p0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;->a:Z

    iget-boolean v1, p0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;->b:Z

    invoke-direct {p2, p1, v0, v1}, Lf/a/a/g/d/a/e;-><init>(Ljava/lang/String;ZZ)V

    return-object p2

    .line 18
    :cond_5
    sget-object v0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->pay:Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    sget-object p1, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->pay:Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;

    invoke-virtual {p1}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance p2, Lir/cafebazaar/inline/ux/flow/actions/PayAction;

    iget-boolean v0, p0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;->a:Z

    iget-boolean v1, p0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;->b:Z

    invoke-direct {p2, p1, v0, v1}, Lir/cafebazaar/inline/ux/flow/actions/PayAction;-><init>(Ljava/lang/String;ZZ)V

    return-object p2

    .line 21
    :cond_6
    sget-object v0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->tel:Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 22
    sget-object p1, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->tel:Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;

    invoke-virtual {p1}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 23
    new-instance p2, Lf/a/a/g/d/a/u;

    invoke-direct {p2, p1}, Lf/a/a/g/d/a/u;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 24
    :cond_7
    sget-object v0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->share:Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    sget-object p1, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->share:Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;

    invoke-virtual {p1}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 26
    new-instance p2, Lf/a/a/g/d/a/q;

    invoke-direct {p2, p1}, Lf/a/a/g/d/a/q;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 27
    :cond_8
    sget-object v0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->openInline:Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 28
    sget-object v0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->openInline:Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 29
    new-instance v0, Lir/cafebazaar/inline/ux/flow/actions/OpenInlineAction;

    iget-boolean v1, p0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;->a:Z

    iget-boolean v2, p0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;->b:Z

    const-string v3, "callback"

    .line 30
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_9
    const-string p1, ""

    :goto_0
    invoke-direct {v0, p2, v1, v2, p1}, Lir/cafebazaar/inline/ux/flow/actions/OpenInlineAction;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-object v0

    .line 31
    :cond_a
    sget-object p1, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->intent:Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;

    invoke-virtual {p1}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 32
    sget-object p1, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->intent:Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;

    invoke-virtual {p1}, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory$ActionType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 33
    new-instance p2, Lf/a/a/g/d/a/i;

    invoke-direct {p2, p1}, Lf/a/a/g/d/a/i;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 34
    :cond_b
    new-instance p1, Lf/a/a/g/d/a/a;

    iget-boolean v0, p0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;->a:Z

    iget-boolean v1, p0, Lir/cafebazaar/inline/platform/xml/factory/CommonActionFactory;->b:Z

    invoke-direct {p1, p2, v0, v1}, Lf/a/a/g/d/a/a;-><init>(Ljava/lang/String;ZZ)V

    return-object p1
.end method
